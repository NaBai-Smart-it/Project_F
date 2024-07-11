page 50304 RequestList
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = Request;
    CardPageId = RequestCard;
    
    layout
    {
        area(Content)
        {
            repeater(Data)
            {
                field("No.";Rec."No."){ ApplicationArea = All;}
                field(EmployeeName;Rec.EmployeeName){ ApplicationArea = All;}
                field(Status;Rec.Status){ ApplicationArea = All;}
            }
        }
    }
}