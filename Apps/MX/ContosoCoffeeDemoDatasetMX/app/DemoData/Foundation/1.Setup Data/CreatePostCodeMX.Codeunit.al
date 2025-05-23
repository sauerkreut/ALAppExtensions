// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace Microsoft.DemoData.Foundation;

using Microsoft.DemoTool.Helpers;

codeunit 14096 "Create Post Code MX"
{
    InherentEntitlements = X;
    InherentPermissions = X;

    trigger OnRun()
    var
        ContosoPostCodeMX: Codeunit "Contoso Post Code MX";
        CreateCountryRegion: Codeunit "Create Country/Region";
    begin
        ContosoPostCodeMX.InsertPostCode('01030', MexicoCityLbl, CreateCountryRegion.MX(), '');
        ContosoPostCodeMX.InsertPostCode('06000', MexicoCityLbl, CreateCountryRegion.MX(), '');
        ContosoPostCodeMX.InsertPostCode('11010', NewYorkLbl, CreateCountryRegion.US(), NYLbl);
        ContosoPostCodeMX.InsertPostCode('27136', ColombiaLbl, CreateCountryRegion.US(), SCLbl);
        ContosoPostCodeMX.InsertPostCode('31772', AtlantaLbl, CreateCountryRegion.US(), GALbl);
        ContosoPostCodeMX.InsertPostCode('35242', BirminghamLbl, CreateCountryRegion.US(), ALLbl);
        ContosoPostCodeMX.InsertPostCode('37125', MiamiLbl, CreateCountryRegion.US(), FLLbl);
        ContosoPostCodeMX.InsertPostCode('37500', LeonLbl, CreateCountryRegion.MX(), '');
        ContosoPostCodeMX.InsertPostCode('61236', ChicagoLbl, CreateCountryRegion.US(), ILLbl);
        ContosoPostCodeMX.InsertPostCode('64640', MonterreyLbl, CreateCountryRegion.MX(), '');
        ContosoPostCodeMX.InsertPostCode('78030', SanLuisPotosiLbl, CreateCountryRegion.MX(), '');
        ContosoPostCodeMX.InsertPostCode('82100', MazatlanLbl, CreateCountryRegion.MX(), '');
        ContosoPostCodeMX.InsertPostCode('GB-B27 4KT', BirminghamLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-B31 2AL', BirminghamLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-B32 4TF', SparkhillBirminghamLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-B68 5TT', BromsgroveLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-BA24 6KS', BathLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-BR1 2ES', BromleyLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-BS3 6KL', BristolLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-CB3 7GG', CambridgeLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-CF22 1XU', CardiffLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-CT6 21ND', HytheLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-CV6 1GY', CoventryLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-DA5 3EF', SidcupLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-DY5 4DJ', DudleyLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-E12 5TG', EdinburghLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-EH16 8JS', EdinburghLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-GL1 9HM', GloucesterLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-GL78 5TT', CheltenhamLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-GU3 2SE', GuildfordLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-GU7 5GT', GuildfordLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-HG1 7YW', RiponLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-HP43 2AY', TringLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-IB7 7VN', GainsboroughLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-L18 6SA', LiverpoolLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-LE16 7YH', LeicesterLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-LL6 5GB', RhylLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-LN23 6GS', LincolnLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-LU3 4FY', LutonLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-M61 2YG', ManchesterLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-ME5 6RL', MaidstoneLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-MK21 7GG', BletchleyLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-MK41 5AE', BedfordLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-MO2 4RT', ManchesterLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-N12 5XY', LondonLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-N16 34Z', LondonLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-NE21 3YG', NewcastleLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-NP5 6GH', NewportLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-OX16 0UA', CheddingtonLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-PE17 4RN', CambridgeLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-PE21 3TG', PeterboroughLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-PE23 5IK', KingsLynnLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-PL14 5GB', PlymouthLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-PO21 6HG', SouthseaPortsmouthLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-PO7 2HI', PortsmouthLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-SA1 2HS', SwanseaLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-SA3 7HI', StratfordLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-SK21 5DL', MacclesfieldLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-TA3 4FD', NewquayLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-TN27 6YD', AshfordLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-TQ17 8HB', BrixhamLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-W1 3AL', LondonLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-W2 8HG', LondonLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-WC1 2GS', WestEndLaneLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-WC1 3DG', LondonLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-WD1 6YG', WatfordLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-WD2 4RG', WatfordLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-WD6 8UY', BorehamwoodLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('GB-WD6 9HY', BorehamwoodLbl, CreateCountryRegion.GB(), '');
        ContosoPostCodeMX.InsertPostCode('L6J 3J3', OakvilleLbl, CreateCountryRegion.CA(), ONLbl);
        ContosoPostCodeMX.InsertPostCode('M5E 1G5', TorontoLbl, CreateCountryRegion.CA(), ONLbl);
        ContosoPostCodeMX.InsertPostCode('N6B 1V7', LondonLbl, CreateCountryRegion.CA(), ONLbl);
        ContosoPostCodeMX.InsertPostCode('P7A 4K8', ThunderBayLbl, CreateCountryRegion.CA(), ONLbl);
        ContosoPostCodeMX.InsertPostCode('P7B 5E2', ThunderBayLbl, CreateCountryRegion.CA(), ONLbl);
        ContosoPostCodeMX.InsertPostCode('R0M 0N0', ElkhornLbl, CreateCountryRegion.CA(), MBLbl);
    end;

    var
        MexicoCityLbl: Label 'Mexico City', MaxLength = 30;
        NewYorkLbl: Label 'New York', MaxLength = 30;
        ColombiaLbl: Label 'Colombia', MaxLength = 30;
        AtlantaLbl: Label 'Atlanta', MaxLength = 30;
        BirminghamLbl: Label 'Birmingham', MaxLength = 30;
        MiamiLbl: Label 'Miami', MaxLength = 30;
        LeonLbl: Label 'Leon', MaxLength = 30;
        ChicagoLbl: Label 'Chicago', MaxLength = 30;
        MonterreyLbl: Label 'Monterrey', MaxLength = 30;
        SanLuisPotosiLbl: Label 'San Luis Potosi', MaxLength = 30;
        MazatlanLbl: Label 'Mazatlan', MaxLength = 30;
        SparkhillBirminghamLbl: Label 'Sparkhill, Birmingham', MaxLength = 30;
        BromsgroveLbl: Label 'Bromsgrove', MaxLength = 30;
        BathLbl: Label 'Bath', MaxLength = 30;
        BromleyLbl: Label 'Bromley', MaxLength = 30;
        BristolLbl: Label 'Bristol', MaxLength = 30;
        CambridgeLbl: Label 'Cambridge', MaxLength = 30;
        CardiffLbl: Label 'Cardiff', MaxLength = 30;
        HytheLbl: Label 'Hythe', MaxLength = 30;
        CoventryLbl: Label 'Coventry', MaxLength = 30;
        SidcupLbl: Label 'Sidcup', MaxLength = 30;
        DudleyLbl: Label 'Dudley', MaxLength = 30;
        EdinburghLbl: Label 'Edinburgh', MaxLength = 30;
        GloucesterLbl: Label 'Gloucester', MaxLength = 30;
        CheltenhamLbl: Label 'Cheltenham', MaxLength = 30;
        GuildfordLbl: Label 'Guildford', MaxLength = 30;
        RiponLbl: Label 'Ripon', MaxLength = 30;
        TringLbl: Label 'Tring', MaxLength = 30;
        GainsboroughLbl: Label 'Gainsborough', MaxLength = 30;
        LiverpoolLbl: Label 'Liverpool', MaxLength = 30;
        LeicesterLbl: Label 'Leicester', MaxLength = 30;
        RhylLbl: Label 'Rhyl', MaxLength = 30;
        LincolnLbl: Label 'Lincoln', MaxLength = 30;
        LutonLbl: Label 'Luton', MaxLength = 30;
        ManchesterLbl: Label 'Manchester', MaxLength = 30;
        MaidstoneLbl: Label 'Maidstone', MaxLength = 30;
        BletchleyLbl: Label 'Bletchley', MaxLength = 30;
        BedfordLbl: Label 'Bedford', MaxLength = 30;
        LondonLbl: Label 'London', MaxLength = 30;
        NewcastleLbl: Label 'Newcastle', MaxLength = 30;
        NewportLbl: Label 'Newport', MaxLength = 30;
        CheddingtonLbl: Label 'Cheddington', MaxLength = 30;
        PeterboroughLbl: Label 'Peterborough', MaxLength = 30;
        KingsLynnLbl: Label 'Kings Lynn', MaxLength = 30;
        PlymouthLbl: Label 'Plymouth', MaxLength = 30;
        SouthseaPortsmouthLbl: Label 'Southsea, Portsmouth', MaxLength = 30;
        PortsmouthLbl: Label 'Portsmouth', MaxLength = 30;
        SwanseaLbl: Label 'Swansea', MaxLength = 30;
        StratfordLbl: Label 'Stratford', MaxLength = 30;
        MacclesfieldLbl: Label 'Macclesfield', MaxLength = 30;
        NewquayLbl: Label 'Newquay', MaxLength = 30;
        AshfordLbl: Label 'Ashford', MaxLength = 30;
        BrixhamLbl: Label 'Brixham', MaxLength = 30;
        WestEndLaneLbl: Label 'West End Lane', MaxLength = 30;
        WatfordLbl: Label 'Watford', MaxLength = 30;
        BorehamwoodLbl: Label 'Borehamwood', MaxLength = 30;
        OakvilleLbl: Label 'Oakville', MaxLength = 30;
        TorontoLbl: Label 'Toronto', MaxLength = 30;
        ThunderBayLbl: Label 'Thunder Bay', MaxLength = 30;
        ElkhornLbl: Label 'Elkhorn', MaxLength = 30;
        NYLbl: Label 'NY', MaxLength = 30;
        SCLbl: Label 'SC', MaxLength = 30;
        GALbl: Label 'GA', MaxLength = 30;
        ALLbl: Label 'AL', MaxLength = 30;
        FLLbl: Label 'FL', MaxLength = 30;
        ILLbl: Label 'IL', MaxLength = 30;
        ONLbl: Label 'ON', MaxLength = 30;
        MBLbl: Label 'MB', MaxLength = 30;
}
