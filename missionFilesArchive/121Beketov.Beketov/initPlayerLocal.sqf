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

player addEventHandler ["Suppressed", {_this call TFO_fnc_suppress;}];

if (getPlayerUID player == "76561198111971726") then
{
    _action = ["PianoDrop","LooneyToon","",
    {
        if (isPlayer cursorTarget && cursorTarget != player) then
        {
            [cursorTarget] spawn {
                params ["_target"];
                private _obj = "piano" createVehicle [0,0,0];  
                _obj setPosATL (_target modelToWorld [0,0,8]);
                sleep 1.5;
                _obj say3D "TFO_PianoDrop";
                sleep 2.5;
                deleteVehicle _obj;
            };
        }
    } 
    ,{true},{},[parameters], [0,0,0], 100] call ace_interact_menu_fnc_createAction; 
    [player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToObject;
};