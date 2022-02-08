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
        addafter(Amount)
        {
            field("Rank of Vendor"; "Rank of Vendor Code")
            {
                ToolTip = 'Specifies the rank of vendor';
                ApplicationArea = All;
                TableRelation = "RankOfVendor1";
            }
        }
    }
}