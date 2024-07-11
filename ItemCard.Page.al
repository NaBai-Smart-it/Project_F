page 50301 ItemCard
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = MyItem;
    UsageCategory = Lists;
    Caption = 'Item Card';
    
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                
                field("No.";Rec."No."){ ApplicationArea = All;}
                field(Name;Rec.Name){ ApplicationArea = All;}
                field(ItemGroup;Rec.ItemGroup){ ApplicationArea = All;}
                field(UnitOfMeasurement;Rec.UnitOfMeasurement){ ApplicationArea = All;}
                field(Quantity;Rec.Quantity){ ApplicationArea = All;}
                field(Price;Rec.Price){ ApplicationArea = All;}
                field(Status;Rec.Status){ ApplicationArea = All;}
                field(StorageLocation;Rec.StorageLocation){ ApplicationArea = All;}
                field(ContactPerson;Rec.ContactPerson){ ApplicationArea = All;}
                field(Photo;Rec.Photo){ ApplicationArea = All;}
            }
        }
    }

}