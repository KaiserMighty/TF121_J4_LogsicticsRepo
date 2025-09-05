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