params ["_group"];

{
    private _unit = _x;

    {
        _unit removeMagazines _x;
    } forEach [
        "HandGrenade",
        "SmokeShell"
    ];

    if (random 1 < 0.2) then {
        _unit addMagazine "HandGrenade";
    };
} forEach units _group;
