// page 50321 "Sales O"
// {
//     PageType = Document;
//     SourceTable = "Sales H";
//     ApplicationArea = All;
//     UsageCategory = Documents;
    

//     layout
//     {
//         area(content)
//         {
//             group(General)
//             {
//                 Caption = 'General';

//                 field("No."; Rec."No.")
//                 {
//                     ApplicationArea = All;
//                 }
//                 field("Customer No."; Rec."Customer No.")
//                 {
//                     ApplicationArea = All;
//                 }
//                 // Other header fields...
//             }

//             repeater("Sales Lines")
//             {
                
//                 Caption = 'Sales Lines';

//                 field("Item No."; Rec."Item No.")
//                 {
//                     ApplicationArea = All;
//                     TableRelation = Item;
//                 }
//                 field("Quantity"; "Quantity")
//                 {
//                     ApplicationArea = All;
//                 }
//                 // Other line fields...
//             }
//         }

//         area(factboxes)
//         {
//             part(CustomerInfo; "Customer Card FactBox")
//             {
//                 ApplicationArea = All;
//                 SubPageLink = "No." = FIELD("Customer No.");
//             }
//         }
//     }

//     actions
//     {
//         area(processing)
//         {
//             action(Post)
//             {
//                 Caption = 'Post';
//                 Image = Post;
//                 ApplicationArea = All;
//                 Promoted = true;
//                 PromotedCategory = Process;

//                 trigger OnAction()
//                 begin
//                     // Posting logic
//                 end;
//             }
//         }
//     }
// }
