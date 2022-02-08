page 50003 "RankOfVendor"
{
    PageType = List;
    SourceTable = "RankOfVendor1";
    Caption = 'Rank of Vendor';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(RepeaterControl)
            {
                field("Rank of Vendor"; "RankOfVendor")
                {
                    ToolTip = 'Specifies a code to identify this Rank of Vendor.';
                    ApplicationArea = All;
                }
                field("Description"; "Description")
                {
                    ToolTip = 'Specifies information on Rank of Vendor field';
                    ApplicationArea = All;
                }
                field("Discount"; "Discount")
                {
                    ToolTip = 'Specifies information to discount for Vendor.';
                    ApplicationArea = All;
                }

            }
        }
    }
}