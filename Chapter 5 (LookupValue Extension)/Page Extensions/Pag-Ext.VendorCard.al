pageextension 50075 "VendorCardPageExt" extends "Vendor Card" //21
{
    layout
    {
        addlast(General)
        {
            field("Rank of Vendor"; "Rank of Vendor Code")
            {
                ToolTip = 'Specifies the rank of Vendor';
                ApplicationArea = All;
            }
        }
    }
}