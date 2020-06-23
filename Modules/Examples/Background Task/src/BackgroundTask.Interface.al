// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// Provides interface functionality for background tasks.
/// </summary>
interface "Background Task"
{
    procedure QueueTask(Task: Guid);
}