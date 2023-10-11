report 61010 "Patient Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './SourceCode/Report/Patient Report.rdl';

    dataset
    {
        dataitem(DataItemName; Customer)
        {
            column(CompanyInfoName; CompanyInfo.Name) { }
            column(CompanyInfoAddress; CompanyInfo.Address) { }
            column(No_; "No.") { }
            column(Name; Name) { }
            column(Address; Address) { }
            column(Contact; Contact) { }

            dataitem("Patient History"; "Patient History")
            {
                DataItemLink = Patient_History_ID = field("No.");
                column(Appointed_Dr_; "Appointed Dr.") { }
                column(Date; Date) { }
                column(Specification; Specification) { }
                column(Description; Description) { }
            }
        }


    }

    trigger OnPreReport()

    begin
        CompanyInfo.Reset();
        CompanyInfo.get();
    end;

    var
        CompanyInfo: Record "Company Information";

}
