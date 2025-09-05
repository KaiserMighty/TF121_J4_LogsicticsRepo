_action = ["OIF_PLT","Platoon HQ","",{},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["OIF_PL","Platoon Leader","",{_this execVM "loadouts\plt.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_PLT"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["OIF_PSG","Platoon Sergeant","",{_this execVM "loadouts\plt.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_PLT"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["OIF_RTO","Platoon RTO","",{_this execVM "loadouts\rto.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_PLT"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["OIF_CORP","Platoon Corpsman","",{_this execVM "loadouts\plcorp.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_PLT"], _action] call ace_interact_menu_fnc_addActionToObject;