page 50001 "InsuranceValues"
{
    PageType = List;
    SourceTable = "InsuranceValue1";
    Caption = 'Insurance Values';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(RepeaterControl)
            {
                field("InsuranceValue"; "InsuranceValue")
                {
                    ToolTip = 'Specifies a code to identify this Insurance value.';
                    ApplicationArea = All;
                }
                field("Description"; "Description")
                {
                    ToolTip = 'Specifies a boolean to describe the Insurance value.';
                    ApplicationArea = All;
                }

            }
        }
    }
}