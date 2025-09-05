_role = roleDescription player;
_playerID = getPlayerUID player;

switch (_role) do
{
	case "Ichor@Task Force HQ":
	{
		if (_playerID != "76561198114407895") then
		{
			endMission "ENDROLE";
		}
	};
	case "Duke":
	{
		if (_playerID != "76561198086030607") then
		{
			endMission "ENDROLE";
		}
	};
	case "Fields":
	{
		if (_playerID != "76561198413189351") then
		{
			endMission "ENDROLE";
		}
	};
	case "Eric":
	{
		if (_playerID != "76561198103237090") then
		{
			endMission "ENDROLE";
		}
	};
	case "Reckless":
	{
		if (_playerID != "76561198988982405") then
		{
			endMission "ENDROLE";
		}
	};
	case "Siguy":
	{
		if (_playerID != "76561198042051734") then
		{
			endMission "ENDROLE";
		}
	};
	case "E11@Tactical Developments and Evaluations Squadron 2":
	{
		if (_playerID != "76561198111971726") then
		{
			endMission "ENDROLE";
		}
	};
};