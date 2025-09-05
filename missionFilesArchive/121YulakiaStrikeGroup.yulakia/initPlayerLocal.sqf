if (!hasInterface) exitWith {};

waitUntil {!isNull player};

execVM "scripts\slots.sqf";
execVM "scripts\arsenal.sqf";
execVM "ranks\assignRank.sqf";
execVM "scripts\quickReference.sqf";
removeGoggles player;