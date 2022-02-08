tableextension 50018 "VendorTemplateTableExt" extends "Vendor Templ." //5105
{
    fields
    {
        field(50003; "Rank of Vendor"; Code[20])
        {
            Caption = 'Rank of Vendor';
            DataClassification = ToBeClassified;
            TableRelation = RankOfVendor1;
        }
    }
}