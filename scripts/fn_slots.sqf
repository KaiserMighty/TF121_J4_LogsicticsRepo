_role = roleDescription player;
_playerID = getPlayerUID player;

switch (_role) do
{
	case "Ichor":
	{
		if (_playerID != "76561198114407895") then
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
	case "Merlin":
	{
		if (_playerID != "76561198137632651") then
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
	case "E11":
	{
		if (_playerID != "76561198111971726") then
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
	case "Mojo":
	{
		if (_playerID != "76561198079544058") then
		{
			endMission "ENDROLE";
		}
	};
	case "Lykos":
	{
		if (_playerID != "76561198011547179") then
		{
			endMission "ENDROLE";
		}
	};
};