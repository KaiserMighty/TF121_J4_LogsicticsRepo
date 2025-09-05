//copyToClipboard str ("true" configClasses (configFile >> "CfgPatches") apply {configName _x});

_playerRole = roleDescription player;

//INITIALIZE ROLES
_rangerRoles = [
	"Bud@A Co, 3/75 Ranger Regiment",
	"Drew",
	"Smoke",
	"Swift",
	"Husky",
	"2nd PLT Leader",
	"Sledge",
	"Gammer",
	"Melody"
];

_makoRoles = [
	"E11@Tactical Developments and Evaluations Squadron 2", "E12", "E13",
	"EA1", "EA2", "EA3", "EA4", "EA5", "EA6",
	"EB1", "EB2", "EB3", "EB4", "EB5", "EB6",
	"EC1", "EC2", "EC3", "EC4",
	"EY3", "EY2", "EY1",
	"ER3", "ER2", "ER1",
	"EN3", "EN2", "EN1",
	"EM3", "EM2", "EM1",
	"EX3", "EX2", "EX1",
	"ST2"
];

_odaRoles = [
	"Bryant@Operational Detachment Alpha 7111",
	"Bandit",
	"Sully"
];

_soarRoles = [
	"Raptor@160th Special Operations Aviation Regiment",
	"Gunny",
	"Grizzly"
];

_stsRoles = [
	"Logan@24th Special Tactics Squadron",
	"24th XO",
	"Fiddlesticks"
];

//ASSIGN ROLES
_role = "none";
if (("75th" in _playerRole) OR (_playerRole in _rangerRoles)) then {_role = "Ranger"};
if (_playerRole in _makoRoles) then {_role = "Mako"};
if (("24th" in _playerRole) OR (_playerRole in _stsRoles)) then {_role = "STS"};
if (("SFG" in _playerRole) OR (_playerRole in _odaRoles)) then {_role = "SFG"};
if (("Aviator" in _playerRole) OR (_playerRole in _soarRoles)) then {_role = "SOAR"};
if ("Ghost" in _playerRole) then {_role = "JREG"};
if ("Reservist" in _playerRole) then {_role = "94th"};

//CONSTANT GLOBAL BLACKLIST
_globalBanList = [
	"ACE_Fortify",
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
	"B_rhsusf_B_BACKPACK",
	"UK3CB_B_Invisible",
	"UK3CB_V_Invisible",
	"UK3CB_V_Invisible_Plate"
];

//INITIALIZE ARRAYS
_rangerItems = ["test_KAC_LAMG_black_F"];
_rangerBlacklist = [];
_makoItems = [];
_makoBlacklist = ["tsp_breach_popper_mag","tsp_breach_popper_auto_mag","TACDEVRON_HK45C_RMR","TACDEVRON_HK45C"];
_soarItems = [];
_stsItems = ["STS_RC","visco_opscore_4"];
_sustItems = [];
_jregItems = [];

//INITIALIZE GLOBAL BLACKLIST
_tempItems = "'ar_contraband' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
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

//INITIALIZE MAKO ITEMS
_tempItems = "'TACDEVRON_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_makoItems append _tempItems;
_tempItems = "'TACDEVRON_' in (configName _x)" configClasses (configFile >> "CfgVehicles") apply {configName _x};
_makoItems append _tempItems;
_tempItems = "'TACDEVRON_' in (configName _x)" configClasses (configFile >> "CfgGlasses") apply {configName _x};
_makoItems append _tempItems;

//INITIALIZE ODA ITEMS
_tempItems = "'SFG_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_odaItems append _tempItems;
_tempItems = "'SFG_' in (configName _x)" configClasses (configFile >> "CfgVehicles") apply {configName _x};
_odaItems append _tempItems;
_tempItems = "'SFG_' in (configName _x)" configClasses (configFile >> "CfgGlasses") apply {configName _x};
_odaItems append _tempItems;

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

//INITIALIZE JREG ITEMS
_tempItems = "'Ghost_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_jregItems append _tempItems;
_tempItems = "'Ghost_' in (configName _x)" configClasses (configFile >> "CfgVehicles") apply {configName _x};
_jregItems append _tempItems;
_tempItems = "'Ghost_' in (configName _x)" configClasses (configFile >> "CfgGlasses") apply {configName _x};
_jregItems append _tempItems;

//EXCEPTIONS
_exceptions = [];

//EXECUTE
_arsenalList = 
[
	arsenalRanger1,
	arsenalRanger2,
	arsenalDG,
	arsenalODA,
	arsenalSOAR,
	arsenalSTS,
	arsenalBrief,
	arsenalMed,
	arsenalCmd
];

switch (_role) do
{
	case "Ranger":
	{
		{
			[_x, _globalBanList + 
				_rangerBlacklist +
				_makoItems +
				_soarItems +
				_odaItems +
				_stsItems +
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
				_soarItems +
				_odaItems +
				_stsItems +
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
				_makoItems +
				_soarItems +
				_odaItems +
				_jregItems
			,false] call ace_arsenal_fnc_removeVirtualItems;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;
		} forEach _arsenalList;
	};
	case "SFG":
	{
		{
			[_x, _globalBanList + 
				_rangerItems +
				_makoItems +
				_soarItems +
				_stsItems +
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
				_makoItems +
				_stsItems +
				_odaItems +
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
				_makoItems +
				_soarItems +
				_odaItems +
				_stsItems
			,false] call ace_arsenal_fnc_initBox;
			[_x,_exceptions,false] call ace_arsenal_fnc_addVirtualItems;
		} forEach _arsenalList;
	};
	case "94th":
	{
		{
			[_x, _globalBanList + 
				_rangerItems +
				_makoItems +
				_soarItems +
				_odaItems +
				_stsItems +
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