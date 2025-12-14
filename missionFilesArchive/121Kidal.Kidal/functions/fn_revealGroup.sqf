params ["_pos", "_group", "_radius"];

private _bluforUnits = allUnits select {
    side _x isEqualTo west &&
    _x distance _pos <= _radius
};

{
    private _unit = _x;
    {
        _unit reveal [_x, 4];
    } forEach _bluforUnits;
} forEach units _group;
