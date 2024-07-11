// table 50320 "Sales H"
// {
//     DataClassification = ToBeClassified;

//     fields
//     {
//         field(1; "No."; Code[20])
//         {
//             DataClassification = SystemMetadata;
//         }
//         field(2; "Customer No."; Code[20])
//         {
//             DataClassification = EndUserIdentifiableInformation;
//             TableRelation = Customer."No.";
//         }
//         // Other fields...
//     }

//     keys
//     {
//         key(PK; "No.")
//         {
//             Clustered = true;
//         }
//     }
// }
