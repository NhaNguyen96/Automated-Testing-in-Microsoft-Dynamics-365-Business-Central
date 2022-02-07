codeunit 50005 "PurchaseLineEvents"
{
    [EventSubscriber(ObjectType::Table, Database::"Purchase Line", 'OnAfterGetItem', '', false, false)]
    local procedure OnAfterCopyInsuranceValueFieldsFromItemEvent(var PurchaseLine: Record "Purchase Line"; Item: Record Item)
    begin
        with PurchaseLine do
            "Insurance Value Code" := Item."Insurance Value";
    end;
}