_rank = (profileName splitString " ") select 0 ;

switch (_rank) do
{
	case "2LT":
	{
		_rank = "LT"
	};
	case "1LT":
	{
		_rank = "LT"
	};
	case "LTC":
	{
		_rank = "MAJ"
	};
	case "2d":
	{
		_rank = "LT"
	};
	case "1st":
	{
		_rank = "LT"
	};
	case "Capt":
	{
		_rank = "CPT"
	};
	case "Maj":
	{
		_rank = "MAJ"
	};
	case "Lt":
	{
		_rank = "MAJ"
	};
	case "Col":
	{
		_rank = "COL"
	};
	case "ENS":
	{
		_rank = "LT"
	};
	case "LTJG":
	{
		_rank = "LT"
	};
	case "LT":
	{
		_rank = "CPT"
	};
	case "LCDR":
	{
		_rank = "MAJ"
	};
	case "CDR":
	{
		_rank = "MAJ"
	};
	case "CAPT":
	{
		_rank = "COL"
	};
	case "WOC":
	{
		_rank = "Empty"
	};
	case "PVT":
	{
		_rank = "Empty"
	};
	case "AB":
	{
		_rank = "Empty"
	};
};

_rankPath = ["ranks\",_rank] joinString "";

if !(_rank is "Empty") then {player setVariable ["ace_nametags_rankIcon", _rankPath, true]};