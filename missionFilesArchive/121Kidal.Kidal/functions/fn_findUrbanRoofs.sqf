params ["_centerPos", "_radius", "_minDistance", "_maxPositions"];

private _minHeight = 6;
private _players = allPlayers select {alive _x};
private _buildings = nearestObjects [_centerPos, ["House", "Building"], _radius];
private _validPositions = [];

_buildings = _buildings select {
    isNil { _x getVariable "buildingUsed" } || { !(_x getVariable ["buildingUsed", false]) }
};

{
    if (count _validPositions >= _maxPositions) exitWith {};

    private _building = _x;
    private _positions = [];
    private _i = 0;

    while {true} do {
        private _pos = _building buildingPos _i;
        if (_pos isEqualTo [0,0,0]) exitWith {};

        private _tooClose = false;
        {
            if (_pos distance _x < _minDistance) exitWith {_tooClose = true};
        } forEach _players;

        if (!_tooClose && _pos select 2 > _minHeight) then {
            _positions pushBack _pos;
            _building setVariable ["buildingUsed", true, true];
        };

        _i = _i + 1;
        if (count _positions >= 1) exitWith {};
    };

    {
        _validPositions pushBack _x;
        if (count _validPositions >= _maxPositions) exitWith {};
    } forEach _positions;

    if (count _validPositions >= _maxPositions) exitWith {};
} forEach _buildings;

_validPositions