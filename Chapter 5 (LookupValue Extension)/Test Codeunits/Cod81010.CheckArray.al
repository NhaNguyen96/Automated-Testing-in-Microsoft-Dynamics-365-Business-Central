codeunit 81010 TestItemArray
{
    var
        //ItemTable: Record Item;
        LibraryUtility: Codeunit "Library - Utility";
        LibrarySales: Codeunit "Library - Sales";
        Assert: Codeunit Assert;

    trigger OnRun()
    begin
        GetItem();
    end;

    local procedure GetItem()
    var
        i: Integer;
        price: Decimal;
        ItemArray: Array[30] of Record Item;
        ItemTable: Record Item;
    begin
        //ItemTable.Get("Unit Price");
        for i := 0 to ArrayLen(ItemArray) - 1 do begin
            if ItemTable."Unit Price" = 4000 then begin
                ItemArray[i + 1] := ItemTable;
                price := price + i;

            end;
        end;
        Message('List of items: \%1', ItemArray[1]."Unit Price");
    end;



    // code Thuong
    // begin
    //     //ItemTable.Get();

    //     for i := 0 to ArrayLen(ItemArray) do begin
    //         if ItemArray[i]."Unit Price" < 10000 then begin
    //             price := ItemArray[i]."Unit Price";

    //         end;
    //     end;
    //     Message(FORMAT('List of items: ', price));
    // end;
}