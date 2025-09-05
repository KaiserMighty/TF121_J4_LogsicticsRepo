if (!hasInterface) exitWith {};

waitUntil {!isNull player};

waitUntil {getclientstate == "BRIEFING READ" && !isnull finddisplay 46 &&  isplayer player  &&  getplayeruid player != "" };

removeGoggles player;
// [] call TFO_fnc_modcheck;
[] call TFO_fnc_slots;
[] call TFO_fnc_arsenal;
[] call TFO_fnc_quickReference;
[] call TFO_fnc_safezone;
execVM "ranks\assignRank.sqf";