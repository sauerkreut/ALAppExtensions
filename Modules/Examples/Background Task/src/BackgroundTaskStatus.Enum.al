// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// The various states a task can be in.
/// </summary>
enum 50100 "Background Task Status"
{
    Extensible = false;

    /// <summary>
    /// Specifies that the task is not queued to run.
    /// </summary>
    value(0; Paused)
    {
    }

    /// <summary>
    /// Specifies that the task is waiting to be run.
    /// </summary>
    value(1; Queued)
    {
    }

    /// <summary>
    /// Specifies that the task is currently running.
    /// </summary>
    value(2; "In Progress")
    {
    }

    /// <summary>
    /// Specifies that the task has completed.
    /// </summary>
    value(3; "Finished")
    {
    }

    /// <summary>
    /// Specifies that the task has failed with an error.
    /// </summary>
    value(4; "Failed")
    {
    }
}