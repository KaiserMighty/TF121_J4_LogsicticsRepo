// Enable/Disable Safezone
// missionNamespace setVariable ["safezone_active",false,true];
// missionNamespace setVariable ["safezone_active",true,true];

safezone_active = true;

safezone_muzzles = getArray (configFile >> "CfgWeapons" >> "Throw" >> "muzzles") + getArray (configFile >> "CfgWeapons" >> "Put" >> "muzzles");

safezone_eachFrame = 
{
	if (player inArea base AND safezone_active) then
	{
		{
			player setWeaponReloadingTime [_this, _x, 1];
		} forEach safezone_muzzles;
		[player, "blockThrow", "safezone", true] call ace_common_fnc_statusEffect_set;
		[player, 1] call ace_explosives_fnc_cancelPlacement;
		if (player call tsp_fnc_melee_doing) exitWith {player setVariable ["tsp_gestureStop", true]};
		true
	}
	else
	{
		[player, "blockThrow", "safezone", false] call ace_common_fnc_statusEffect_set;
		false
	};
};

player addAction ["", {true}, [], -99, false, true, "DefaultAction", "call safezone_eachFrame"];

player addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	_unit addAction ["", {true}, [], -99, false, true, "DefaultAction", "call safezone_eachFrame"];
}];