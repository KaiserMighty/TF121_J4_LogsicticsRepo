params ["_building"];

private _arr = [];
switch (typeOf _building) do {
    #include "database\vanilla.hpp"
    #include "database\cup_me.hpp"
};

private _shuffle = _arr call BIS_fnc_arrayShuffle;
_shuffle;