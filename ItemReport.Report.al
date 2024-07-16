report 50300 ItemReport
{
    ApplicationArea = All;
    Caption = 'Item Report';
    UsageCategory = ReportsAndAnalysis;
    WordLayout = 'Item Report.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(MyItem; MyItem)
        {
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Quantity; Quantity)
            {
            }
            column(Price; Price)
            {
            }
            column(UnitOfMeasurement; UnitOfMeasurement)
            {
            }
            column(StorageLocation; StorageLocation)
            {
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
