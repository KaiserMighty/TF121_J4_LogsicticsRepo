//copyToClipboard str ("true" configClasses (configFile >> "CfgPatches") apply {configName _x});

private _playerRole = roleDescription player;

//INITIALIZE ROLES
private _rangerRoles = [
	"Keepsrunning",
	"Bud",
	"Smoke",
	"Anubis",
	"Boxing",
	"Drew",
	"Sledge"
];

private _cagRoles = [
	"Fields",
	"Derek",
	"Hert"
];

private _makoRoles = [
	"E11",
	"E12",
	"E13",
	"EA1",
	"EA2",
	"EA3",
	"EA4",
	"EA5",
	"EA6",
	"EY3",
	"EY2",
	"EY1",
	"EN3",
	"EN2",
	"EN1",
	"ST2"
];

private _soarRoles = [
	"Sandman",
	"Reckless",
	"AvTEG Ops Officer",
	"Raptor"
];

private _stsRoles = [
	"Logan",
	"Odin",
	"Fiddlesticks"
];

private _sustRoles = [
	"Gammer",
	"Miller",
	"528th NCOIC"
];

//ASSIGN ROLES
private _role = "none";
if (("75th" in _playerRole) OR (_playerRole in _rangerRoles)) then {_role = "Ranger"};
if (("CAG" in _playerRole) OR (_playerRole in _cagRoles)) then {_role = "CAG"};
if (_playerRole in _makoRoles) then {_role = "Mako"};
if (("24th" in _playerRole) OR (_playerRole in _stsRoles)) then {_role = "STS"};
if (("Aviator" in _playerRole) OR (_playerRole in _soarRoles)) then {_role = "SOAR"};
if (("528th" in _playerRole) OR (_playerRole in _sustRoles)) then {_role = "Sust"};
if ("Ghost" in _playerRole) then {_role = "JREG"};
if ("Reservist" in _playerRole) then {_role = "94th"};

//CONSTANT GLOBAL BLACKLIST
private _globalBanList = [
	"ACE_Fortify",
	"kat_CaffeineItem",
	"NVGogglesB_blk_F",
	"NVGogglesB_grn_F",
	"NVGogglesB_gry_F",
	"O_NVGoggles_grn_F",
	"O_NVGoggles_hex_F",
	"O_NVGoggles_ghex_F",
	"O_NVGoggles_urb_F",
	"Laserdesignator_01_khk_F",
	"Laserdesignator_03",
	"Laserdesignator",
	"Laserdesignator_02",
	"Laserdesignator_02_ghex_F",
	"tsp_meleeWeapon_fireaxe",
	"tsp_meleeWeapon_splittingaxe",
	"ItemcTabHCam",
	"B_rhsusf_B_BACKPACK"
];

