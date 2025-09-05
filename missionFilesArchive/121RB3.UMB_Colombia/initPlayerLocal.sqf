if (!hasInterface) exitWith {};

waitUntil {!isNull player};

player createDiarySubject ["121","121 Quick-Reference"];

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

player createDiaryRecord ["121", ["CAS Strike/Keyhole 5-Line", "
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


// Add player persistence
_playerData = profileNameSpace getVariable format ["Player_Data_%1_%2", missionName, worldName];

_loadout = _playerData select 0;
_position = _playerData select 1;
_dir = _playerData select 2;

if (isNil "_playerData") then {
 
} else {
  player setUnitLoadout _loadout;
  //player setPosASL _position;
  //player setDir _dir;
};

while {true} do {
  // Get player variables
  _loadout = [getUnitLoadout player] call acre_api_fnc_filterUnitLoadout;
  _position = getPosASL player; 
  _dir = getDir player;
  
  // Save variable to player profile
  profileNameSpace setVariable [format ["Player_Data_%1_%2", missionName, worldName], [_loadout, _position, _dir]];
  
  sleep 20;
};