query 50300 RequestTotals
{
    Caption = 'Requests Totals';
    
    elements
    {
        dataitem(Request; Request)
        {
            
            column(No_; "No.")
            {   
            }
            column(EmployeeName;EmployeeName)
            {
            }
            dataitem(RequestRow;RequestRow)
            {

                DataItemLink = RequestID = Request."No.";

                column(RequestID;RequestID)
                {
                }

                column(TotalPrice;Price)
                {
                    
                }
            }
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
        
    end;
}