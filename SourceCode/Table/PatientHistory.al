table 60020 "Patient History"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Patient_History_ID; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";

        }
        field(2; Date; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(3; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Appointed Dr."; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Doctor where(Specification = field(Specification));
        }
        field(5; Specification; Enum "Specifications")
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; Patient_History_ID)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;
        Cust: Record Customer;

    trigger OnInsert()
    begin
        Cust.Reset();
        if Cust.get(Patient_History_ID) then
            Specification := Cust.Specifications;
    end;

    trigger OnModify()
    begin
        Cust.Reset();
        if Cust.get(Patient_History_ID) then
            Specification := Cust.Specifications;
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}