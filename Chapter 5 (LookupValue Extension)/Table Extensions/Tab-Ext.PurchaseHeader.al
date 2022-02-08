tableextension 50013 "PurchaseHeaderArchiveTableExt" extends "Purchase Header Archive" //110
{
    fields
    {
        field(50001; "Insurance Value Code"; Boolean)
        {
            Caption = 'Insurance Value Code';
            DataClassification = ToBeClassified;
            TableRelation = "InsuranceValue1";
        }
        field(50003; "Rank of Vendor Code"; Code[20])
        {
            Caption = 'Rank of Vendor';
            DataClassification = ToBeClassified;
            TableRelation = "RankOfVendor1";
        }
    }
}