codeunit 81011 GetItemslistOnPurchaseOrder
{
    trigger OnRun()
    begin
        CalculateTotalCost();
    end;

    var
        ListItemPrices: Dictionary of [Guid, Decimal];
        ListItemPrices2: Dictionary of [Guid, Decimal];
        ListItemPrices3: Dictionary of [Guid, Decimal];
        PurchaseHeader: Record "Purchase Header";

    procedure FindsPurchaseHeader()
    var
        i: Integer;
        PurchaseHeader: Record "Purchase Header";
        Discount: Code[20];
    begin
        if (PurchaseHeader.FindSet) then
            repeat
                if PurchaseHeader."No." = '103004' then begin
                    //ListItemPrices.Set(PurchaseHeader.SystemId, PurchaseHeader."Rank of Vendor Code");
                    Discount := PurchaseHeader."Rank of Vendor Code";
                end;
            until (PurchaseHeader.Next = 0);
        Message('Insurance Discount Percent: %1', Discount);
    end;

    procedure FindPurchaseLines()
    var
        i: Integer;
        PurchaseLine: Record "Purchase Line";
        listIds: Text;
        ListPrice: Decimal;
        Total: Decimal;
        Discount: Decimal;
    begin
        FindsPurchaseHeader();
        if (PurchaseLine.FindSet) then
            repeat
                if PurchaseLine."Document No." = '103004' then begin
                    if PurchaseLine."Insurance Value Code" then begin
                        ListItemPrices2.Set(PurchaseLine.SystemId, PurchaseLine."Line Amount");
                        listIds := listIds + '>' + PurchaseLine."No.";
                        ListPrice := ListPrice + PurchaseLine."Line Amount";
                    end;
                end;
            until (PurchaseLine.Next = 0);
        Message('List of items included insurance discount: \%1', listIds);
        Message('Total Price of the list: %1', ListPrice);
    end;

    procedure FindPurchaseLinesWithItemsExist()
    var
        PurchaseLine: Record "Purchase Line";
        ListPrice2: Decimal;
    begin
        FindsPurchaseHeader();
        if (PurchaseLine.FindSet()) then
            repeat
                if PurchaseLine."Document No." = '103004' then begin
                    ListItemPrices3.Set(PurchaseLine.SystemId, PurchaseLine."Line Amount");
                    ListPrice2 := ListPrice2 + PurchaseLine."Line Amount";
                end;
            until PurchaseLine.Next() = 0;
        Message('Total Line Amount: %1', ListPrice2);
    end;

    procedure CalculateTotalCost()
    var
        i: Integer;
        total: Decimal;
        total2: Decimal;
        LineAmount: Decimal;
        TotalDis: Decimal;
        LineAmount2: Decimal;
        itemCode: Guid;
        discountPer: Guid;
        itemCode2: Guid;
        PurchaseLine: Record "Purchase Line";
    begin
        FindPurchaseLines();
        FindPurchaseLinesWithItemsExist();
        foreach discountPer in ListItemPrices.Keys do begin
            TotalDis := ListItemPrices.Get(discountPer);
            PurchaseHeader.GetBySystemId(discountPer);
            foreach itemCode in ListItemPrices2.Keys do begin
                LineAmount := ListItemPrices2.Get(itemCode);
                PurchaseLine.GetBySystemId(itemCode);
                total := total + (LineAmount);
            end;
            foreach itemCode2 in ListItemPrices3.Keys do begin
                LineAmount2 := ListItemPrices3.Get(itemCode2);
                PurchaseLine.GetBySystemId(itemCode2);
                total2 := total2 + LineAmount2;
            end;
            total := total2 - (total * TotalDis / 100);
        end;

        Message('Total Cost: %1', total);
    end;
}