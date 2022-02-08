codeunit 50005 "PurchaseLineEvents"
{
    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterGetItem', '', false, false)]
    local procedure OnAfterCopyInsuranceValueFieldsFromItemEvent(var PurchaseLine: Record "Purchase Line"; Item: Record Item)
    begin
        with PurchaseLine do
            "Insurance Value Code" := Item."Insurance Value";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Purchase Header", 'OnAfterCopyBuyFromVendorFieldsFromVendor', '', false, false)]
    local procedure OnAfterCopyRankOfVendorFieldsFromVendorEvent(var PurchaseHeader: Record "Purchase Header"; Vendor: Record Vendor)
    begin
        with PurchaseHeader do
            "Rank of Vendor Code" := Vendor."Rank of Vendor Code";
    end;
}