// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// Provides functionality to retrieve a user specified codeunit.
/// </summary>
page 50101 "User Specified Codeunit"
{
    PageType = StandardDialog;
    Caption = 'Select a codeunit to run';
    Extensible = false;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(CodeunitId; CodeunitId)
                {
                    ApplicationArea = All;
                    TableRelation = AllObjWithCaption."Object ID";
                }
            }
        }
    }

    procedure GetCodeunitId(): Integer
    begin
        exit(CodeunitId);
    end;

    var
        CodeunitId: Integer;
}