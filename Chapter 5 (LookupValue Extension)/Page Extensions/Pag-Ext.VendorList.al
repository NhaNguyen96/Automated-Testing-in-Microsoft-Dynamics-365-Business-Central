pageextension 50071 "VendorListPageExt" extends "Vendor List"
{
    layout
    {
        addlast(Control1)
        {
            field("Rank of Vendor"; "Rank of Vendor Code")
            {
                ToolTip = 'Specifies the rank of vendor';
                ApplicationArea = All;
            }
        }
    }
}