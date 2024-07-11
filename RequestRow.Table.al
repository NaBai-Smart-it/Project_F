table 50302 RequestRow
{
    Caption = 'Request Row';
    DataClassification = CustomerContent;
    
    fields
    {

        field(1;"No.";Integer)
        {
            Caption = 'Request Row ID';
            DataClassification = SystemMetadata;
        }

        field(2;ItemID;Integer)
        {
            Caption = 'Item ID';
            DataClassification = SystemMetadata;
            TableRelation = Item."No.";
        }

        field(3;UnitOfMeasurement;Enum UnitOfMeasurement)
        {
            Caption = 'Unit of measure';
            DataClassification = SystemMetadata;
        }

        field(4;Quantity;Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }

        field(5;Price;Decimal)
        {
            Caption = 'Price Witout VAT';
            DataClassification = CustomerContent;
        }

        field(6;Coment;Text[50])
        {
            Caption = 'Comment';
            DataClassification = CustomerContent;
        }

        
        field(7;RequestID;Integer)
        {
            Caption = 'Request ID';
            DataClassification = SystemMetadata;
            TableRelation = Request."No.";
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