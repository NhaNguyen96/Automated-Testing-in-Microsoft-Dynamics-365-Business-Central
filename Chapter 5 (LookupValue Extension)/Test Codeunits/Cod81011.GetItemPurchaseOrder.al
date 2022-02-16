codeunit 81011 GetItemslistOnPurchaseOrder
{
    trigger OnRun()
    begin
        FindPurchaseHeader();
        FindPurchaseLines();
    end;

    var
        ListItemPrices: Dictionary of [Guid, Text];
        ListItemPrices2: Dictionary of [Guid, Text];

    local procedure FindPurchaseHeader()
    var
        i: Integer;
        PurchaseHeader: Record "Purchase Header";
        listIds: Code[20];
    begin
        if (PurchaseHeader.FindSet) then
            repeat
                if PurchaseHeader."No." = '108044 ' then begin
                    //if PurchaseLine."Unit Price" = 4000 then begin
                    ListItemPrices.Set(PurchaseHeader.SystemId, PurchaseHeader."No.");
                    listIds := listIds + '>' + PurchaseHeader."Pay-to Name";
                    // i := i + 1;
                    // end;
                end;
            until (PurchaseHeader.Next = 0);
        Message('List: %1', listIds);
    end;

    local procedure FindPurchaseLines()
    var
        i: Integer;
        PurchaseLine: Record "Purchase Line";
        listIds: Text;
        ListPrice: Decimal;
    begin
        //FindPurchaseHeader();
        if (PurchaseLine.FindSet) then
            repeat
                if PurchaseLine."Document No." = '108044 ' then begin
                    if PurchaseLine."Insurance Value Code" then begin
                        ListItemPrices2.Set(PurchaseLine.SystemId, PurchaseLine."No.");
                        listIds := listIds + '>' + PurchaseLine."No.";
                        ListPrice := ListPrice + PurchaseLine."Line Amount";
                        // i := i + 1;
                    end;
                end;
            until (PurchaseLine.Next = 0);
        Message('List of items included in insurance discount: \%1', listIds);
        Message('ListPrice: %1', ListPrice);
    end;
}