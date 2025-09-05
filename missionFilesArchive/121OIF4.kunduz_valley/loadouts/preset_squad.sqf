_action = ["OIF_SQ","Squad","",{},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["OIF_SQL","Squad Leader","",{_this execVM "loadouts\squadleader.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_SQ"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["OIF_COR","Squad Corpsman","",{_this execVM "loadouts\sqcorps.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_SQ"], _action] call ace_interact_menu_fnc_addActionToObject;