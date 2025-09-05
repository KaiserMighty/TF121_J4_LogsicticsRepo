if (!hasInterface) exitWith {};

waitUntil {!isNull player};

removeGoggles player;

sleep 5;

execVM "scripts\modcheck.sqf";
execVM "scripts\slots.sqf";
execVM "scripts\arsenal.sqf";
execVM "ranks\assignRank.sqf";
execVM "scripts\quickReference.sqf";