pageextension 50073 "VendorTemplateCardPageExt" extends "Vendor Templ. Card"
{
    layout
    {
        addlast(Contact)
        {
            field("Rank of Vendor"; "Rank of Vendor")
            {
                ToolTip = 'Specifies the lookup value the customer buys from.';
                ApplicationArea = All;
            }
        }
    }
}