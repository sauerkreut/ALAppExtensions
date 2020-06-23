// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// The dispatcher to run the specified task and updating the task.
/// </summary>
codeunit 50102 "BG Task Dispatcher"
{
    Access = Internal;
    TableNo = "Background Task";

    trigger OnRun()
    var
        Success: Boolean;
    begin
        if Rec.Status <> "Background Task Status"::Queued then
            exit;

        UpdateStatus(Rec, "Background Task Status"::"In Progress");

        Success := Codeunit.Run(Rec."Codeunit Id to Run");

        if Success then
            UpdateStatus(Rec, "Background Task Status"::Finished)
        else
            UpdateStatus(Rec, "Background Task Status"::Failed);
    end;

    local procedure UpdateStatus(var Task: Record "Background Task"; Status: Enum "Background Task Status")
    begin
        Task.Status := Status;
        Task.Modify();
    end;
}