[0,"BLACK",2,1] call BIS_fnc_fadeEffect;

sleep 3;

_playersList = [];

{
_x moveInAny airplane1;
_playersList pushBack _x;
} forEach crew landplane1;

{
_x moveInAny airplane2;
_playersList pushBack _x;
} forEach crew landplane2;

{
_x moveInAny airplane3;
_playersList pushBack _x;
} forEach crew landplane3;

[1,"BLACK",2,1] call BIS_fnc_fadeEffect;

{
_x unlinkItem "itemMap"
} forEach _playersList;

sleep 75;

{
_x linkItem "itemMap"
} forEach _playersList;