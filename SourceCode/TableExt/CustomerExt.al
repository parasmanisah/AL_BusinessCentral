tableextension 60002 "Customer Ext Table" extends Customer
{
    fields
    {
        field(60004; isPatient; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(64004; Specifications; Enum "Specifications")
        {
            DataClassification = CustomerContent;
        }
        // Add changes to table fields here
    }

    var
        myInt: Integer;
}