f_available_languages = [
["en", "English"],
["ru", "Russian"],
["ar", "German"]
];
{
    _x call acre_api_fnc_babelAddLanguageType;
} forEach f_available_languages;

[] spawn {
    if (!hasInterface) exitWith {};
    if (player != player) then {waitUntil {player == player};};
    if (!alive player) then {waitUntil {alive player};};

    _languagesPlayerSpeaks = player getVariable ["f_languages", []];

    switch (playerside) do {
    case west: {
            if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["en"];};
        };
    case east: {
            if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["ru"];};
        };
    case independent: {
            if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["ru"];};
        };
    case civilian: {
            if (_languagesPlayerSpeaks isEqualTo []) then {_languagesPlayerSpeaks = ["ru"];};
        };
    };
    _languagesPlayerSpeaks call acre_api_fnc_babelSetSpokenLanguages;
};