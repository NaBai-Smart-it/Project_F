
// table 50317 "Sales L"
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1; "Document No."; Code[20])
//         {
//             DataClassification = SystemMetadata;
//             TableRelation = "Sales H"."No.";
//         }
//         field(2; "Line No."; Integer)
//         {
//             DataClassification = SystemMetadata;
//         }
//         field(3; "Item No."; Code[20])
//         {
//             DataClassification = EndUserIdentifiableInformation;
//             TableRelation = Item."No.";
//         }
//         field(4; "Quantity"; Decimal)
//         {
//             DataClassification = ToBeClassified;
//         }
//         // Other fields...
//     }

//     keys
//     {
//         key(PK; "Document No.", "Line No.")
//         {
//             Clustered = true;
//         }
//     }
// }
