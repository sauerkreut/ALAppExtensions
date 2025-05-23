﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------
#if not CLEAN27
namespace Microsoft.Service.Reports;

using System.IO;

codeunit 12215 "Serv. Decl. Get Totals IT"
{
    TableNo = "Data Exch.";
    ObsoleteState = Pending;
    ObsoleteTag = '27.0';
    ObsoleteReason = 'Calculating the sum of rounded values is moved to codeunit 12214 "Serv. Decl. Exp. Ext. IT".';

    trigger OnRun()
    var
        DataExchField: Record "Data Exch. Field";
        DataExchFieldMapping: Record "Data Exch. Field Mapping";
        LocalServiceDeclarationMgt: Codeunit "Service Declaration Mgt. IT";
        DecVar: Decimal;
        TotalRoundedAmount: Integer;
    begin
        TotalRoundedAmount := 0;
        DataExchFieldMapping.SetRange("Data Exch. Def Code", Rec."Data Exch. Def Code");
        DataExchFieldMapping.SetRange("Data Exch. Line Def Code", Rec."Data Exch. Line Def Code");
        DataExchFieldMapping.SetRange("Field ID", 12220);
        if DataExchFieldMapping.FindLast() then begin
            DataExchField.SetRange("Data Exch. No.", Rec."Entry No.");
            DataExchField.SetRange("Column No.", DataExchFieldMapping."Column No.");
            if DataExchField.FindSet() then
                repeat
                    Evaluate(DecVar, DataExchField.GetValue().TrimStart('0'));
                    TotalRoundedAmount += Round(DecVar, 1);
                until DataExchField.Next() = 0;
        end;

        LocalServiceDeclarationMgt.SetTotals(TotalRoundedAmount, DataExchField."Line No.");
    end;
}
#endif