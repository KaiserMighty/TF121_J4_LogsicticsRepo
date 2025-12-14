params ["_classname"];

// Find all mission objects of the given classname
private _objects = allMissionObjects _classname;
if (_objects isEqualTo []) exitWith {
    systemChat format ["No objects of type %1 found.", _classname];
    []
};

// Get all object positions
private _positions = _objects apply { getPosWorld _x };

// Find min/max boundaries
private _xs = _positions apply { _x select 0 };
private _ys = _positions apply { _x select 1 };
private _minX = selectMin _xs;
private _maxX = selectMax _xs;
private _minY = selectMin _ys;
private _maxY = selectMax _ys;

// Create the compound boundary marker
if (isServer) then {
    private _center = [(_minX + _maxX)/2, (_minY + _maxY)/2, 0];
    private _sizeX = (_maxX - _minX) / 2;
    private _sizeY = (_maxY - _minY) / 2;
    private _marker = createMarkerLocal [format ["compound_%1", diag_tickTime], _center];
    _marker setMarkerShapeLocal "RECTANGLE";
    _marker setMarkerSizeLocal [_sizeX, _sizeY];
    _marker setMarkerAlphaLocal 0.3;
    _marker setMarkerColorLocal "ColorYellow";
    _marker setMarkerBrushLocal "Border";
};

// Determine search center and radius
private _center = [(_minX + _maxX)/2, (_minY + _maxY)/2, 0];
private _radius = 1.42 * (vectorMagnitude [(_maxX - _minX)/2, (_maxY - _minY)/2, 0]);

// Find all nearby buildings
private _candidates = nearestObjects [_center, ["House", "Building"], _radius];

// Filter buildings inside the rectangle bounds
private _buildings = [];
{
    private _pos = getPosWorld _x;
    if (
        (_pos select 0) >= _minX &&
        (_pos select 0) <= _maxX &&
        (_pos select 1) >= _minY &&
        (_pos select 1) <= _maxY
    ) then {
        _buildings pushBack _x;
    };
} forEach _candidates;

// Report count
systemChat format ["Found %1 buildings inside compound area.", count _buildings];

// --- DEBUG: Create a map marker on each building ---
{
    private _pos = getPosWorld _x;
    private _mName = format ["bld_marker_%1_%2", _classname, _forEachIndex];
    private _m = createMarkerLocal [_mName, _pos];
    _m setMarkerTypeLocal "mil_dot";
    _m setMarkerColorLocal "ColorGreen";
    _m setMarkerTextLocal format ["Bldg #%1", _forEachIndex + 1];
} forEach _buildings;

_buildings
