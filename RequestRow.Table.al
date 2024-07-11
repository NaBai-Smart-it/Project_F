table 50302 RequestRow
{
    Caption = 'Request Row';
    DataClassification = CustomerContent;

    fields
    {

        field(1; "No."; Integer)
        {
            Caption = 'Request Row ID';
            DataClassification = SystemMetadata;
            AutoIncrement = true;
        }

        field(2; ItemID; Integer)
        {
            Caption = 'Item ID';
            DataClassification = SystemMetadata;
            TableRelation = MyItem."No.";
        }

        field(3; UnitOfMeasurement; Enum UnitOfMeasurement)
        {
            Caption = 'Unit of measure';
            FieldClass = FlowField;
            CalcFormula = lookup(MyItem.UnitOfMeasurement where("No." = field(ItemID)));
            Editable = false;
        }

        field(4; Quantity; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
        }

        field(5; Price; Decimal)
        {
            Caption = 'Price Witout VAT';
            FieldClass = FlowField;
            CalcFormula = lookup(MyItem.Price where("No." = field(ItemID)));
            Editable = false;
        }

        field(6; Coment; Text[50])
        {
            Caption = 'Comment';
            DataClassification = CustomerContent;
        }

        field(7; RequestID; Integer)
        {
            Caption = 'Request ID';
            DataClassification = SystemMetadata;
            TableRelation = Request."No.";
        }
    }

    keys
    {
        key(PK; "No.", RequestID)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        "No." := GetNextLineNo(RequestID);
    end;

    procedure GetNextLineNo(RequestID: Integer): Integer
    var
        RequestRow: Record RequestRow;
        MaxLineNo: Integer;
    begin
        MaxLineNo := 0;
        RequestRow.SetRange(RequestRow.RequestID, RequestID);
        if RequestRow.FindLast then
            MaxLineNo := RequestRow."No.";

        exit(MaxLineNo + 1);
    end;



}