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

            trigger OnValidate()
            begin
                RecalculatePrice();
            end;
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

            trigger OnValidate()
            begin
                RecalculatePrice();
            end;
        }

        field(5; Price; Decimal)
        {
            Caption = 'Price Without VAT';
            DataClassification = CustomerContent;
            Editable = false;
        }

        field(6; Comment; Text[50])
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

    procedure RecalculatePrice()
    var
        MyItemRec: Record MyItem;
    begin
        if MyItemRec.Get(ItemID) then
            Price := MyItemRec.Price * Quantity
        else
            Price := 0; 
    end;

    trigger OnInsert()
    begin
        "No." := RequestRowMng.GetNextLineNo(RequestID);
    end;

    var
        RequestRowMng : Codeunit RequestRowManegement;
    
}
