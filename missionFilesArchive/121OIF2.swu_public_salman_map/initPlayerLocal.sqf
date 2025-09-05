if (!hasInterface) exitWith {};

waitUntil {!isNull player};

execVM "scripts\slots.sqf";
execVM "ranks\assignRank.sqf";
execVM "scripts\briefing.sqf";
removeGoggles player;
if (uniform player == "U_B_CombatUniform_mcam") then { execVM "loadouts\rifleman.sqf"; };

["rhsusf_m1025_d_s", "init", {
    params ["_vehicle"];

    {
        _vehicle enableInfoPanelComponent ["left", _x, false];
        _vehicle enableInfoPanelComponent ["right", _x, false];
    } forEach [
        "CrewDisplay",
        "MinimapDisplay",
        "MissileDisplay",
        "SensorsDisplay",
        "SlingLoadDisplay",
        "UAVFeedDisplay",
        "VehicleCommanderDisplay",
        "VehicleDriverDisplay",
        "VehicleGunnerDisplay"
    ];
}, true, [], true] call CBA_fnc_addClassEventHandler;

["rhsusf_m1025_d_s_m2", "init", {
    params ["_vehicle"];

    {
        _vehicle enableInfoPanelComponent ["left", _x, false];
        _vehicle enableInfoPanelComponent ["right", _x, false];
    } forEach [
        "CrewDisplay",
        "MinimapDisplay",
        "MissileDisplay",
        "SensorsDisplay",
        "SlingLoadDisplay",
        "UAVFeedDisplay",
        "VehicleCommanderDisplay",
        "VehicleDriverDisplay",
        "VehicleGunnerDisplay"
    ];
}, true, [], true] call CBA_fnc_addClassEventHandler;

["rhsusf_m1025_d_s_Mk19", "init", {
    params ["_vehicle"];

    {
        _vehicle enableInfoPanelComponent ["left", _x, false];
        _vehicle enableInfoPanelComponent ["right", _x, false];
    } forEach [
        "CrewDisplay",
        "MinimapDisplay",
        "MissileDisplay",
        "SensorsDisplay",
        "SlingLoadDisplay",
        "UAVFeedDisplay",
        "VehicleCommanderDisplay",
        "VehicleDriverDisplay",
        "VehicleGunnerDisplay"
    ];
}, true, [], true] call CBA_fnc_addClassEventHandler;

sleep 2;

// Add player persistence
_playerData = profileNameSpace getVariable "Player_Data_121_OIF03";

_loadout = _playerData select 0;
_med = _playerData select 1;
_eng = _playerData select 2;

if (isNil "_playerData") then {
 
} else {
  player setUnitLoadout _loadout;
  player setVariable ["ace_medical_medicClass", _med, true];
  player setVariable ["ace_isEngineer", _eng, true];
};

while {true} do {
  // Get player variables
  _loadout = [getUnitLoadout player] call acre_api_fnc_filterUnitLoadout;
  _med = player getVariable ["ace_medical_medicClass", 0];
  _eng = player getVariable ["ace_isEngineer", 0];
  
  // Save variable to player profile
  profileNameSpace setVariable ["Player_Data_121_OIF03", [_loadout, _med, _eng]];
  
  sleep 30;
};