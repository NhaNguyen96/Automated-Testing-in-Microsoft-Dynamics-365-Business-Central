tableextension 50005 "CustomerTemplateTableExt" extends "Customer Template" //5105
{
    fields
    {
        field(50000; "Lookup Value Code"; Code[10])
        {
            Caption = 'Lookup Value Code';
            DataClassification = ToBeClassified;
            TableRelation = "LookupValue";
        }
        // field(50001; "Insurance Value"; Code[10])
        // {
        //     Caption = 'Insurance Value';
        //     DataClassification = ToBeClassified;
        //     TableRelation = InsuranceValue;
        // }
    }
}