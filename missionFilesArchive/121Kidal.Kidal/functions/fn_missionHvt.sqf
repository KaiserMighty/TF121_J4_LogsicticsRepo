params ["_group"];

private _freqStart = 100;
private _freqRange = 60;

private _target = selectRandom (units _group);
private _entryText = format ["The target is %1.", name _target];
["HVT Kill/Capture", _entryText] remoteExec ["MF_fnc_diaryHelper", 0, true];

private _freq = _freqStart + (random _freqRange);
[_target, _freq, 500, false] remoteExec ["SDF_fnc_addSignal", 2];