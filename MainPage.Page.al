page 50303 MainPage
{
    PageType = RoleCenter;
    ApplicationArea = All;
    Caption = 'Main Page';
    UsageCategory = Lists;


    layout
    {
        area(RoleCenter)
        {
        }
    }

    actions
    {
        area(Creation)
        {
            group(MyGroup)
            {
                
                action(OpenItemList)
                {
                    Caption = 'Open Item List';
                    RunObject = Page ItemList;
                }

                action(OpenRequestList)
                {
                    Caption = 'Open Request List';
                    RunObject = Page RequestList;
                }
            }
        }
    }
}