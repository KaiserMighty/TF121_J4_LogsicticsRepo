if (!hasInterface) exitWith {};

waitUntil {!isNull player};

player createDiarySubject ["121","121 Quick-Reference"];

player createDiaryRecord ["121", ["Artillery Sheaf Types", "
<font size='16'>
A: Line
<br/>
	Direction (Degrees)
<br/>
	Distance (Meters)
<br/>
<br/>
B: Circle
<br/>
	Radius (Meters)
<br/>
<br/>
C: Square
<br/>
	X-Axis (Meters)
<br/>
	Y-Axis (Meters)
<br/>
	Direction (Degrees)
"]];

player createDiaryRecord ["121", ["Artillery Fire for Effect", "
<font size='16'>
1: Number of Rounds
<br/>
<br/>
2: Fuze Type (Impact/Airburst/Mixed)
<br/>
<br/>
3: Sheaf (Point/Circle/Square/Line)
"]];

player createDiaryRecord ["121", ["Artillery Adjust Fire", "
<font size='16'>
1: Left/Right (Meters)
<br/>
<br/>
2: Add/Drop (Meters)
"]];

player createDiaryRecord ["121", ["Artillery Call of Fire", "
<font size='16'>
1: Gun Type
<br/>
<br/>
2: Round Type
<br/>
<br/>
3: Observer Grid
<br/>
<br/>
4: Direction (Degrees)
<br/>
<br/>
5: Distance (Meters)
"]];

player createDiaryRecord ["121", ["Keyhole Directions", "
<font size='16'>
A: North
<br/>
<br/>
B: East
<br/>
<br/>
C: South
<br/>
<br/>
D: West
<br/>
<br/>
E: Overhead
"]];

player createDiaryRecord ["121", ["CAS Strike 5-Line", "
<font size='16'>
1: Warning Order
<br/>
<br/>
2: Friendly Positions/Mark
<br/>
<br/>
3: Target Location
<br/>
<br/>
4: Target Description/Mark
<br/>
<br/>
5: Remarks/Restrictions
"]];

player createDiaryRecord ["121", ["CAS Strike 9-Line", "
<font size='16'>
1: IP/BP
<br/>
<br/>
2: Heading/Offset to Target
<br/>
<br/>
3: Distance to Target
<br/>
<br/>
4: Target Elevation
<br/>
<br/>
5: Target Description
<br/>
<br/>
6: Target Grid
<br/>
<br/>
7: Mark Type
<br/>
<br/>
8: Closest Friendly Positions/Mark from Target
<br/>
<br/>
9: Egress
"]];

player createDiaryRecord ["121", ["CAS Check-In", "
<font size='16'>
1: Number and Type of Aircraft
<br/>
<br/>
2: Callsign(s)
<br/>
<br/>
3: Position and Altitude
<br/>
<br/>
4: Total Ordnance Onboard
<br/>
<br/>
5: Playtime
"]];

player createDiaryRecord ["121", ["CAS Request 5-Line", "
<font size='16'>
1: 6-Digit Grid
<br/>
<br/>
2: Calling Unit
<br/>
<br/>
3: Requested Asset
<br/>
<br/>
4: Anti-Air Threat
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
5: Requested Loadout
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

player createDiaryRecord ["121", ["MEDEVAC 5-Line", "
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