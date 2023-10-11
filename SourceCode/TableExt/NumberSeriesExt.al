tableextension 60108 "ID_Setup" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50111; "Doctor_ID"; Code[50])
        {
            DataClassification = CustomerContent;
            TableRelation = "No. Series";
        }

        // Add changes to table fields here
    }

    var
        myInt: Integer;
}