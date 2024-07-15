codeunit 50301 RequestRowManegement
{
    [EventSubscriber(ObjectType::Table, DataBase::RequestRow, 'OnAfterValidateEvent', 'Quantity', true, false)]
    procedure OnAfterValidateQuantity(var Rec: Record RequestRow; xRec: Record RequestRow; CurrFieldNo: Integer)
    begin
        if Rec.Quantity <= 0 then
        begin
            Error('Quantity must be grater then 0');
        end;
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