params ["_center", "_radius", "_count"];

_positions = [_center, _radius, 100, _count] call MF_fnc_findUrbanPositions;

private _defaultClass = "UK3CB_ADG_O_RIF_1";
private _randomClasses = ["UK3CB_ADG_O_AT", "UK3CB_ADG_O_MG", "UK3CB_ADG_O_LMG", "UK3CB_ADG_O_AR", "UK3CB_ADG_O_RIF_2"];

if (_positions isEqualTo [] || {count _positions < 1}) exitWith {
    diag_log "[urbanEnemySpawner] No positions provided.";
    objNull
};

private _grp = createGroup [east, true];

{
    private _class = _defaultClass;

    if (_forEachIndex == _count - 1) then {
        _class = selectRandom _randomClasses;
    };

    private _unit = _grp createUnit [_class, _x, [], 0, "NONE"];
    _unit setPosATL _x;

} forEach _positions;

_grp setBehaviourStrong "COMBAT";
_grp setCombatMode "RED";
_grp addWaypoint [_center, 0];
[_center, _grp, _radius] call MF_fnc_revealGroup;
[_grp] call MF_fnc_removeGrenades;
_grp;