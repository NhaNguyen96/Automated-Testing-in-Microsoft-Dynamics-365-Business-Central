pageextension 50058 "PurchaseLinePageExt" extends "Purchase Lines"
{
    layout
    {
        addfirst(Control1)
        {
            field("Insurance Value Code"; "Insurance Value Code")
            {
                ToolTip = 'Specifies the insurance value the customer buys from.';
                ApplicationArea = All;
                TableRelation = "InsuranceValue1";
            }
        }
    }
}