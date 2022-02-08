// pageextension 50055 "PurchaseListPageExt" extends "Purchase List" //45
// {
//     layout
//     {
//         addfirst(Control1)
//         {
//             field("Insurance Value"; "Insurance Value Code")
//             {
//                 ToolTip = 'Specifies the insurance value the customer buys from.';
//                 ApplicationArea = All;
//                 TableRelation = "InsuranceValue1";
//             }
//             field("Rank of Vendor"; "Rank of Vendor Code")
//             {
//                 ToolTip = 'Specifies the insurance value the customer buys from.';
//                 ApplicationArea = All;
//                 TableRelation = "RankOfVendor1";
//             }
//         }
//     }
// }