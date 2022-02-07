pageextension 81011 "Purchase Ext1" extends "Purchase Invoices"
{
    actions
    {
        addbefore("P&osting")
        {
            action(GetItem1)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    GetItem1.run();
                end;
            }
        }
    }
    var
        GetItem1: Codeunit GetItemslistOnPurchaseInvoice;
}