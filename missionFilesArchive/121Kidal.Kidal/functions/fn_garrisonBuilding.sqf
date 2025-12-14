params ["_grp", "_bldg", "_style"];

private _arr = [_bldg] call MF_fnc_checkBuilding;
if (_arr isEqualTo []) exitWith {
    diag_log format ["[GARRISON] No template for %1", typeOf _bldg];
};

private _awareSlots   = _arr select { (_x select 0) isEqualTo "aware" };
private _relaxedSlots = _arr select { (_x select 0) isEqualTo "relaxed" };

private _units = units _grp;
private _numUnits = count _units;

private _numAwareDesired = 0;
private _numRelaxedDesired = _numUnits;

switch (toLower _style) do {
    case "low": {
        _numAwareDesired = 0;
        _numRelaxedDesired = _numUnits;
    };
    case "normal": {
        _numAwareDesired = ceil (_numUnits * 0.15);
        _numRelaxedDesired = _numUnits - _numAwareDesired;
    };
    case "high": {
        _numAwareDesired = ceil (_numUnits * 0.30);
        _numRelaxedDesired = _numUnits - _numAwareDesired;
    };
};

private _finalAware = _awareSlots select [0, _numAwareDesired min (count _awareSlots)];
private _finalRelaxed = _relaxedSlots select [0, _numRelaxedDesired + (_numAwareDesired - count _finalAware) min (count _relaxedSlots)];

private _allSlots = _finalAware + _finalRelaxed;

// assign units to slots
{
    if (_forEachIndex >= count _allSlots) exitWith {};
    private _unit = _x;
    private _slot = _allSlots select _forEachIndex;

    private _pos = _bldg modelToWorld (_slot select 1);
    private _dir = (getDir _bldg) + (_slot select 2);

    _unit setPosATL _pos;
    _unit setDir _dir;
    _unit disableAI "PATH";
    // _unit setUnitPos "MIDDLE";
} forEach _units;