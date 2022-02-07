pageextension 50057 "PurchaseOrderListPageExt" extends "Purchase Order List" //9305
{
    layout
    {
        addlast(Control1)
        {
            field("Insurance Value"; "Insurance Value Code")
            {
                ToolTip = 'Specifies the insurance value the customer buys from.';
                ApplicationArea = All;
            }
        }
    }
}