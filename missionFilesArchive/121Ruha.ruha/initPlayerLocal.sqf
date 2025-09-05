if (!hasInterface) exitWith {};

waitUntil {!isNull player};

player createDiarySubject ["121","121 Quick-Reference"];

player createDiaryRecord ["121", ["Artillery Call-In", "
<font size='16'>
1: 8-Digit Grid Coordinate
<br/>
2: Type of Rounds
<br/>
3: Number of Rounds
"]];

player createDiaryRecord ["121", ["CAS Picture", "
<font size='16'>
1: Friendly Composition
<br/>
2: Friendly Positions
<br/>
3: Enemy Composition
<br/>
4: Enemy Positions
<br/>
5: Tactical Requests</font>
"]];

player createDiaryRecord ["121", ["CAS Check-In", "
<font size='16'>
1: Number and Type of Aircraft
<br/>
2: Callsigns of Aircraft(s) Respectively
<br/>
3: Position and Altitude from Bullseye
<br/>
4: Collective Ordanance Possessed
<br/>
5: Playtime (Remaining Fuel in Minutes)</font>
"]];

player createDiaryRecord ["121", ["CAS 5-Line", "
<font size='16'>
1: 6-Digit Grid Coordinates
<br/>
2: Calling Unit and Requested TAD #
<br/>
3: Requested Asset
<br/>
4: CAS Type
<br/>
5: Marking
<br/>
	Sierra: Smoke
<br/>
	Lima: Lasso
<br/>
	Victor: Visual (Panel)</font>
"]];

player createDiaryRecord ["121", ["Cargo 5-Line", "
<font size='16'>
1: 6-Digit Grid Coordinates
<br/>
<br/>
2: Calling Unit and Requested Lift #
<br/>
<br/>
3: Cargo
<br/>
	Cargo/Vehicles by number
<br/>
	Lima for list sent through cTab
<br/>
<br/>
4: Security
<br/>
	November: No Enemy
<br/>
	Papa: Possible Enemy
<br/>
	Charlie: Confirmed Enemy
<br/>
	Echo: Escorts Required
<br/>
<br/>
5: Marking
<br/>
	Sierra: Smoke
<br/>
	Lima: Lasso
<br/>
	Victor: Visual (Panel)</font>
"]];

player createDiaryRecord ["121", ["Medevac 5-Line", "
<font size='16'>
1: 6-Digit Grid Coordinates
<br/>
<br/>
2: Calling Unit and Requested Med #
<br/>
<br/>
3: # of Patients by type
<br/>
	As # Lima for Litter
<br/>
	As # Alpha for Ambulatory
<br/>
	As # Delta for Deceased
<br/>
<br/>
4: Security
<br/>
	November: No Enemy
<br/>
	Papa: Possible Enemy
<br/>
	Charlie: Confirmed Enemy
<br/>
	Echo: Escorts Required
<br/>
<br/>
5: Marking
<br/>
	Sierra: Smoke
<br/>
	Lima: Lasso
<br/>
	Victor: Visual (Panel)</font>
"]];

player createDiaryRecord ["121", ["Transport 5-Line", "
<font size='16'>
1: 6-Digit Grid Coordinates
<br/>
<br/>
2: Calling Unit and Requested Lift #
<br/>
<br/>
3: # of Personal
<br/>
As # Papa
<br/>
<br/>
4: Security
<br/>
	November: No Enemy
<br/>
	Papa: Possible Enemy
<br/>
	Charlie: Confirmed Enemy
<br/>
	Echo: Escorts Required
<br/>
<br/>
5: Marking
<br/>
	Sierra: Smoke
<br/>
	Lima: Lasso
<br/>
	Victor: Visual (Panel)</font>
"]];

player createDiaryRecord ["121", ["Callsigns", "
<font size='16'>
Zeus/Command: Omega X-Ray
<br/>
Air Command: Outlaw X-Ray
<br/>
Support Command: Dragon X-Ray
<br/>
Rangers: Punisher
<br/>
SF: Jager
<br/>
CAG: Demon
<br/>
OGA: Castle
<br/>
PJ: Guardian
<br/>
MH-60 (Transport): Whiskey
<br/>
MH-60 (CAS): Whiskey Heavy
<br/>
HH-60 (Medical): Pedro
<br/>
MH-60S (JATF): Magic
<br/>
MH-6: Ferrari
<br/>
AH-6: Tweety
<br/>
CH-47: Frieght Train
<br/>
AH-64D: Gunslinger
<br/>
C-130: Eagle
<br/>
C-17: Beeliner
<br/>
A-10: Hawg
<br/>
F/A-18: Widow
<br/>
F-16: Gambler
<br/>
AV-8B: Dog
<br/>
AC-130U: Spooky
<br/>
Paladin: Oden
<br/>
Howitzer: Long Gun
<br/>
MLRS: Steel Rain
<br/>
MQ-12 Falcon: Falcon
<br/>
MQ-9 Reaper: Grim
<br/>
Mk45: Thor
<br/>
Mk21 CM: Viper
<br/>
UGV Stomper: Crusader
<br/>
AH6-ULB: Uber</font>
"]];

player createDiaryRecord ["121", ["Frequencies", "
<font size='16'>
50: Air Command
<br/>
51: Lift 1
<br/>
52: Lift 2
<br/>
53: Life 3
<br/>
54: Med 1
<br/>
55: Med 2
<br/>
56: Med 3
<br/>
57: TAD 1
<br/>
58: TAD 2
<br/>
59: TAD 3
<br/>
60: Command
<br/>
70: Support
<br/>
71: Support 1
<br/>
72: Support 2
<br/>
73: Support 3</font>
"]];