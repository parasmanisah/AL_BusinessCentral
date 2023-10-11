pageextension 60110 Number_Series extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Direct Debit Mandate Nos.")
        {
            field(Doctor_ID; Rec.Doctor_ID)
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