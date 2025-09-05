if (!hasInterface) exitWith {};

waitUntil {!isNull player};

waitUntil {getclientstate == "BRIEFING READ" && !isnull finddisplay 46 &&  isplayer player  &&  getplayeruid player != "" };

removeGoggles player;
// [] call TFO_fnc_modcheck;
[] call TFO_fnc_slots;
[] call TFO_fnc_arsenal;
[] call TFO_fnc_quickReference;
execVM "ranks\assignRank.sqf";

// Add player persistence
_playerData = profileNameSpace getVariable format ["Player_Data_%1_%2", missionName, worldName];

_loadout = _playerData select 0;
_position = _playerData select 1;
_dir = _playerData select 2;
_med = _playerData select 3;

if (isNil "_playerData") then {
 
} else {
  if !(_position inArea baseArea) then {
    player setUnitLoadout _loadout;
    player setPosASL _position;
    player setDir _dir;
    [{[(_this select 0),(_this select 1)] call ace_medical_fnc_deserializeState},[player,_med]] call CBA_fnc_directCall;
  };
};

while {true} do {
  // Get player variables
  _loadout = [getUnitLoadout player] call acre_api_fnc_filterUnitLoadout;
  _position = getPosASL player;
  _dir = getDir player;
  _med = [{_this call ace_medical_fnc_serializeState}, player] call CBA_fnc_directCall;
  
  // Save variable to player profile
  profileNameSpace setVariable [format ["Player_Data_%1_%2", missionName, worldName], [_loadout, _position, _dir, _med]];
  
  sleep 15;
};