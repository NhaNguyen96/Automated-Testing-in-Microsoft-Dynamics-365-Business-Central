pageextension 50060 "PurchaseOrderSubform" extends "Purchase Order Subform" //45
{
    layout
    {
        addbefore("Bin Code")
        {
            field("Insurance Value"; "Insurance Value Code")
            {
                ToolTip = 'Specifies the insurance value the customer buys from.';
                ApplicationArea = All;
                TableRelation = "InsuranceValue1";
            }
        }
    }
}