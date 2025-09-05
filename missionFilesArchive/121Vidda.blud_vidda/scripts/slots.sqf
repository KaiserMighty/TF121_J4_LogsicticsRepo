_role = roleDescription player;
_playerID = getPlayerUID player;

switch (_role) do
{
	case "Ichor":
	{
		if (_playerID != "76561198114407895") then
		{
			["You are in a reserved slot", "Restricted Slot", "Reslot"] spawn BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Eric":
	{
		if (_playerID != "76561198103237090") then
		{
			["You are in a reserved slot", "Restricted Slot", "Reslot"] spawn BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Merlin":
	{
		if (_playerID != "76561198137632651") then
		{
			["You are in a reserved slot", "Restricted Slot", "Reslot"] spawn BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Duke":
	{
		if (_playerID != "76561198086030607") then
		{
			["You are in a reserved slot", "Restricted Slot", "Reslot"] spawn BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "E11":
	{
		if (_playerID != "76561198111971726") then
		{
			["You are in a reserved slot", "Restricted Slot", "Reslot"] spawn BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Siguy":
	{
		if (_playerID != "76561198042051734") then
		{
			["You are in a reserved slot", "Restricted Slot", "Reslot"] spawn BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Mojo":
	{
		if (_playerID != "76561198079544058") then
		{
			["You are in a reserved slot", "Restricted Slot", "Reslot"] spawn BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Lykos":
	{
		if (_playerID != "76561198011547179") then
		{
			["You are in a reserved slot", "Restricted Slot", "Reslot"] spawn BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
};