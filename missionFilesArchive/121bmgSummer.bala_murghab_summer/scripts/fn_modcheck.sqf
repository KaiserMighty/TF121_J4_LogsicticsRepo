_serverMods = [nil, "121_ServerMods", "empty"] call BIS_fnc_getServerVariable;
_localMods = { _x == "0" } count _serverMods;
_localMods = _localMods - 3; //1 is for game, 2 is for ocap, 3 is for hosthavoc
_clientMods = [];
{_clientMods pushBack (_x select 7)} forEach getLoadedModsInfo;
_result = _clientMods arrayIntersect _serverMods;
for [{ _i = _localMods }, { _i > 0 }, { _i = _i - 1 }] do { _result pushBack "0" };
if (count _result != count _clientMods) then
{
	diag_log _serverMods;
	diag_log _clientMods;
	diag_log _result;
	endMission "MODMISMATCH";
};