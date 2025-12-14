params ["_centerPos", "_radius", "_minDistance", "_maxPositions"];

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

        private _visible = false;
        {
            private _eye = eyePos _x;
            private _posEyeLevel = _pos vectorAdd [0, 0, 1];
            private _hit = lineIntersectsSurfaces [
                _eye, _posEyeLevel,
                _x, objNull,
                true, 1, "VIEW", "FIRE"
            ];
            if (_hit isEqualTo []) then { _visible = true; break; };
        } forEach _players;

        if (!_tooClose && !_visible) then {
            _positions pushBack _pos;
            _building setVariable ["buildingUsed", true, true];
        };

        _i = _i + 1;
        if (count _positions >= 2) exitWith {};
    };

    {
        _validPositions pushBack _x;
        if (count _validPositions >= _maxPositions) exitWith {};
    } forEach _positions;

    if (count _validPositions >= _maxPositions) exitWith {};
} forEach _buildings;

_validPositions