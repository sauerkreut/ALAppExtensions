// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// Contains the information for background tasks
/// </summary>
table 50100 "Background Task"
{
    Access = Internal;

    fields
    {
        field(1; Id; Guid)
        {
            DataClassification = SystemMetadata;
        }
        field(2; "Codeunit Id to Run"; Integer)
        {
            DataClassification = SystemMetadata;
        }
        field(3; Status; Enum "Background Task Status")
        {
            DataClassification = SystemMetadata;
        }
        field(4; "System Task Id"; Guid)
        {
            DataClassification = SystemMetadata;
        }
    }

    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }

}