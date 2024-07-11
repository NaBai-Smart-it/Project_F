page 50304 RequestList
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = Request;
    CardPageId = RequestCard;
    UsageCategory = Lists;
    Editable = false;
    Caption = 'Request List';
    

    layout
    {
        area(Content)
        {
            repeater(Data)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field(EmployeeName; Rec.EmployeeName) { ApplicationArea = All; }
                field(Status; Rec.Status) { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Confirm Request")
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                    RequestRow: Record RequestRow;
                    ItemRec: Record MyItem;
                    ErrorMessage: Label 'Not enough inventory for item %1. Required: %2, Available: %3';
                begin
                    RequestRow.SetRange(RequestRow.RequestID, Rec."No.");
                    if RequestRow.FindSet() then 
                    begin
                        repeat
                        
                            if ItemRec.Get(RequestRow.ItemID) then 
                            begin
                                if ItemRec.Quantity < RequestRow.Quantity then
                                    Error(ErrorMessage, ItemRec."No.", RequestRow.Quantity, ItemRec.Quantity);
                            end;
                        until RequestRow.Next() = 0;
                    end;

                    RequestRow.FindSet();
                    repeat
                        if ItemRec.Get(RequestRow.ItemID) then 
                        begin
                            ItemRec.Quantity := ItemRec.Quantity - RequestRow.Quantity;
                            ItemRec.Modify();
                        end;
                    until RequestRow.Next() = 0;

                    Rec.Status := Rec.Status::Confirmed;
                    Update(true);

                    Message('Request %1 has been confirmed and inventory updated.', Rec."No.");
                end;
            }

            action("Decline Request")
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                    RequestRow: Record RequestRow;
                    ItemRec: Record MyItem;
                    ErrorMessage: Label 'Not enough inventory for item %1. Required: %2, Available: %3';
                begin
                    if (Rec.Status = Enum::Status::Confirmed) then 
                    begin
                        Message('Request is already confirmed');
                    end
                    else if (Rec.Status = Enum::Status::Declined) then 
                    begin
                        Message('Request is already declined');
                    end
                    else 
                    begin
                        Rec.Status := Rec.Status::Declined;
                        Update(true);
                        Message('Request %1 has been confirmed and inventory updated.', Rec."No.");
                    end;


                end;
            }
        }
    }
}