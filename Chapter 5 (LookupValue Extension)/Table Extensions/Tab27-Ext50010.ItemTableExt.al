tableextension 50010 "ItemTableExt" extends Item //18
{
    fields
    {
        field(50001; "Insurance Value"; Boolean)
        {
            Caption = 'Insurance Value';
            DataClassification = ToBeClassified;
            TableRelation = InsuranceValue1;
        }
    }
}