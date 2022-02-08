pageextension 50074 "VendorListTemplatePageExt" extends "Vendor Templ. List"
{
    layout
    {
        addlast(Control1)
        {
            field("Rank Of Vendor"; "Rank of Vendor")
            {
                ToolTip = 'Specifies the lookup value the customer buys from.';
                ApplicationArea = All;
            }
        }
    }
}