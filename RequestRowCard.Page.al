page 50305 RequestRowCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = RequestRow;
    
    layout
    {
        area(Content)
        {
            group(RequestRowData)
            {
                field("No.";Rec."No."){ ApplicationArea = All;}
                field(ItemID;Rec.ItemID){ ApplicationArea = All;}
                field(UnitOfMeasurement;Rec.UnitOfMeasurement){ ApplicationArea = All;}
                field(Quantity;Rec.Quantity){ ApplicationArea = All;}
                field(Price;Rec.Price){ ApplicationArea = All;}
                field(Coment;Rec.Coment){ ApplicationArea = All;}
                field(RequestID;Rec.RequestID){ ApplicationArea = All;}
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}