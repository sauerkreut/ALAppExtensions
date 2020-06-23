// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// Provides functionality to create background tasks.
/// </summary>
codeunit 50100 "Background Task"
{
    Access = Public;

    /// <summary>
    /// Creates a background task to run.
    /// </summary>
    /// <param name="CodeunitId">The codeunit id to be run.</param>
    /// <returns>Guid of the created task.</returns>
    procedure CreateTask(CodeunitId: Integer): Guid
    begin
        BackgroundTaskImpl.CreateTask(CodeunitId);
    end;

    /// <summary>
    /// Queues the given task up to run.
    /// </summary>
    /// <param name="TaskId">The task id to queued to run.</param>
    procedure QueueTask(TaskId: Guid)
    begin
        BackgroundTaskImpl.QueueTask(TaskId);
    end;

    var
        BackgroundTaskImpl: Codeunit "Background Task Impl.";
}