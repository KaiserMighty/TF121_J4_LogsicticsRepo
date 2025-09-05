switch (roleDescription player) do
{
	case "Ichor":
	{
		if (getPlayerUID player != "76561198114407895") then
		{
			["You are in a reserved slot", "Restricted Slot", "I will reslot"] call BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Eric":
	{
		if (getPlayerUID player != "76561198103237090") then
		{
			["You are in a reserved slot", "Restricted Slot", "I will reslot"] call BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Merlin":
	{
		if (getPlayerUID player != "76561198137632651") then
		{
			["You are in a reserved slot", "Restricted Slot", "I will reslot"] call BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Duke":
	{
		if (getPlayerUID player != "76561198086030607") then
		{
			["You are in a reserved slot", "Restricted Slot", "I will reslot"] call BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "E11":
	{
		if (getPlayerUID player != "76561198111971726") then
		{
			["You are in a reserved slot", "Restricted Slot", "I will reslot"] call BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Siguy":
	{
		if (getPlayerUID player != "76561198042051734") then
		{
			["You are in a reserved slot", "Restricted Slot", "I will reslot"] call BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Mojo":
	{
		if (getPlayerUID player != "76561198079544058") then
		{
			["You are in a reserved slot", "Restricted Slot", "I will reslot"] call BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
	case "Lykos":
	{
		if (getPlayerUID player != "76561198011547179") then
		{
			["You are in a reserved slot", "Restricted Slot", "I will reslot"] call BIS_fnc_guiMessage;
			endMission "ENDROLE";
		}
	};
};