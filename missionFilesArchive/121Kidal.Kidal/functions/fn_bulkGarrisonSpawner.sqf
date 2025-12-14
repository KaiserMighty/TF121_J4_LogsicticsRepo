params ["_classname"];

private _objects = allMissionObjects _classname;
if (_objects isEqualTo []) exitWith {
    systemChat format ["No objects of type %1 found.", _classname];
};

private _groups = [];
{
    private _grp = [_x] call MF_fnc_urbanGarrisonSpawner;
    _groups pushBack _grp;
    deleteVehicle _x;
} forEach _objects;

private _mainGroup = _groups select 0;

{
    if (_x == _mainGroup) then { continue };
    {
        [_x] joinSilent _mainGroup;
    } forEach units _x;
    if ((count units _x) == 0) then { deleteGroup _x };
} forEach _groups;

_mainGroup;