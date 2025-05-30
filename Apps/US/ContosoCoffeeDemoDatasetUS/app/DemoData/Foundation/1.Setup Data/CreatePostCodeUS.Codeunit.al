// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// ------------------------------------------------------------------------------------------------

namespace Microsoft.DemoData.Foundation;

codeunit 11493 "Create Post Code US"
{
    InherentEntitlements = X;
    InherentPermissions = X;


    trigger OnRun()
    var
        CreatePostCode: codeunit "Create Post Code";
    begin
        CreatePostCode.InsertData('10019', 'New York', 'NEW YORK', 'US', 'NY', '');
        CreatePostCode.InsertData('10022', 'New York', 'NEW YORK', 'US', 'NY', '');
        CreatePostCode.InsertData('10601', 'New York', 'NEW YORK', 'US', 'NY', '');
        CreatePostCode.InsertData('11010', 'New York', 'NEW YORK', 'US', 'NY', '');
        CreatePostCode.InsertData('11746', 'New York', 'NEW YORK', 'US', 'NY', '');
        CreatePostCode.InsertData('13204', 'New York', 'NEW YORK', 'US', 'NY', '');
        CreatePostCode.InsertData('27136', 'Colombia', 'COLOMBIA', 'US', 'SC', '');
        CreatePostCode.InsertData('31772', 'Atlanta', 'ATLANTA', 'US', 'GA', '');
        CreatePostCode.InsertData('35242', 'Birmingham', 'BIRMINGHAM', 'US', 'AL', '');
        CreatePostCode.InsertData('37125', 'Miami', 'MIAMI', 'US', 'FL', '');
        CreatePostCode.InsertData('60611', 'Chicago', 'CHICAGO', 'US', 'IL', '');
        CreatePostCode.InsertData('61236', 'Chicago', 'CHICAGO', 'US', 'IL', '');
        CreatePostCode.InsertData('7728', 'New Jersey', 'NEW JERSEY', 'US', 'NJ', '');
        CreatePostCode.InsertData('8807', 'New Jersey', 'NEW JERSEY', 'US', 'NJ', '');
        CreatePostCode.InsertData('97223', 'Portland', 'PORTLAND', 'US', 'OR', '');
        CreatePostCode.InsertData('GB-B27 4KT', 'Birmingham', 'BIRMINGHAM', 'GB', '', '');
        CreatePostCode.InsertData('GB-B31 2AL', 'Birmingham', 'BIRMINGHAM', 'GB', '', '');
        CreatePostCode.InsertData('GB-B32 4TF', 'Sparkhill, Birmingham', 'SPARKHILL, BIRMINGHAM', 'GB', '', '');
        CreatePostCode.InsertData('GB-B68 5TT', 'Bromsgrove', 'BROMSGROVE', 'GB', '', '');
        CreatePostCode.InsertData('GB-BA24 6KS', 'Bath', 'BATH', 'GB', '', '');
        CreatePostCode.InsertData('GB-BR1 2ES', 'Bromley', 'BROMLEY', 'GB', '', '');
        CreatePostCode.InsertData('GB-BS3 6KL', 'Bristol', 'BRISTOL', 'GB', '', '');
        CreatePostCode.InsertData('GB-CB3 7GG', 'Cambridge', 'CAMBRIDGE', 'GB', '', '');
        CreatePostCode.InsertData('GB-CF22 1XU', 'Cardiff', 'CARDIFF', 'GB', '', '');
        CreatePostCode.InsertData('GB-CT6 21ND', 'Hythe', 'HYTHE', 'GB', '', '');
        CreatePostCode.InsertData('GB-CV6 1GY', 'Coventry', 'COVENTRY', 'GB', '', '');
        CreatePostCode.InsertData('GB-DA5 3EF', 'Sidcup', 'SIDCUP', 'GB', '', '');
        CreatePostCode.InsertData('GB-DY5 4DJ', 'Dudley', 'DUDLEY', 'GB', '', '');
        CreatePostCode.InsertData('GB-E12 5TG', 'Edinburgh', 'EDINBURGH', 'GB', '', '');
        CreatePostCode.InsertData('GB-EH16 8JS', 'Edinburgh', 'EDINBURGH', 'GB', '', '');
        CreatePostCode.InsertData('GB-GL1 9HM', 'Gloucester', 'GLOUCESTER', 'GB', '', '');
        CreatePostCode.InsertData('GB-GL78 5TT', 'Cheltenham', 'CHELTENHAM', 'GB', '', '');
        CreatePostCode.InsertData('GB-GU3 2SE', 'Guildford', 'GUILDFORD', 'GB', '', '');
        CreatePostCode.InsertData('GB-GU7 5GT', 'Guildford', 'GUILDFORD', 'GB', '', '');
        CreatePostCode.InsertData('GB-HG1 7YW', 'Ripon', 'RIPON', 'GB', '', '');
        CreatePostCode.InsertData('GB-HP43 2AY', 'Tring', 'TRING', 'GB', '', '');
        CreatePostCode.InsertData('GB-IB7 7VN', 'Gainsborough', 'GAINSBOROUGH', 'GB', '', '');
        CreatePostCode.InsertData('GB-L18 6SA', 'Liverpool', 'LIVERPOOL', 'GB', '', '');
        CreatePostCode.InsertData('GB-LE16 7YH', 'Leicester', 'LEICESTER', 'GB', '', '');
        CreatePostCode.InsertData('GB-LL6 5GB', 'Rhyl', 'RHYL', 'GB', '', '');
        CreatePostCode.InsertData('GB-LN23 6GS', 'Lincoln', 'LINCOLN', 'GB', '', '');
        CreatePostCode.InsertData('GB-LU3 4FY', 'Luton', 'LUTON', 'GB', '', '');
        CreatePostCode.InsertData('GB-M61 2YG', 'Manchester', 'MANCHESTER', 'GB', '', '');
        CreatePostCode.InsertData('GB-ME5 6RL', 'Maidstone', 'MAIDSTONE', 'GB', '', '');
        CreatePostCode.InsertData('GB-MK21 7GG', 'Bletchley', 'BLETCHLEY', 'GB', '', '');
        CreatePostCode.InsertData('GB-MK41 5AE', 'Bedford', 'BEDFORD', 'GB', '', '');
        CreatePostCode.InsertData('GB-MO2 4RT', 'Manchester', 'MANCHESTER', 'GB', '', '');
        CreatePostCode.InsertData('GB-N12 5XY', 'London', 'LONDON', 'GB', '', '');
        CreatePostCode.InsertData('GB-N16 34Z', 'London', 'LONDON', 'GB', '', '');
        CreatePostCode.InsertData('GB-NE21 3YG', 'Newcastle', 'NEWCASTLE', 'GB', '', '');
        CreatePostCode.InsertData('GB-NP5 6GH', 'Newport', 'NEWPORT', 'GB', '', '');
        CreatePostCode.InsertData('GB-OX16 0UA', 'Cheddington', 'CHEDDINGTON', 'GB', '', '');
        CreatePostCode.InsertData('GB-PE17 4RN', 'Cambridge', 'CAMBRIDGE', 'GB', '', '');
        CreatePostCode.InsertData('GB-PE21 3TG', 'Peterborough', 'PETERBOROUGH', 'GB', '', '');
        CreatePostCode.InsertData('GB-PE23 5IK', 'Kings Lynn', 'KINGS LYNN', 'GB', '', '');
        CreatePostCode.InsertData('GB-PL14 5GB', 'Plymouth', 'PLYMOUTH', 'GB', '', '');
        CreatePostCode.InsertData('GB-PO21 6HG', 'Southsea, Portsmouth', 'SOUTHSEA, PORTSMOUTH', 'GB', '', '');
        CreatePostCode.InsertData('GB-PO7 2HI', 'Portsmouth', 'PORTSMOUTH', 'GB', '', '');
        CreatePostCode.InsertData('GB-SA1 2HS', 'Swansea', 'SWANSEA', 'GB', '', '');
        CreatePostCode.InsertData('GB-SA3 7HI', 'Stratford', 'STRATFORD', 'GB', '', '');
        CreatePostCode.InsertData('GB-SK21 5DL', 'Macclesfield', 'MACCLESFIELD', 'GB', '', '');
        CreatePostCode.InsertData('GB-TA3 4FD', 'Newquay', 'NEWQUAY', 'GB', '', '');
        CreatePostCode.InsertData('GB-TN27 6YD', 'Ashford', 'ASHFORD', 'GB', '', '');
        CreatePostCode.InsertData('GB-TQ17 8HB', 'Brixham', 'BRIXHAM', 'GB', '', '');
        CreatePostCode.InsertData('GB-W1 3AL', 'London', 'LONDON', 'GB', '', '');
        CreatePostCode.InsertData('GB-W2 8HG', 'London', 'LONDON', 'GB', '', '');
        CreatePostCode.InsertData('GB-WC1 2GS', 'West End Lane', 'WEST END LANE', 'GB', '', '');
        CreatePostCode.InsertData('GB-WC1 3DG', 'London', 'LONDON', 'GB', '', '');
        CreatePostCode.InsertData('GB-WD1 6YG', 'Watford', 'WATFORD', 'GB', '', '');
        CreatePostCode.InsertData('GB-WD2 4RG', 'Watford', 'WATFORD', 'GB', '', '');
        CreatePostCode.InsertData('GB-WD6 8UY', 'Borehamwood', 'BOREHAMWOOD', 'GB', '', '');
        CreatePostCode.InsertData('GB-WD6 9HY', 'Borehamwood', 'BOREHAMWOOD', 'GB', '', '');
        CreatePostCode.InsertData('L6J 3J3', 'Oakville', 'OAKVILLE', 'CA', 'ON', '');
        CreatePostCode.InsertData('M5E 1G5', 'Toronto', 'TORONTO', 'CA', 'ON', '');
        CreatePostCode.InsertData('N6B 1V7', 'London', 'LONDON', 'CA', 'ON', '');
        CreatePostCode.InsertData('P7A 4K8', 'Thunder Bay', 'THUNDER BAY', 'CA', 'ON', '');
        CreatePostCode.InsertData('P7B 5E2', 'Thunder Bay', 'THUNDER BAY', 'CA', 'ON', '');
        CreatePostCode.InsertData('R0M 0N0', 'Elkhorn', 'ELKHORN', 'CA', 'MB', '');
    end;
}
