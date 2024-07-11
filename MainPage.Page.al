page 50303 MainPage
{
    PageType = Card;
    ApplicationArea = All;
    Caption = '';
    
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
        area(Navigation)
        {
            action(OpenItemList)
            {
                Caption = 'Open Item List';
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    Page.RunModal(Page::ItemList);
                end;
            }

            action(OpenRequestList)
            {
                Caption = 'Open Request List';
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    Page.RunModal(Page::RequestList);
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}