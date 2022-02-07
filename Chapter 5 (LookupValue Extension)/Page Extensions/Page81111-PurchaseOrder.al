// pageextension 81111 "Purchase Ext" extends "Purchase Order List"
// {
//     actions
//     {
//         addbefore("P&osting")
//         {
//             action(Purchase11)
//             {
//                 ApplicationArea = All;
//                 trigger OnAction()
//                 begin
//                     Purchase11.run();
//                 end;
//             }
//         }
//     }
//     var
//         Purchase11: Codeunit GetDataFromPurchaseTable;
// }