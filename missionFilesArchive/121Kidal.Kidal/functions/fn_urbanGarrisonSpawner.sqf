params [["_target", objNull]];
private _nearestBuilding = nearestBuilding _target;

if (isNull _nearestBuilding) exitWith {
    diag_log format ["[fn_findNearestBuildingAndCall] No building found near %1", _refObj];
};

private _arr = [_nearestBuilding] call MF_fnc_checkBuilding;
private _arr = _arr select { (_x select 0) isEqualTo "aware" || (_x select 0) isEqualTo "relaxed" };
_count = count _arr / 2;

private _grp = createGroup [east, true];
for "_i" from 1 to _count do {
    private _unit = _grp createUnit ["UK3CB_ADG_O_RIF_1", [0,0,0], [], 0, "NONE"];
};

if (_count <= 2) then {
    [_grp, _nearestBuilding, "low"] call MF_fnc_garrisonBuilding;
} else {
    [_grp, _nearestBuilding, "normal"] call MF_fnc_garrisonBuilding;
};

[_grp] call MF_fnc_removeGrenades;
_grp