// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace Microsoft.DemoData.Sales;

using Microsoft.DemoTool.Helpers;
using Microsoft.DemoData.Foundation;
using Microsoft.DemoData.Finance;
using Microsoft.Foundation.Enums;
using Microsoft.Sales.Document;
using Microsoft.Finance.ReceivablesPayables;
using Microsoft.Warehouse.Structure;
using Microsoft.Pricing.Calculation;

codeunit 5271 "Create Sales Receivable Setup"
{
    InherentEntitlements = X;
    InherentPermissions = X;

    trigger OnRun()
    var
        ContosoSalesReceivableSetup: Codeunit "Contoso Sales Receivable Setup";
        CreateNoSeries: Codeunit "Create No. Series";
        CreateVATPostingGroups: Codeunit "Create VAT Posting Groups";
        CreateJobQueueCategory: Codeunit "Create Job Queue Category";
    begin
        ContosoSalesReceivableSetup.InsertSalesReceivablesSetup(3, true, true, CreateNoSeries.Customer(), CreateNoSeries.SalesQuote(), CreateNoSeries.SalesOrder(), CreateNoSeries.SalesInvoice(), CreateNoSeries.PostedSalesInvoice(), CreateNoSeries.SalesCreditMemo(), CreateNoSeries.PostedSalesCreditMemo(), CreateNoSeries.SalesShipment(), CreateNoSeries.Reminder(), CreateNoSeries.IssuedReminder(), CreateNoSeries.FinanceChargeMemo(), CreateNoSeries.IssuedFinanceChargeMemo(), CreateNoSeries.BlanketSalesOrder(), 2, true, true, true, Enum::"Default Posting Date"::"Work Date", CreateJobQueueCategory.SalesPurchasePosting(), 1000, 1000, CreateVATPostingGroups.Domestic(), Enum::"Setup Report Output Type"::PDF, Enum::"Sales Line Type"::Item, true, Enum::"Posting Group Change Method"::"Alternative Groups", Enum::"Non-Invt. Item Whse. Policy"::None, CreateNoSeries.PostedSalesReceipt(), true, true, CreateNoSeries.SalesReturnOrder(), Enum::"Price Calculation Method"::"Lowest Price", CreateNoSeries.SalesPriceList(), true, true);
    end;
}
