tableextension 50023 "VendorTableExt" extends Vendor
{
    fields
    {
        field(50003; "Rank of Vendor Code"; Code[20])
        {
            Caption = 'Rank of Vendor Code';
            DataClassification = ToBeClassified;
            TableRelation = "RankOfVendor1";
        }
    }
}