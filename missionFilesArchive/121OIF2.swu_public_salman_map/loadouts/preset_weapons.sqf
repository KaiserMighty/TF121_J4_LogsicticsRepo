// Adds actions to load loadouts to the box

// Call with:
// nul = this execVM "data\preset_weapons.sqf";

/*
 * Argument:
 "somethingaction";* 0: Action name <STRING>
 "* 1: Name of the action shown in the menu <STRING>
 * 2: Icon <STRING>
 * 3: Statement <CODE>
 * 4: Condition <CODE>
 * 5: Insert children code <CODE> (Optional)
 * 6: Action parameters <ANY> (Optional)
 * 7: Position (Position array, Position code or Selection Name) <ARRAY>, <CODE> or <STRING> (Optional)
 * 8: Distance <NUMBER> (Optional)
 * 9: Other parameters [showDisabled,enableInside,canCollapse,runOnHover,doNotCheckLOS] <ARRAY> (Optional)
 * 10: Modifier function <CODE> (Optional)
 */

///Below is the Infantry Loadouts, split into a master parent with sub-parent classes for easy organization.

_action = ["OIF_WPN","Weapons Teams","",{},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, [], _action] call ace_interact_menu_fnc_addActionToObject;

_action = ["OIF_GNR","Machine Gunner","",{_this execVM "loadouts\gunner.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_WPN"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["OIF_GAB","Ammo Bearer","",{_this execVM "loadouts\ammobearer.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_WPN"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["OIF_AST","Assaultman","",{_this execVM "loadouts\assaultman.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_WPN"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["OIF_AAB","Rocket Bearer","",{_this execVM "loadouts\rocketbearer.sqf";},{true},{},[], [0,0,0], 3] call ace_interact_menu_fnc_createAction;
[_this, 0, ["OIF_WPN"], _action] call ace_interact_menu_fnc_addActionToObject;