_serverMods = [nil, "121_ServerMods", "empty"] call BIS_fnc_getServerVariable;
_clientMods = [];
{_clientMods pushBack (_x select 7)} forEach getLoadedModsInfo;
_result = _clientMods arrayIntersect _serverMods;
if (count _result != count _clientMods) then
{
	diag_log _serverMods;
	diag_log _clientMods;
	diag_log _result;
	endMission "MODMISMATCH";
};