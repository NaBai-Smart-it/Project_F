page 50302 RequestCard
{
    PageType = Document;
    ApplicationArea = All;
    SourceTable = Request;
    //UsageCategory = Documents;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.") { ApplicationArea = All; }
                field(EmployeeName; Rec.EmployeeName) { ApplicationArea = All; }
                field(Status; Rec.Status) { ApplicationArea = All; }
            }

            part(SalesLines; RequestRowList)
            {
                ApplicationArea = All;
                SubPageLink = RequestID = FIELD("No.");
            }
        }

        
    }

    

}