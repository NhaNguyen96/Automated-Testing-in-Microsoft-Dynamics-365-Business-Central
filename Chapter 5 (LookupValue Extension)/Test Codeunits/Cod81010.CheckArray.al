codeunit 81010 TestItemArray
{
    var
        ListItemPrices: Dictionary of [Guid, Decimal];

    trigger OnRun()
    begin
        //GetItem();
        CalculateTotalCost();
    end;


    //Get list of unit cost with unit price = 4000
    local procedure GetItem()
    var
        i: Integer;
        ItemTable: Record Item;
    //listIds: Code[20];
    begin
        if (ItemTable.FindSet) then
            repeat
                // process record
                // price := price + ItemTable."Unit Price";
                if ItemTable."Unit Price" = 4000 then begin
                    ListItemPrices.Set(ItemTable.SystemId, ItemTable."Unit Cost");
                    //listIds := listIds + ' > ' + ItemTable."No.";
                    //i := i + 1;//135
                end;
            until (ItemTable.Next = 0);
        //Message('List: %1', listIds);
    end;

    local procedure CalculateTotalCost()
    var
        i: Integer;
        totalCost: Decimal;
        unitCost: Decimal;
        standardCost: Decimal;
        listCosts: List of [Decimal];
        itemCode: Guid;
        ItemTable: Record Item;
    begin
        GetItem();
        // listCosts := ListItemPrices.Values;
        // for i := 1 to ListItemPrices.Count do begin
        //     totalCost := totalCost + listCosts.Get(i);
        // end;

        foreach itemCode in ListItemPrices.Keys do begin
            //get unit cost of records associated with the specified key (itemcode in this case is SystemId).
            unitCost := ListItemPrices.Get(itemCode);
            //get a record from item table by it SystemId (itemCode: Guid)
            ItemTable.GetBySystemId(itemCode);
            //standardCost := ItemTable."Standard Cost";
            totalCost := totalCost + (unitCost); //+ standardCost);
        end;

        Message('Total Cost: %1', totalCost);
    end;
}