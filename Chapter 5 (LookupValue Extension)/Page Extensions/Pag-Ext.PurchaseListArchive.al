// pageextension 50056 "PurchaseListArchivePageExt" extends "Purchase List Archive" //5161
// {
//     layout
//     {
//         addlast(Control1)
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