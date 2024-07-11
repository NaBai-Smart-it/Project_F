table 50301 Request
{
    Caption = 'Request';
    DataClassification = SystemMetadata;
    
    fields
    {
        field(1;"No."; Integer)
        {
            Caption = 'Request ID';
            DataClassification = SystemMetadata;
            AutoIncrement = true;
        }

        field(2;EmployeeName;Text[50])
        {
            Caption = 'Employee Name';
            DataClassification = EndUserIdentifiableInformation;
        }

        field(3;Status;Enum Status)
        {
            Caption = 'Status';
            DataClassification = CustomerContent;
        }

        
    }
    
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnDelete()
    var
        RequestRow: Record RequestRow;
    begin
        // Set the filter to find all rows related to this request
        RequestRow.SetRange(RequestRow.RequestID, Rec."No.");

        // Delete all related rows
        if RequestRow.FindSet() then
            repeat
                RequestRow.Delete();
            until RequestRow.Next() = 0;
    end;   
}