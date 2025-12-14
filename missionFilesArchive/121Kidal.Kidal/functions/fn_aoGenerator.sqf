params ["_classname", ["_type", 0]];

private _group = [_classname] call MF_fnc_bulkGarrisonSpawner;
private _positions = (units _group) apply { getPosATL _x };
private _pos = [
    (_positions apply { _x select 0 }) call BIS_fnc_arithmeticMean,
    (_positions apply { _x select 1 }) call BIS_fnc_arithmeticMean,
    (_positions apply { _x select 2 }) call BIS_fnc_arithmeticMean
];

private _radius = 0;
{
    private _dist = _pos distance2D (getPosATL _x);
    if (_dist > _radius) then {_radius = _dist};
} forEach units _group;

private _spawnPatrol = {
    params ["_spawnPos", "_radius"];

    private _grp = createGroup [east, true];
    _grp createUnit ["UK3CB_ADG_O_RIF_1", _spawnPos, [], 0, "NONE"];
    _grp createUnit ["UK3CB_ADG_O_RIF_1", _spawnPos, [], 0, "NONE"];
    _grp createUnit ["UK3CB_ADG_O_RIF_1", _spawnPos, [], 0, "NONE"];
    _grp createUnit ["UK3CB_ADG_O_RIF_1", _spawnPos, [], 0, "NONE"];

    for "_i" from 1 to 4 do {
        private _wpPos = [
            (_spawnPos select 0) + random [-_radius, _radius, _radius],
            (_spawnPos select 1) + random [-_radius, _radius, _radius],
            0
        ];
        private _wp = _grp addWaypoint [_wpPos, 0];
        _wp setWaypointType "MOVE";
        _wp setWaypointBehaviour "SAFE";
    };
    private _wpCycle = _grp addWaypoint [_spawnPos, 0];
    _wpCycle setWaypointType "CYCLE";

    _grp
};

private _offsetDir = random 360;
private _pos1 = _pos getPos [_radius * 0.5, _offsetDir];
private _pos2 = _pos getPos [_radius * 0.5, _offsetDir + 180];

private _patrol1 = [_pos1, _radius] call _spawnPatrol;
[_patrol1] call MF_fnc_removeGrenades;
private _patrol2 = [_pos2, _radius] call _spawnPatrol;
[_patrol2] call MF_fnc_removeGrenades;

switch (_type) do
{
	case 0: { diag_log format ["[AOGEN] Type %1, no mission", _type]; };
	case 1: { [_group] call MF_fnc_missionCache; };
	case 2: { [_group] call MF_fnc_missionHvt; };
};

private _units = units _group;
private _selectedUnits = _units call BIS_fnc_arrayShuffle;
_selectedUnits resize (ceil (count _units / 4));
{
    _x addMagazine "SmartPhone";
} forEach _selectedUnits;


private _initialCount = count units _group;
private _halfTriggered = false;
private _zeroTriggered = false;

while { _zeroTriggered == false } do {
    private _aliveUnits = { alive _x } count units _group;
    private _percent = (_aliveUnits / _initialCount) * 100;

    if (!_halfTriggered && _percent <= 50) then {
        _halfTriggered = true;
        [_pos, 500, 12] call MF_fnc_urbanSentrySpawner;
        
    };

    if (!_zeroTriggered && _aliveUnits == 0) then {
        _zeroTriggered = true;
        [_pos, 500, 12] call MF_fnc_urbanEnemySpawner;

        sleep 300;
        [_pos, 500, 12] call MF_fnc_urbanSentrySpawner;
        [_pos, 500, 12] call MF_fnc_urbanEnemySpawner;
    };

    sleep 5;
};
