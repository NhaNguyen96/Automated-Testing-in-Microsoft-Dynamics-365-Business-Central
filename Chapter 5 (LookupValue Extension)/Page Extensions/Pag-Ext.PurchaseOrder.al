pageextension 50062 "PurchaseOrderPageExt" extends "Purchase Order"
{
    layout
    {
        addafter(General)
        {
            field("Rank of Vendor"; "Rank of Vendor Code")
            {
                ToolTip = 'Specifies the rank of vendor.';
                ApplicationArea = All;
                TableRelation = "RankOfVendor1";
            }
        }
    }
    // procedure TotalDiscountItem()

    // var
    //     PurchLine: Record "Purchase Line";
    //     InsuranceValue: Boolean ;
    //     DocAmount: Decimal;
    //     RankOfVendor: Decimal;
    //     PurchaseDis: Codeunit "Purch.-Calc.Discount";

}