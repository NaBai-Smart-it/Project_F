report 50305 RequestReport
{
    ApplicationArea = All;
    Caption = 'RequestReport';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'Request Report.docx';
    DefaultLayout = WORD;

    dataset
    {
        dataitem(Request; Request)
        {
            column(EmployeeName; EmployeeName)
            {
            }
            column(No; "No.")
            {
            }
            column(Status; Status)
            {
            }
            dataitem(RequestRow; RequestRow)
            {
                DataItemLinkReference = Request;
                DataItemLink = RequestID = field("No.");
                DataItemTableView = SORTING("No.");
                column(No_; "No.")
                {
                }
                column(ItemID; ItemID)
                {
                }
                column(UnitOfMeasurement; UnitOfMeasurement)
                {
                }
                column(Quantity; Quantity)
                {
                }
                column(Price; Price)
                {
                }
                column(Comment; Comment)
                {
                }
                column(RequestID; RequestID)
                {
                }
            }

        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
