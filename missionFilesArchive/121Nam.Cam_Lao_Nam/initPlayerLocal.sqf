if (!hasInterface) exitWith {};

waitUntil {!isNull player};

execVM "scripts\arsenal.sqf";
execVM "scripts\playerPersistency.sqf";

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

gammaWarned = false;

kog_handler_restrictGamma = 
{

	private _maxGamma = 1.2;
	private _gamma = getVideoOptions getOrDefault ["gamma", _maxGamma];
	private _brightness = getVideoOptions getOrDefault ["brightness", _maxGamma];
	private _ppBrightness = getVideoOptions getOrDefault ["ppBrightness", _maxGamma];

	if ((_gamma > _maxGamma || _brightness > _maxGamma || _ppBrightness > _maxGamma) && !gammaWarned) then {
		_msg = format ["Gamma/Brightness/AA PP Brightness cannot exceed 1.2 for this mission, please go into settings and lower the value", _maxGamma];
		cutText ["<t font ='RobotoCondensedLight' align = 'center' size='2.3' color='#d6d6d6'>" + _msg + "</t>", "BLACK", -1, true, true];
		
		gammaWarned = true;
	} else 
	{
		if ((_gamma <= _maxGamma && _brightness <= _maxGamma && _ppBrightness <= _maxGamma) && gammaWarned) then {
			cutText ["", "BLACK IN"];
			gammaWarned = false;
		};
	};

};

[kog_handler_restrictGamma, 5] call CBA_fnc_addPerFrameHandler;

// Add player persistence
_playerData = profileNameSpace getVariable format ["Player_Data_%1_%2", missionName, worldName];

_loadout = _playerData select 0;
_position = _playerData select 1;
_dir = _playerData select 2;
_food = _playerData select 3;
_water = _playerData select 4;
_face = _playerData select 5;

if (isNil "_playerData") then {
 
} else {
  player setUnitLoadout _loadout;
  player setPosASL _position;
  player setDir _dir;
  player setVariable ["acex_field_rations_hunger", _food];
  player setVariable ["acex_field_rations_thirst", _water];
  [player, _face] remoteExec ["setFace", 0, player];
};

while {true} do {
  // Get player variables
  _loadout = [getUnitLoadout player] call acre_api_fnc_filterUnitLoadout;
  _position = getPosASL player; 
  _dir = getDir player;
  _food = player getVariable ["acex_field_rations_hunger", 0];
  _water = player getVariable ["acex_field_rations_thirst", 0];
  _face = face player;
  
  // Save variable to player profile
  profileNameSpace setVariable [format ["Player_Data_%1_%2", missionName, worldName], [_loadout, _position, _dir, _food, _water, _face]];
  
  sleep 60;
};