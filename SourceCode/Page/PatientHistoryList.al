page 60030 "Patient History"
{
    PageType = ListPart;
    UsageCategory = Lists;
    SourceTable = "Patient History";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Specification; Rec.Specification)
                {
                    ApplicationArea = All;
                }
                field("Appointed Dr."; Rec."Appointed Dr.")
                {
                    ApplicationArea = All;


                }
            }
        }


    }


}