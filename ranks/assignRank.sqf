private _rank = (profileName splitString " ") select 0;

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
	case "SO3":
	{
		_rank = "PO3"
	};
	case "SO2":
	{
		_rank = "PO2"
	};
	case "SO1":
	{
		_rank = "PO1"
	};
	case "SOC":
	{
		_rank = "CPO"
	};
	case "SOCS":
	{
		_rank = "SCPO"
	};
	case "SOCM":
	{
		_rank = "MCPO"
	};
	case "EOD3":
	{
		_rank = "PO3"
	};
	case "EOD2":
	{
		_rank = "PO2"
	};
	case "EOD1":
	{
		_rank = "PO1"
	};
	case "EODC":
	{
		_rank = "CPO"
	};
	case "CTR3":
	{
		_rank = "PO3"
	};
	case "CTR2":
	{
		_rank = "PO2"
	};
	case "CTR1":
	{
		_rank = "PO1"
	};
	case "CTRC":
	{
		_rank = "CPO"
	};
};

if (_rank == "Empty") exitWith {};
_rank = ["ranks\",_rank,".paa"] joinString "";
_rankPath = getMissionPath _rank;
player setVariable ["ace_nametags_rankIcon", _rankPath, true];