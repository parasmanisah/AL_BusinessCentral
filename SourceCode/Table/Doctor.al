table 60006 "Doctor"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Doctor_ID; Code[20])
        {
            DataClassification = CustomerContent;

        }
        field(2; Doctor_Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Specification; Enum "Specifications")
        {
            DataClassification = ToBeClassified;
        }
        field(4; "No. Series"; Code[10])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; Doctor_ID)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        DoctorNum: Record "Sales & Receivables Setup";
        NoSeriesMgnt: Codeunit NoSeriesManagement;
    begin

        if "Doctor_ID" = '' then begin
            DoctorNum.Get();
            NoSeriesMgnt.InitSeries(DoctorNum.Doctor_ID, DoctorNum.Doctor_ID, 0D, Doctor_ID, "No. Series");
        end;

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}