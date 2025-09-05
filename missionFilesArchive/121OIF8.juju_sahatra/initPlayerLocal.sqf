if (!hasInterface) exitWith {};

waitUntil {!isNull player};

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

["rhsusf_m998_d_s_4dr", "init", {
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

if (uniform player == "121_Uni_MOPP_U") then
{
	_items = uniformItems player;
	private _rank = (profileName splitString " ") select 0;
	switch (_rank) do
	{
		case "PVT":
		{
			player forceAddUniform "121_Uni_MCCUU_U";
		};
		case "PV2":
		{
			player forceAddUniform "121_Uni_MCCUU_U";
		};
		case "PFC":
		{
			player forceAddUniform "121_Uni_MCCUU_U";
		};
		case "AB":
		{
			player forceAddUniform "121_Uni_MCCUU_U";
		};
		case "Amn":
		{
			player forceAddUniform "121_Uni_MCCUU_U";
		};
		case "SrA":
		{
			player forceAddUniform "121_Uni_MCCUU_U";
		};
		case "EOD2":
		{
			player forceAddUniform "121_Uni_MCCUU_U";
		};
		case "WOC":
		{
			player forceAddUniform "121_Uni_MCCUU_U";
		};
		case "WO1":
		{
			player forceAddUniform "121_Uni_MCCUU_U";
		};
		case "MAJ":
		{
			player forceAddUniform "121_Uni_MCCUU_U";
		};
		default
		{
			player forceAddUniform "121_Uni_BDU_U";
		};
	};
	{player addItemToUniform _x;} forEach _items;
};

while {true} do {
  // Get player variables
  _loadout = [getUnitLoadout player] call acre_api_fnc_filterUnitLoadout;
  _med = player getVariable ["ace_medical_medicClass", 0];
  _eng = player getVariable ["ace_isEngineer", 0];
  if (hmd player != "121_PVS7") then { player linkItem "121_PVS7"; };
  
  // Save variable to player profile
  profileNameSpace setVariable ["Player_Data_121_OIF03", [_loadout, _med, _eng]];
  
  sleep 30;
};