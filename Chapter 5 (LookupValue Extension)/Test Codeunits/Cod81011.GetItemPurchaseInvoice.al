codeunit 81011 GetItemslistOnPurchaseInvoice
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
                if PurchaseHeader."No." = '1004' then begin
                    //if SalesLine."Unit Price" = 4000 then begin
                    ListItemPrices.Set(PurchaseHeader.SystemId, PurchaseHeader."No.");
                    //listIds := listIds + ' > ' + SalesHeader."Sell-to Customer No.";
                    // i := i + 1;
                    // end;
                end;
            until (PurchaseHeader.Next = 0);
        //Message('List: %1', listIds);
    end;

    local procedure FindPurchaseLines()
    var
        i: Integer;
        PurchaseLine: Record "Purchase Line";
        listIds: Text;
        ListPrice: Decimal;
    begin
        FindPurchaseHeader();
        if (PurchaseLine.FindSet) then
            repeat
                if PurchaseLine."Document No." = '1004' then begin
                    //if SalesLine."Unit Price" = 4000 then begin
                    ListItemPrices2.Set(PurchaseLine.SystemId, PurchaseLine."No.");
                    listIds := listIds + ' > ' + PurchaseLine."No.";
                    ListPrice := ListPrice + PurchaseLine."Unit Cost";
                    // i := i + 1;
                    // end;
                end;
            until (PurchaseLine.Next = 0);
        Message('List: %1', listIds);
        Message('List: %1', ListPrice);
    end;
}