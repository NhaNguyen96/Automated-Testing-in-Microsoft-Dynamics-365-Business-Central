tableextension 50011 "ItemTemplateTableExt1" extends "Item Templ." //5105
{
    fields
    {
        field(50001; "Insurance Value Code"; Boolean)
        {
            Caption = 'Insurance Value Code';
            DataClassification = ToBeClassified;
            TableRelation = "InsuranceValue1";
        }
    }
}