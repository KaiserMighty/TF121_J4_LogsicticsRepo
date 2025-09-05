_action = ["OIF_FT","Fire Team","",{},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["OIF_FTL","Team Leader","",{_this execVM "loadouts\teamleader.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_FT"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["OIF_GRN","Grenadier","",{_this execVM "loadouts\grenadier.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_FT"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["OIF_SAW","Automatic Rifleman","",{_this execVM "loadouts\saw.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_FT"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["OIF_RFL","Rifleman","",{_this execVM "loadouts\rifleman.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_FT"], _action] call ace_interact_menu_fnc_addActionToObject;