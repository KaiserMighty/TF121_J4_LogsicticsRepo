params ["_group"];

private _objects = [];
{
    private _nearestBuilding = nearestBuilding _x;
    if !(_nearestBuilding in _objects) then {
        _objects pushBack _nearestBuilding;
    };
} forEach units _group;

private _bldg = _objects call BIS_fnc_arrayShuffle;
_bldg resize ((round ((random 3) + 1)) min (count _bldg));

{
    private _arr = [_x] call MF_fnc_checkBuilding;
    private _cachePositions = _arr select { (_x select 0) isEqualTo "Box_IND_Ammo_F" };
    private _slot = selectRandom _cachePositions;

    private _pos = _x modelToWorld (_slot select 1);
    private _dir = (getDir _x) + (_slot select 2);

    _cache = "Box_Syndicate_Ammo_F" createVehicle _pos;
    _cache allowDamage false;
    _cache setPosATL _pos;
    _cache setDir _dir;
    _cache allowDamage true;
} forEach _bldg;