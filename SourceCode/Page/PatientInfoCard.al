page 60022 "Patient Details"
{
    PageType = Card;
    SourceTable = Customer;


    layout
    {
        area(Content)
        {
            group("Patient Details")
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field(Contact; Rec.Contact)
                {
                    ApplicationArea = All;
                }
                field(Specifications; Rec.Specifications)
                {
                    ApplicationArea = All;
                }
            }

            part(Lines; "Patient History")
            {
                ApplicationArea = All;
                SubPageLink = Patient_History_ID = field("No.");
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Report)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Rec.Reset();
                    rec.SetRange("No.", Rec."No.");
                    Report.RunModal(61010, true, true, Rec);

                end;
            }
        }
    }

    var
        myInt: Integer;
}