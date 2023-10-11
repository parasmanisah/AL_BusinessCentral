pageextension 60005 MyExtension extends "Customer Card"
{
    layout
    {
        addafter(Name)
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