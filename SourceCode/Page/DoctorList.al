page 60009 "Doctor List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Doctor;
    CardPageId = "Doctor Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}