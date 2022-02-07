pageextension 60067 SalespersonsPurchasersExt extends "Salespersons/Purchasers"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addbefore("CreateInteraction")
        {
            // action(lengtharray)
            // {
            //     ApplicationArea = All;
            //     trigger OnAction()
            //     begin
            //         lenarray.run();
            //     end;
            // }
            action(pricedisplay)
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    pricearray.run();
                end;
            }
        }
    }

    var
        //lenarray: Codeunit MyArray;
        pricearray: Codeunit TestItemArray;
}