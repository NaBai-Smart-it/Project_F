page 50306 RequestRowList
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = RequestRow;
    Caption = 'Request Row List';
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(RequestRowData)
            {
                field("No."; Rec."No.") { ApplicationArea = All;  Editable = false;}
                field(ItemID; Rec.ItemID){ ApplicationArea = All; }
                field(UnitOfMeasurement; Rec.UnitOfMeasurement) { ApplicationArea = All; }
                field(Quantity; Rec.Quantity) { ApplicationArea = All; }
                field(Price; Rec.Price) { ApplicationArea = All; }
                field(Coment; Rec.Coment) { ApplicationArea = All; }
                field(RequestID; Rec.RequestID) { ApplicationArea = All; }
            }
        }
    }

}