namespace Microsoft.SubscriptionBilling;

report 8001 "Create Service Objects"
{
    ApplicationArea = All;
    UsageCategory = None;
    ProcessingOnly = true;
    Caption = 'Create Subscriptions';

    dataset
    {
        dataitem(ImportedServiceObjectDataItem; "Imported Subscription Header")
        {
            DataItemTableView = where("Subscription Header created" = const(false));

            trigger OnPreDataItem()
            begin
                NoOfRecords := Count;
                Counter := 0;
            end;

            trigger OnAfterGetRecord()
            begin
                Counter += 1;

                if (Counter mod 10 = 0) or (Counter = NoOfRecords) then
                    Window.Update(1, Round(Counter / NoOfRecords * 10000, 1));

                ClearLastError();
                ImportedServiceObject := ImportedServiceObjectDataItem;
                if not Codeunit.Run(Codeunit::"Create Subscription Header", ImportedServiceObject) then begin
                    ImportedServiceObject."Error Text" := CopyStr(GetLastErrorText, 1, MaxStrLen(ImportedServiceObject."Error Text"));
                    ImportedServiceObject.Modify(false);
                end;

                Commit(); //retain data even if errors ocurr
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    trigger OnPostReport()
    begin
        Window.Close();
        Message(ProcessingFinishedMsg);
    end;

    trigger OnPreReport()
    begin
        Window.Open(ImportWindowTxt);
    end;

    var
        ImportedServiceObject: Record "Imported Subscription Header";
        Window: Dialog;
        NoOfRecords: Integer;
        Counter: Integer;
        ImportWindowTxt: Label 'Processing Records ...\\@1@@@@@@@@@@@@@@';
        ProcessingFinishedMsg: Label 'Processing finished.';
}