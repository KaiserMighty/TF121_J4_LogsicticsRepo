_playerRole = roleDescription player;

//INITIALIZE ROLES
_scRoles = [
	"Ichor@Task Force HQ",
	"Duke",
	"Fields",
	"Reckless"
];

_rangerRoles = [
	"Cables@A Co, 1/75 Ranger Regiment",
	"Viking",
	"Tychan",
	"Dorset",
	"PSG"
];

_makoRoles = [
	"E11@Tactical Developments and Evaluations Squadron 2", "E12", "E13", "E14",
	"EA1", "EA2", "EA3", "EA4", "EA5", "EA6",
	"EB1", "EB2", "EB3", "EB4", "EB5", "EB6",
	"EC1", "EC2", "EC3", "EC4", "EC5", "EC6",
	"EY4", "EY3", "EY2", "EY1",
	"EY4", "ER3", "ER2", "ER1",
	"EY4", "EN3", "EN2", "EN1",
	"EY4", "EM3", "EM2", "EM1",
	"EY4", "EX3", "EX2", "EX1",
	"ST2"
];

_odaRoles = [
	"Bryant@Operational Detachment Alpha 7111",
	"Bandit",
	"Team Sergeant"
];

_soarRoles = [
	"Gunny@160th Special Operations Aviation Regiment",
	"Grizzly",
	"Boston"
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
if (("Ghost" in _playerRole) OR (_playerRole in _scRoles)) then {_role = "JREG"};

//PATREON SLOTS
switch (_playerRole) do
{
	case "Bryant@Patreon Slots":
	{
		_role = "SFG";
	};
	case "jame":
	{
		_role = "SFG";
	};
	default
	{
		_playerRole = "none";
	};
};

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
_odaItems = [];
_makoItems = [];
_makoBlacklist = ["tsp_breach_popper_mag","tsp_breach_popper_auto_mag","TACDEVRON_HK45C_RMR","TACDEVRON_HK45C"];
_soarItems = [];
_stsItems = ["STS_RC","visco_opscore_4","visco_opscore"];
_sustItems = [];
_jregItems = [];

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
_tempItems = "'121_160th_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_soarItems append _tempItems;
_tempItems = "'160th_' in (configName _x)" configClasses (configFile >> "CfgWeapons") apply {configName _x};
_soarItems append _tempItems;

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

//EXECUTE
switch (_role) do
{
	case "Ranger":
	{
		_globalBanList append _rangerBlacklist;
		_globalBanList append _makoItems;
		_globalBanList append _soarItems;
		_globalBanList append _odaItems;
		_globalBanList append _stsItems;
		_globalBanList append _jregItems;
	};
	case "Mako":
	{
		_globalBanList append _makoBlacklist;
		_globalBanList append _rangerItems;
		_globalBanList append _soarItems;
		_globalBanList append _odaItems;
		_globalBanList append _stsItems;
		_globalBanList append _jregItems;
	};
	case "STS":
	{
		_globalBanList append _rangerItems;
		_globalBanList append _makoItems;
		_globalBanList append _soarItems;
		_globalBanList append _odaItems;
		_globalBanList append _jregItems;
	};
	case "SFG":
	{
		_globalBanList append _rangerItems;
		_globalBanList append _makoItems;
		_globalBanList append _soarItems;
		_globalBanList append _stsItems;
		_globalBanList append _jregItems;
	};
	case "SOAR":
	{
		_globalBanList append _rangerItems;
		_globalBanList append _makoItems;
		_globalBanList append _stsItems;
		_globalBanList append _odaItems;
		_globalBanList append _jregItems;
	};
	case "JREG":
	{
		_globalBanList append _rangerItems;
		_globalBanList append _makoItems;
		_globalBanList append _soarItems;
		_globalBanList append _odaItems;
		_globalBanList append _stsItems;
	};
	default
	{
		_globalBanList append [""];
	};
};

TFO_arsenalBlacklist = +_globalBanList;

["ace_arsenal_displayOpened", {
	[ace_arsenal_currentBox, true] call ace_arsenal_fnc_addVirtualItems;
	[{ call ace_arsenal_fnc_removeVirtualItems }, [ace_arsenal_currentBox, TFO_arsenalBlacklist]] call CBA_fnc_execNextFrame;
	[{
		call aceax_arsenal_fnc_filterVirtualItems;
		ace_arsenal_virtualItems = aceax_arsenal_filteredVirtualItems;
		call ace_arsenal_fnc_refresh;
	}] call CBA_fnc_execNextFrame;
}] call CBA_fnc_addEventHandler;