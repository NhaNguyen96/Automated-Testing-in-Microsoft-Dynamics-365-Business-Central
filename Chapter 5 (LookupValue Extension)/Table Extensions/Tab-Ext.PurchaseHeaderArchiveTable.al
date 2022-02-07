tableextension 50012 "PurchaseHeader" extends "Purchase Header" //36
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