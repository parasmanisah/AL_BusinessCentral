page 60010 "Doctor Card"
{
    PageType = Card;
    SourceTable = Doctor;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Doctor_ID; Rec.Doctor_ID)
                {
                    ApplicationArea = All;

                }
                field(Doctor_Name; Rec.Doctor_Name)
                {
                    ApplicationArea = All;
                }
                field(Specification; Rec.Specification)
                {
                    ApplicationArea = All;
                }
            }
        }
    }


    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}