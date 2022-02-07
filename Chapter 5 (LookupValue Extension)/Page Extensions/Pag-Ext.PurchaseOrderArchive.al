pageextension 50054 "PurchaseOrderArchivesPageExt" extends "Purchase Order Archives" //9349
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