codeunit 81008 "Lookup Value Report"
{
    Subtype = Test;

    var
        Assert: Codeunit Assert;
        LibraryUtility: Codeunit "Library - Utility";
        LibrarySales: Codeunit "Library - Sales";
        LibraryReportDataset: Codeunit "Library - Report Dataset";
        isInitialized: Boolean;

    //[FEATURE] LookupValue Report

    [Test]
    [HandlerFunctions('CustomerListRequestPageHandler')]
    procedure TestLookupValueShowsOnCustomerListReport();
    //[FEATURE] LookupValue Report
    var
        Customer: array[2] of Record Customer;
    begin
        //[SCENARIO #0029] Test that lookup value shows on CustomerList report
        //Initialize();

        //[GIVEN] 2 customers with different lookup value
        CreateCustomerWithLookupValue(Customer[1]);
        CreateCustomerWithLookupValue(Customer[2]);

        //[WHEN] Run report CustomerList
        CommitAndRunReportCustomerList();

        //[THEN] Report dataset contains both customers with lookup value
        VerifyCustomerWithLookupValueOnCustomerListReport(Customer[1]."No.", Customer[1]."Lookup Value Code");
        VerifyCustomerWithLookupValueOnCustomerListReport(Customer[2]."No.", Customer[2]."Lookup Value Code");
    end;

    local procedure Initialize()
    var
        Customer: record Customer;
    begin
        if isInitialized then
            exit;

        Customer.DeleteAll();

        isInitialized := true;
        Commit();
    end;

    local procedure CreateCustomerWithLookupValue(var Customer: Record Customer)
    begin
        LibrarySales.CreateCustomer(Customer);
        with Customer do begin
            Validate("Lookup Value Code", CreateLookupValueCode());
            Modify();
        end;
    end;

    local procedure CreateLookupValueCode(): Code[10]
    var
        LookupValue: Record LookupValue;
    begin
        with LookupValue do begin
            Init();
            Validate(
                Code,
                LibraryUtility.GenerateRandomCode(FIELDNO(Code),
                Database::LookupValue));
            Validate(Description, Code);
            Insert();
            exit(Code);
        end;
    end;

    local procedure CommitAndRunReportCustomerList()
    var
        RequestPageXML: Text;
    begin
        Commit(); // close open write transaction to be able to run the report

        RequestPageXML := Report.RunRequestPage(Report::CustomerList, RequestPageXML);
        LibraryReportDataset.RunReportAndLoad(Report::CustomerList, '', RequestPageXML);
    end;

    [RequestPageHandler]
    procedure CustomerListRequestPageHandler(var CustomerListRequestPage: TestRequestPage CustomerList)
    begin
        // Empty handler used to close the request page, default settings are used
    end;

    local procedure VerifyCustomerWithLookupValueOnCustomerListReport(No: Code[20]; LookupValueCode: Code[10])
    var
        Column: array[2] of Integer;
    begin
        /*Column[1] := LibraryReportDataset.FindRow('Customer_No_', No);
        Column[2] := LibraryReportDataset.FindRow('Customer_Lookup_Value_Code', LookupValueCode);
        Assert.AreEqual(7, Column[2] - Column[1], 'Delta between columns Customer_No_ and Customer_Lookup_Value_Code');*/
        LibraryReportDataset.AssertElementWithValueExists('Customer_No_', No);
        LibraryReportDataset.AssertElementWithValueExists('Customer_Lookup_Value_Code', LookupValueCode);
    end;
}