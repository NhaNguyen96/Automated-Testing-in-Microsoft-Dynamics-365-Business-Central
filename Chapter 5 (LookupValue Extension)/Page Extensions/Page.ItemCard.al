pageextension 50053 "ItemCardPageExt" extends "Item Card" //30
{
    layout
    {
        addlast(Item)
        {
            field("Insurance Value"; "Insurance Value")
            {
                ToolTip = 'Specifies the insurance value the customer buys from.';
                ApplicationArea = All;
            }
        }
    }
}