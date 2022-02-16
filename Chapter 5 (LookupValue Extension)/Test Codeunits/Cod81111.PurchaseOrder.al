codeunit 81112 GetDataFromPurchaseTable
{
    var
        LibraryUtility: Codeunit "Library - Utility";
        LibraryPurchase: Codeunit "Library - Purchase";
        Assert: Codeunit Assert;

    trigger OnRun()
    begin
        GetDataFromPurchaseTable();
    end;

    local procedure GetDataFromPurchaseTable()
    var
        Purchase: record "Purchase Header";
    begin

        if Purchase.FINDFIRST then
            Message('The first Purchase is:\No.: %1\Vendor: %2', Purchase."No.", Purchase."Buy-from Vendor Name");

        if Purchase.FINDLAST then
            Message('The last Purchase is:\No.: %1\Vendor: %2', Purchase."No.", Purchase."Buy-from Vendor Name");

        If Purchase.FINDSET THEN begin
            Message('There are %1 Purchase', Purchase.COUNT);
        end;
    end;
}