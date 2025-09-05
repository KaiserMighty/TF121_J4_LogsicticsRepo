missionNamespace setVariable ["FL_Spotlight_isDebug",false,true];

execVM "scripts\acre_preset.sqf";
execVM "scripts\acre_babel.sqf";

["UK3CB_TKA_O_RIF_1", "init", {
    params ["_this"];
    [_this] spawn OIF_func_fnc_rifleman;
}, true, [], true] call CBA_fnc_addClassEventHandler;

["UK3CB_TKA_O_SL", "init", {
    params ["_this"];
    [_this] spawn OIF_func_fnc_leader;
}, true, [], true] call CBA_fnc_addClassEventHandler;

["UK3CB_TKA_O_LMG", "init", {
    params ["_this"];
    [_this] spawn OIF_func_fnc_lightauto;
}, true, [], true] call CBA_fnc_addClassEventHandler;

["UK3CB_TKA_O_AR", "init", {
    params ["_this"];
    [_this] spawn OIF_func_fnc_mediumauto;
}, true, [], true] call CBA_fnc_addClassEventHandler;

["UK3CB_TKA_O_MG", "init", {
    params ["_this"];
    [_this] spawn OIF_func_fnc_heavyauto;
}, true, [], true] call CBA_fnc_addClassEventHandler;

["UK3CB_TKA_O_AT", "init", {
    params ["_this"];
    [_this] spawn OIF_func_fnc_antitank;
}, true, [], true] call CBA_fnc_addClassEventHandler;

["UK3CB_TKA_O_CREW", "init", {
    params ["_this"];
    [_this] spawn OIF_func_fnc_crewman;
}, true, [], true] call CBA_fnc_addClassEventHandler;