//INITIALIZE ARRAYS
private _rangerItems = ["test_KAC_LAMG_black_F"];
private _rangerBlacklist = [];
private _cagItems = ["Shemag_EYEPRO_BLK_SHD","Shemag_EYEPRO_BLK_CLR","Hert_raybans"];
private _makoItems = [];
private _makoBlacklist = ["kat_PainkillerItem","tsp_popperCharge_mag","tsp_popperCharge_auto_mag"];
private _soarItems = [];
private _stsItems = ["STS_RC","visco_opscore_4";
private _sustItems = [];
private _jregItems = [];

//INITIALIZE GLOBAL BLACKLIST
private _tempItems = "'ar_contraband' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_globalBanList append _tempItems;

//INITIALIZE RANGER ITEMS
_tempItems = "'ranger_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_rangerItems append _tempItems;
_tempItems = "'ranger_' in (configName _x)" configClasses (configFile >> "CfgVehicles") apply {configName _x};
_rangerItems append _tempItems;
_tempItems = "'75th_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_rangerItems append _tempItems;
_tempItems = "'75th_' in (configName _x)" configClasses (configFile >> "CfgGlasses") apply {configName _x};
_rangerItems append _tempItems;

//INITIALIZE CAG ITEMS
_tempItems = "'CAG_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_cagItems append _tempItems;
_tempItems = "'CAG_' in (configName _x)" configClasses (configFile >> "CfgVehicles") apply {configName _x};
_cagItems append _tempItems;
_tempItems = "'CAG_' in (configName _x)" configClasses (configFile >> "CfgGlasses") apply {configName _x};
_cagItems append _tempItems;

//INITIALIZE MAKO ITEMS
_tempItems = "'TACDEVRON_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_makoItems append _tempItems;
_tempItems = "'TACDEVRON_' in (configName _x)" configClasses (configFile >> "CfgVehicles") apply {configName _x};
_makoItems append _tempItems;
_tempItems = "'TACDEVRON_' in (configName _x)" configClasses (configFile >> "CfgGlasses") apply {configName _x};
_makoItems append _tempItems;

//INITIALIZE SOAR ITEMS
//_tempItems = "'121_soar_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
//_soarItems append _tempItems;

//INITIALIZE STS ITEMS
_tempItems = "'24th_' in (configName _x)" configClasses (configFile >> "CfgVehicles") apply {configName _x};
_stsItems append _tempItems;
_tempItems = "'24th_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_stsItems append _tempItems;
_tempItems = "'PJ_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_stsItems append _tempItems;

//INITIALIZE SUST ITEMS
_tempItems = "'1st_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_sustItems append _tempItems;
_tempItems = "'1st_' in (configName _x)" configClasses (configFile >> "CfgVehicles") apply {configName _x};
_sustItems append _tempItems;
_tempItems = "'1st_' in (configName _x)" configClasses (configFile >> "CfgGlasses") apply {configName _x};
_sustItems append _tempItems;

//INITIALIZE JREG ITEMS
_tempItems = "'Ghost_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_jregItems append _tempItems;
_tempItems = "'Ghost_' in (configName _x)" configClasses (configFile >> "CfgVehicles") apply {configName _x};
_jregItems append _tempItems;
_tempItems = "'ghost_' in (configName _x)" configClasses (configFile >> "CfgVehicles") apply {configName _x};
_jregItems append _tempItems;
_tempItems = "'ghost_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_jregItems append _tempItems;
_tempItems = "'ghost_' in (configName _x)" configClasses (configFile >> "CfgGlasses") apply {configName _x};
_jregItems append _tempItems;

//EXCEPTIONS
private _exceptions = [];

//EXECUTE
private _arsenalList = 
[
	arsenalRanger1,
	arsenalRanger2,
	arsenalCAG,
	arsenalDG,
	arsenalSOAR,
	arsenalSTS,
	arsenalBrief,
	arsenalSust,
	arsenalCmd
];

switch (_role) do
{
	case "Ranger":
	{
		{
			[_x, _globalBanList + 
				_rangerBlacklist +
				_cagItems +
				_makoItems +
				_soarItems +
				_stsItems +
				_sustItems +
				_jregItems
			,false] call ace_arsenal_fnc_removeVirtualItems;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;
		} forEach _arsenalList;
	};
	case "CAG":
	{
		{
			[_x, _globalBanList + 
				_rangerItems +
				_makoItems +
				_soarItems +
				_stsItems +
				_sustItems +
				_jregItems
			,false] call ace_arsenal_fnc_removeVirtualItems;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;
		} forEach _arsenalList;
	};
	case "Mako":
	{
		{
			[_x, _globalBanList + 
				_makoBlacklist +
				_rangerItems +
				_cagItems +
				_soarItems +
				_stsItems +
				_sustItems +
				_jregItems
			,false] call ace_arsenal_fnc_removeVirtualItems;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;
		} forEach _arsenalList;
	};
	case "STS":
	{
		{
			[_x, _globalBanList + 
				_rangerItems +
				_cagItems +
				_makoItems +
				_soarItems +
				_sustItems +
				_jregItems
			,false] call ace_arsenal_fnc_removeVirtualItems;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;
		} forEach _arsenalList;
	};
	case "SOAR":
	{
		{
			[_x, _globalBanList + 
				_rangerItems +
				_cagItems +
				_makoItems +
				_stsItems +
				_sustItems +
				_jregItems
			,false] call ace_arsenal_fnc_removeVirtualItems;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;

		} forEach _arsenalList;
	};
	case "Sust":
	{
		{
			[_x, _globalBanList + 
				_rangerItems +
				_cagItems +
				_makoItems +
				_soarItems +
				_stsItems +
				_jregItems
			,false] call ace_arsenal_fnc_removeVirtualItems;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;

		} forEach _arsenalList;
	};
	case "JREG":
	{
		{
			[_x, _globalBanList + 
				_rangerItems +
				_cagItems +
				_makoItems +
				_soarItems +
				_stsItems +
				_sustItems
			,false] call ace_arsenal_fnc_initBox;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;
		} forEach _arsenalList;
	};
	case "94th":
	{
		{
			[_x, _globalBanList + 
				_rangerItems +
				_cagItems +
				_makoItems +
				_soarItems +
				_stsItems +
				_sustItems +
				_jregItems
			,false] call ace_arsenal_fnc_initBox;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;
		} forEach _arsenalList;
	};
	default
	{
		{
			[_x,_globalBanList,false] call ace_arsenal_fnc_removeVirtualItems;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;
		} forEach _arsenalList;
	};
};