// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// Provides functionality implementationss to create background tasks.
/// </summary>
codeunit 50101 "Background Task Impl." implements "Background Task"
{
    Access = Internal;

    procedure CreateTask(CodeunitId: Integer): Guid
    var
        Task: Record "Background Task";
    begin
        Task.Id := CreateGuid();
        Task."Codeunit Id to Run" := CodeunitId;
        Task.Status := "Background Task Status"::Paused;
        Task.Insert();

        exit(Task.Id);
    end;

    procedure QueueTask(TaskId: Guid)
    var
        Task: Record "Background Task";
        SystemTaskId: Guid;
    begin
        if not Task.Get(TaskId) then
            Error(StrSubstNo(UnableToFindTaskMsg, TaskId));

        if not (Task.Status in ["Background Task Status"::Paused, "Background Task Status"::Failed]) then
            exit;

        SystemTaskId := TaskScheduler.CreateTask(Codeunit::"BG Task Dispatcher", 0, true, CompanyName(), CurrentDateTime(), Task.RecordId);

        Task."System Task Id" := SystemTaskId;
        Task.Status := "Background Task Status"::Queued;
        Task.Modify();
    end;

    var
        UnableToFindTaskMsg: Label 'Unable to find background task %1', Comment = '%1 - Task Id';
}