pageextension 50051 "ItemListPageExt" extends "Item List" //31
{
    layout
    {
        addlast(Control1)
        {
            field("Insurance Value"; "Insurance Value")
            {
                ToolTip = 'Specifies the insurance value the item.';
                ApplicationArea = All;
            }
        }
    }
}