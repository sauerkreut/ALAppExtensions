namespace Microsoft.SubscriptionBilling;

using Microsoft.Finance.Dimension;

page 8071 "Vendor Contracts"
{
    ApplicationArea = Basic, Suite;
    Caption = 'Vendor Subscription Contracts';
    CardPageId = "Vendor Contract";
    DataCaptionFields = "Buy-from Vendor No.";
    Editable = false;
    PageType = List;
    QueryCategory = 'Vendor Subscription Contracts';
    RefreshOnActivate = true;
    SourceTable = "Vendor Subscription Contract";
    UsageCategory = Lists;
    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field(DescriptionText; DescriptionText)
                {
                    ApplicationArea = Suite;
                    Caption = 'Description';
                    ToolTip = 'Specifies the description of the Subscription Contract.';
                }
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies the name of the vendor who delivered the items.';
                }
                field("Buy-from Vendor Name"; Rec."Buy-from Vendor Name")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies the name of the vendor who delivered the items.';
                }
                field("Contract Type"; Rec."Contract Type")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies the classification of the contract.';
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                    ApplicationArea = Dimensions;
                    ToolTip = 'Specifies the code for Shortcut Dimension 1, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                    Visible = false;
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                    ApplicationArea = Dimensions;
                    ToolTip = 'Specifies the code for Shortcut Dimension 2, which is one of two global dimension codes that you set up in the General Ledger Setup window.';
                    Visible = false;
                }
                field("Purchaser Code"; Rec."Purchaser Code")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies which purchaser is assigned to the Vendor Subscription Contract.';
                }
                field("Assigned User ID"; Rec."Assigned User ID")
                {
                    ToolTip = 'Specifies the ID of the user who is responsible for the document.';
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = Suite;
                    Visible = false;
                    ToolTip = 'Specifies whether the contract is active.';
                }
                field("Your Reference"; Rec."Your Reference")
                {
                    ApplicationArea = Suite;
                    ToolTip = 'Specifies the vendor''s reference.';
                }
                field("Exclude from Price Update"; Rec.DefaultExcludeFromPriceUpdate)
                {
                    ToolTip = 'Specifies whether price updates are are allowed for that contract. Setting it to yes will exclude all contract lines from all price updates.';
                    Visible = false;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Contract)
            {
                Caption = 'Vendor Subscription Contract';
                Image = "Order";
                action(CreateContractInvoice)
                {
                    Caption = 'Create Contract Invoice';
                    Image = CreateDocuments;
                    ToolTip = 'The action creates a contract invoice for the current contract.';

                    trigger OnAction()
                    begin
                        Rec.CreateBillingProposal();
                    end;
                }
                action(Dimensions)
                {
                    AccessByPermission = tabledata Dimension = R;
                    ApplicationArea = Dimensions;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    ShortcutKey = 'Alt+D';
                    ToolTip = 'View or edit dimensions, such as area, project, or department, that you can assign to sales and purchase documents to distribute costs and analyze transaction history.';

                    trigger OnAction()
                    begin
                        Rec.ShowDocDim();
                    end;
                }
                action("Vendor Contract Deferrals")
                {
                    Caption = 'Vendor Subscription Contract Deferrals';
                    ToolTip = 'Vendor Subscription Contract Deferrals.';
                    Image = LedgerEntries;
                    ShortcutKey = 'Ctrl+F7';
                    RunObject = page "Vendor Contract Deferrals";
                    RunPageView = sorting("Subscription Contract No.");
                    RunPageLink = "Subscription Contract No." = field("No.");

                }
                action(UpdateDimensionsInDeferrals)
                {
                    Caption = 'Update Dimensions in Deferrals';
                    ToolTip = 'Updates the dimensions in all contract deferrals that have not yet been released for this contract.';
                    Image = ChangeDimensions;
                    Enabled = UpdateDimensionsInDeferralsEnabled;
                    trigger OnAction()
                    begin
                        Rec.UpdateDimensionsInDeferrals();
                    end;
                }
            }
        }
        area(Promoted)
        {
            group(Category_Process)
            {
                Caption = 'Process';

                actionref(CreateContractInvoice_Promoted; CreateContractInvoice)
                {
                }
            }
            group(Category_Category5)
            {
                Caption = 'Contract';

                actionref(Dimensions_Promoted; Dimensions)
                {
                }
                actionref("Vendor Contract Deferrals_Promoted"; "Vendor Contract Deferrals")
                {
                }
                actionref(UpdateDimensionsInDeferrals_Promoted; UpdateDimensionsInDeferrals)
                {
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        DescriptionText := Rec.GetDescription();
        UpdateDimensionsInDeferralsEnabled := Rec.NotReleasedVendorContractDeferralsExists();
    end;

    trigger OnOpenPage()
    begin
        Rec.CopyBuyFromVendorFilter();
        Rec.SetRange(Active, true);
    end;

    internal procedure GetVendorContractSelection() FilterText: Text
    var
        VendorContract: Record "Vendor Subscription Contract";
        FilterTextBuilder: TextBuilder;
    begin
        CurrPage.SetSelectionFilter(VendorContract);
        if VendorContract.FindSet() then
            repeat
                FilterTextBuilder.Append(VendorContract."No.");
                FilterTextBuilder.Append('|');
            until VendorContract.Next() = 0;
        FilterText := FilterTextBuilder.ToText().TrimEnd('|');
    end;

    var
        DescriptionText: Text;
        UpdateDimensionsInDeferralsEnabled: Boolean;
}