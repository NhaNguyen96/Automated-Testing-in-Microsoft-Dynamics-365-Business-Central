codeunit 80011 TestItemArray1
{
    Subtype = Test;

    var
        Assert: Codeunit Assert;
        LibraryUtility: Codeunit "Library - Utility";
        LibraryPurchase: Codeunit "Library - Purchase";
        PurchaseHeader: Record "Purchase Header";

    trigger OnRun()
    begin
        //GetItem(ItemTable);
        //Message('First item from Item List: %1', ItemArray[1]);
    end;

    //[Feature] Check items in sales invoice
    [Test]
    procedure MyProcedure()
    var
        PurchaseHeader: Record "Purchase Header";
        PurchaseDocument: TestPage "Purchase Order";
        DocumentNo: Code[20];
        Item: Array[20] of Record Item;
    begin
        //[Scenario] Find items in sales invoice that has Unit Price Excl. VAT > 1000 
        //[Given] A Sales Invoice document with sales line (items)
        GetPurchaseOrder(PurchaseDocument);
        //[When] Find items in sales line that has Unit Price Excl. VAT > 1000
        FindItemsInPurchaseLine();
        //[Then] Count the total of all items matched the condition and add the value to lookup value field
        CounteTotalOfMatcheItemsToAssignToLookupValue();
    end;

    local procedure GetPurchaseOrder(var PurchaseDocument: TestPage "Purchase Order") PurchaseOrderNo: Code[20]
    var
        DocumentNo: Code[20];
    begin
        PurchaseDocument.GoToKey(DocumentNo);
        PurchaseOrderNo := DocumentNo;

    end;

    local procedure FindItemsInPurchaseLine()
    var
        myInt: Integer;
    begin

    end;

    local procedure CounteTotalOfMatcheItemsToAssignToLookupValue()
    var
        myInt: Integer;
    begin

    end;
}