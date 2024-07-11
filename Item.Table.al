table 50300 MyItem
{
    Caption = 'Item';
    DataClassification = SystemMetadata;
    LookupPageId = ItemList;
    DrillDownPageId = ItemList;

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
            DataClassification = SystemMetadata;
            Editable = false;
            AutoIncrement = true;

        }

        field(2; Name; Text[20])
        {
            Caption = 'Name';
            DataClassification = SystemMetadata;
        }

        field(3; ItemGroup; Option)
        {
            Caption = 'Item Group';
            DataClassification = SystemMetadata;
            OptionMembers = "Ofice","Electronic","Acsesories";
        }

        field(4; UnitOfMeasurement; Enum UnitOfMeasurement)
        {
            Caption = 'Unit Of Measurement';
            DataClassification = SystemMetadata;
        }

        field(5; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = SystemMetadata;
        }

        field(6; Price; Decimal)
        {
            Caption = 'Price without VAT';
            DataClassification = SystemMetadata;
        }

        field(7; Status; Text[50])
        {
            Caption = 'Status';
            DataClassification = SystemMetadata;
        }

        field(8; StorageLocation; Text[100])
        {
            Caption = 'Storage Location';
            DataClassification = SystemMetadata;
        }

        field(9; ContactPerson; Text[50])
        {
            Caption = 'Contact Person';
            DataClassification = SystemMetadata;
        }

        field(10; Photo; Blob)
        {
            Caption = 'Photo';
            DataClassification = SystemMetadata;
        }


    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }


}