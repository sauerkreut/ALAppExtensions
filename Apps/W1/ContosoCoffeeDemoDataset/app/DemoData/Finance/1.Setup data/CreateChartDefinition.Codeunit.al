// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace Microsoft.DemoData.Finance;

using System.Visualization;
using Microsoft.Finance.FinancialReports;

codeunit 5427 "Create Chart Definition"
{
    InherentEntitlements = X;
    InherentPermissions = X;

    trigger OnRun()
    var
        ChartManagement: Codeunit "Chart Management";
    begin
        ChartManagement.PopulateChartDefinitionTable();
        CreateTrailBalanceSetup();
    end;

    local procedure CreateTrailBalanceSetup()
    var
        TrialBalanceSetup: Record "Trial Balance Setup";
        CreateAccScheduleName: Codeunit "Create Acc. Schedule Name";
        CreateColumnLayoutName: Codeunit "Create Column Layout Name";
    begin
        TrialBalanceSetup.Get();
        TrialBalanceSetup.Validate("Account Schedule Name", CreateAccScheduleName.ReducedTrialBalance());
        TrialBalanceSetup.Validate("Column Layout Name", CreateColumnLayoutName.PeriodsDefinition());
        TrialBalanceSetup.Modify(true);
    end;
}
