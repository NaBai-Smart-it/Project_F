page 50306 RequestRowList
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = RequestRow;
    CardPageId = RequestRowCard;
    
    layout
    {
        area(Content)
        {
            repeater(RequestRowData)
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
        area(processing)
        {
            action("Add Row")
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                    NewRow: Record RequestRow;
                begin
                    NewRow.Init();
                    NewRow.RequestID := Rec.RequestID;                        
                    NewRow.Insert(true);
                    Message('Hakskks');
                    CurrPage.Update(true);
                end;
            }
            action("Delete Row")
            {
                ApplicationArea = All;
                trigger OnAction()
                begin
                    
                    Message('Hakskks');
                    if not Rec.IsEmpty() then
                    begin
                        Rec.Delete(true);
                        CurrPage.Update(true);
                    end;
                end;
            }
        }
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        
                    Message('Hakskks');
        Rec.Validate(RequestID, Rec.RequestID);
        exit(true);
    end;

    trigger OnModifyRecord(): Boolean
    begin
                    Message('Hakskks');
        Rec.Validate(RequestID, Rec.RequestID);
        exit(true);
    end;

    trigger OnDeleteRecord(): Boolean
    begin
                    Message('Hakskks');
        exit(true);
    end;
}