namespace Microsoft.Sustainability.Setup;

using Microsoft.Finance.GeneralLedger.Setup;
using Microsoft.Foundation.UOM;
using Microsoft.Utilities;
using System.Utilities;

table 6217 "Sustainability Setup"
{
    Caption = 'Sustainability Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Emission Unit of Measure Code"; Code[10])
        {
            Caption = 'Emission Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(3; "Emission Reporting UOM Code"; Code[10])
        {
            Caption = 'Emission Reporting Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(4; "Reporting UOM Factor"; Decimal)
        {
            InitValue = 1;
            Caption = 'Reporting UOM Factor';
            DecimalPlaces = 0 : 10;
        }
        field(5; "Emission Decimal Places"; Text[5])
        {
            Caption = 'Emission Decimal Places';
            InitValue = '2:5';
            trigger OnValidate()
            begin
                GLSetup.CheckDecimalPlacesFormat("Emission Decimal Places");
            end;
        }
        field(6; "Emission Rounding Precision"; Decimal)
        {
            Caption = 'Emission Rounding Precision';
            DecimalPlaces = 0 : 10;
            InitValue = 0.01;
            NotBlank = true;
            MinValue = 0;
        }
        field(7; "Emission Rounding Type"; Enum "Rounding Type")
        {
            Caption = 'Emission Rounding Type';
        }
        field(8; "Fuel/El. Decimal Places"; Text[5])
        {
            Caption = 'Fuel/Electricity Decimal Places';
            InitValue = '2:5';
            trigger OnValidate()
            begin
                GLSetup.CheckDecimalPlacesFormat("Fuel/El. Decimal Places");
            end;
        }
        field(9; "Distance Decimal Places"; Text[5])
        {
            Caption = 'Distance Decimal Places';
            InitValue = '2:5';
            trigger OnValidate()
            begin
                GLSetup.CheckDecimalPlacesFormat("Distance Decimal Places");
            end;
        }
        field(10; "Custom Amt. Decimal Places"; Text[5])
        {
            Caption = 'Custom Amount Decimal Places';
            InitValue = '2:5';
            trigger OnValidate()
            begin
                GLSetup.CheckDecimalPlacesFormat("Custom Amt. Decimal Places");
            end;
        }
        field(11; "CSRD Reporting Link"; Text[250])
        {
            Caption = 'CSRD Reporting Link';
        }
        field(12; "Country/Region Mandatory"; Boolean)
        {
            Caption = 'Country/Region Mandatory';
        }
        field(13; "Resp. Center Mandatory"; Boolean)
        {
            Caption = 'Responsibility Center Mandatory';
        }
        field(14; "Block Change If Entry Exists"; Boolean)
        {
            Caption = 'Block Calculation Foundation Change If Ledger Entries Exist';
            InitValue = true;
        }
        field(15; "Enable Background Error Check"; Boolean)
        {
            Caption = 'Enable Background Error Check';
            InitValue = true;
        }
        field(16; "Use Emissions In Purch. Doc."; Boolean)
        {
            Caption = 'Use Emissions In Purchase Documents';
        }
        field(17; "Waste Unit of Measure Code"; Code[10])
        {
            Caption = 'Waste Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(18; "Water Unit of Measure Code"; Code[10])
        {
            Caption = 'Water Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(19; "Disch. Into Water Unit of Meas"; Code[10])
        {
            Caption = 'Discharged Into Water Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(20; "G/L Account Emissions"; Boolean)
        {
            Caption = 'G/L Account Emissions';
        }
        field(21; "Item Emissions"; Boolean)
        {
            Caption = 'Item Emissions';
        }
        field(22; "Item Charge Emissions"; Boolean)
        {
            Caption = 'Item Charge Emissions';
            Editable = false;
        }
        field(23; "Resource Emissions"; Boolean)
        {
            Caption = 'Resource Emissions';
        }
        field(24; "Work/Machine Center Emissions"; Boolean)
        {
            Caption = 'Work/Machine Center Emissions';
        }
        field(25; "Enable Value Chain Tracking"; Boolean)
        {
            Caption = 'Enable Value Chain Tracking';

            trigger OnValidate()
            begin
                if Rec."Enable Value Chain Tracking" then
                    if not ConfirmManagement.GetResponseOrDefault(ConfirmEnableValueChainTrackingQst, false) then
                        Error('');

                EnableEmissionsWhenValueChainTrackingIsEnabled();
            end;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    var
        GLSetup: Record "General Ledger Setup";
        SustainabilitySetup: Record "Sustainability Setup";
        ConfirmManagement: Codeunit "Confirm Management";
        SustainabilitySetupRetrieved: Boolean;
        RecordHasBeenRead: Boolean;
        AutoFormatExprLbl: Label '<Precision,%1><Standard Format,0>', Locked = true;
        ConfirmEnableValueChainTrackingQst: Label 'Value Chain Tracking feature is currently in preview. We strongly recommend that you first enable and test this feature on a sandbox environment that has a copy of production data before doing this on a production environment.\\Are you sure you want to enable this feature?';

    procedure GetRecordOnce()
    begin
        if RecordHasBeenRead then
            exit;
        Get();
        RecordHasBeenRead := true;
    end;

    procedure IsValueChainTrackingEnabled(): Boolean
    begin
        SetLoadFields("Enable Value Chain Tracking");
        GetRecordOnce();

        exit("Enable Value Chain Tracking");
    end;

    local procedure EnableEmissionsWhenValueChainTrackingIsEnabled()
    begin
        if not Rec."Enable Value Chain Tracking" then
            exit;

        Rec.Validate("Use Emissions In Purch. Doc.", true);
        Rec.Validate("Item Emissions", true);
        Rec.Validate("Resource Emissions", true);
        Rec.Validate("Work/Machine Center Emissions", true);
    end;

    internal procedure GetFormat(FieldNo: Integer): Text
    begin
        GetSustainabilitySetup();

        case FieldNo of
            SustainabilitySetup.FieldNo("Fuel/El. Decimal Places"):
                exit(StrSubstNo(AutoFormatExprLbl, SustainabilitySetup."Fuel/El. Decimal Places"));
            SustainabilitySetup.FieldNo("Distance Decimal Places"):
                exit(StrSubstNo(AutoFormatExprLbl, SustainabilitySetup."Distance Decimal Places"));
            SustainabilitySetup.FieldNo("Custom Amt. Decimal Places"):
                exit(StrSubstNo(AutoFormatExprLbl, SustainabilitySetup."Custom Amt. Decimal Places"));
            SustainabilitySetup.FieldNo("Emission Decimal Places"):
                exit(StrSubstNo(AutoFormatExprLbl, SustainabilitySetup."Emission Decimal Places"));
        end;
    end;

    internal procedure GetReportingParameters(var UOMCode: Code[10]; var UseUOMReportingFactor: Boolean; var UOMFactor: Decimal; var Direction: Text; var Precision: Decimal)
    begin
        GetSustainabilitySetup();

        if SustainabilitySetup."Emission Reporting UOM Code" <> '' then begin
            UOMCode := SustainabilitySetup."Emission Reporting UOM Code";
            case SustainabilitySetup."Emission Rounding Type" of
                SustainabilitySetup."Emission Rounding Type"::Down:
                    Direction := '<';
                SustainabilitySetup."Emission Rounding Type"::Nearest:
                    Direction := '=';
                SustainabilitySetup."Emission Rounding Type"::Up:
                    Direction := '>';
            end;
            UseUOMReportingFactor := true;
            UOMFactor := SustainabilitySetup."Reporting UOM Factor";
            Precision := SustainabilitySetup."Emission Rounding Precision";
        end else begin
            UOMCode := SustainabilitySetup."Emission Unit of Measure Code";
            UseUOMReportingFactor := false;
        end;
    end;

    local procedure GetSustainabilitySetup()
    begin
        if not SustainabilitySetupRetrieved then begin
            SustainabilitySetup.Get();
            SustainabilitySetupRetrieved := true;
        end;
    end;

    [InherentPermissions(PermissionObjectType::TableData, Database::"Sustainability Setup", 'I')]
    internal procedure InitRecord()
    begin
        if not Get() then
            Insert();
    end;
}