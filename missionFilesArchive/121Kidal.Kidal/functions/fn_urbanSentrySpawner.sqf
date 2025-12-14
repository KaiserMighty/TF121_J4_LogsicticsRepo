params ["_center", "_radius", "_count"];

_positions = [_center, _radius, 100, _count] call MF_fnc_findUrbanRoofs;
private _randomClasses = ["UK3CB_ADG_O_MG", "UK3CB_ADG_O_LMG", "UK3CB_ADG_O_AR"];

if (_positions isEqualTo [] || {count _positions < 1}) exitWith {
    diag_log "[urbanSentrySpawner] No positions provided.";
    objNull
};

private _grp = createGroup [east, true];

{
    private _startPos = [_x select 0, _x select 1, 1];
    private _unit = _grp createUnit [selectRandom _randomClasses, _startPos, [], 0, "NONE"];

    _unit setPosATL _startPos;
    _unit setCombatBehaviour "CARELESS";

    _unit doMove _x;
    _unit setVariable ["RooftopTargetPos", _x];

    [_unit] spawn {
        params ["_u"];
        waitUntil {
            sleep 0.5;
            !alive _u || {_u distance (_u getVariable ["RooftopTargetPos", getPos _u]) < 2}
        };
        if (alive _u) then {
            _u disableAI "PATH";
            _u setUnitPos "UP";
            _u setCombatBehaviour "COMBAT";
        };
    };
} forEach _positions;

_grp setBehaviourStrong "COMBAT";
_grp setCombatMode "RED";
[_center, _grp, _radius] call MF_fnc_revealGroup;
[_grp] call MF_fnc_removeGrenades;
_grp