codeunit 50300 ItemManagement
{
    [EventSubscriber(ObjectType::Table, DataBase::MyItem, 'OnAfterValidateEvent', 'Status', true, false)]
    procedure OnAfterValidateStatus(var Rec: Record MyItem; xRec: Record MyItem; CurrFieldNo: Integer)
    begin
        if Rec.Quantity <= 0 then
        begin
            Rec.Status := ItemStatus::Unavailable;
        end; 
    end;
}