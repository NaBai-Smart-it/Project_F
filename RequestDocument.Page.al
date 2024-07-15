page 50302 RequestCard
{
    PageType = Document;
    ApplicationArea = All;
    SourceTable = Request;
    UsageCategory = Documents;
    Caption = 'Request Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { ApplicationArea = All;  Editable = false;}
                field(EmployeeName; Rec.EmployeeName) { ApplicationArea = All; }
                field(Status; Rec.Status) { ApplicationArea = All; Editable = false;}
            }

            part(SalesLines; RequestRowList)
            {
                ApplicationArea = All;
                SubPageLink = RequestID = FIELD("No.");
            }
        }

        
    }

    

}