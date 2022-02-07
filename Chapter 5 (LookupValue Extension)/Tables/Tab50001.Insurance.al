table 50001 "InsuranceValue1"
{
    Caption = 'Insurance Value';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; InsuranceValue; Boolean)
        {
            Caption = 'Insurance Value';
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; InsuranceValue)
        {
            Clustered = true;
        }
    }
}