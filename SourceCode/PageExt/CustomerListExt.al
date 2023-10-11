pageextension 60001 "Customer List Page" extends "Customer List"
{
    layout
    {
        addafter("No.")
        {
            field(isPatient; Rec.isPatient)
            {
                ApplicationArea = All;
            }
            field(Specifications; Rec.Specifications)
            {
                ApplicationArea = All;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}