table 50003 "RankOfVendor1"
{
    Caption = 'Rank of Vendor';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; RankOfVendor; Code[20])
        {
            Caption = 'Rank of Vendor';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
        field(3; Discount; Text[50])
        {
            Caption = 'Discount';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; RankOfVendor)
        {
            Clustered = true;
        }
    }
}