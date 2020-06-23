// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

/// <summary>
/// Displays the background tasks and allows for queuing paused tasks.
/// </summary>
page 50100 "Background Tasks"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Background Task";
    Editable = false;
    Extensible = false;

    layout
    {
        area(Content)
        {
            repeater(Tasks)
            {
                field(Id; Rec.Id)
                {
                    ApplicationArea = All;
                }

                field("Codeunit Id to Run"; Rec."Codeunit Id to Run")
                {
                    ApplicationArea = All;
                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(CreateTask)
            {
                ApplicationArea = All;
                Caption = 'Create Task';
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                var
                    UserSpecifiedCodeunit: Page "User Specified Codeunit";
                begin
                    if UserSpecifiedCodeunit.RunModal() = Action::OK then;

                    BackgroundTask.CreateTask(UserSpecifiedCodeunit.GetCodeunitId());
                end;
            }

            action(QueueTask)
            {
                ApplicationArea = All;
                Caption = 'Queue Task';
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction()
                begin
                    BackgroundTask.QueueTask(Rec.Id);
                    CurrPage.Update();
                end;
            }
        }
    }

    var
        BackgroundTask: Codeunit "Background Task";
}