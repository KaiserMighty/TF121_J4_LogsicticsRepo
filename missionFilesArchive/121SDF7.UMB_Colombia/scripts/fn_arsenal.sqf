_playerRole = roleDescription player;

//INITIALIZE ROLES
_scRoles = [
	"Ichor@Task Force HQ",
	"Duke",
	"Fields",
	"Reckless",
	"Game Master",
	"Co-Game Master",
	"Assistant Game Master"
];

_rangerRoles = [
	"Cables@A Co, 1/75 Ranger Regiment",
	"Viking",
	"Tychan",
	"Dorset",
	"Da Silva"
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
	"Bandit@Operational Detachment Alpha 7111",
	"Warrant Officer",
	"Catfish"
];

_soarRoles = [
	"Gunny@US Special Operations Aviations Command",
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
if (_playerRole in _makoRoles) then {_role = "SOF"};
if (("24th" in _playerRole) OR (_playerRole in _stsRoles)) then {_role = "SOF"};
if (("SFG" in _playerRole) OR (_playerRole in _odaRoles)) then {_role = "SOF"};
if (("Aviator" in _playerRole) OR (_playerRole in _soarRoles)) then {_role = "SOAR"};
if (("Ghost" in _playerRole) OR (_playerRole in _scRoles)) then {_role = "SOF"};

//INITIALIZE ARRAYS
_globalItems = ["Binocular","ItemMap","ItemCompass","ItemWatch","rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP","ACE_CableTie","grad_paceCountBeads_functions_paceCountBeads","ACE_SpareBarrel","ACE_WaterBottle","ACE_Canteen","ACE_DefusalKit","ACE_Clacker","ACE_M26_Clacker","ACE_MapTools","ACE_RangeCard","ACE_SpottingScope","ACE_wirecutter","ToolKit","ACE_Flashlight_MX991","slr_slingload_CargoSling","tsp_breach_shock","tsp_breach_block_mag","tsp_breach_block_auto_mag","tsp_breach_linear_mag","tsp_breach_linear_auto_mag","DemoCharge_Remote_Mag","rhsusf_m112_mag","SatchelCharge_Remote_Mag","ClaymoreDirectionalMine_Remote_Mag","tsp_breach_package_mag","ACM_IV_14g","ACM_IV_16g","ACM_ACCUVAC","ACM_Vial_Adenosine","ACM_Vial_Amiodarone","ACM_AmmoniaInhalant","ACM_Autoinjector_ATNA","ACM_Vial_Atropine","ACM_AED","ACM_BVM","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","ACM_BloodBag_ON_1000","ACM_BloodBag_ON_250","ACM_BloodBag_ON_500","ACE_bodyBag","ACM_Vial_CalciumChloride","ACM_ChestSeal","ACM_ChestTubeKit","ACM_CricKit","ACM_ElasticWrap","ACM_SuctionBag","ACM_EmergencyTraumaDressing","ACE_epinephrine","ACM_Vial_Epinephrine","ACM_Vial_Ertapenem","ACM_Vial_Esmolol","ACM_IO_EZ","ACM_IO_FAST","ACM_Lozenge_Fentanyl","ACM_Vial_Fentanyl","ACM_FieldBloodTransfusionKit_250","ACM_FieldBloodTransfusionKit_500","ACM_GuedelTube","ACM_HandPump","ACM_IGel","ACM_Vial_Ketamine","ACM_Vial_Lidocaine","ACM_Autoinjector_Midazolam","ACE_morphine","ACM_Vial_Morphine","ACM_Spray_Naloxone","ACM_NCDKit","ACM_NPA","ACM_Vial_Ondansetron","ACM_Paracetamol","ACM_Inhaler_Penthrox","ACE_personalAidKit","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACM_PocketBVM","ACM_OxygenTank_425","ACM_PressureBandage","ACM_PressureCuff","ACM_PulseOximeter","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACM_SAMSplint","ACM_Stethoscope","ACE_surgicalKit","ACE_suture","ACM_Syringe_10","ACM_Syringe_1","ACM_Syringe_3","ACM_Syringe_5","ACM_ThoracostomyKit","ACE_tourniquet","ACM_Vial_TXA","rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red","rhs_mag_30Rnd_556x45_M855_Stanag","rhsusf_20Rnd_762x51_m80_Mag","hlc_30Rnd_9x19_B_MP5","hlc_100Rnd_762x51_M_M60E4","hlc_100Rnd_762x51_B_M60E4","hlc_200Rnd_762x51_B_M60E4","hlc_200Rnd_762x51_M_M60E4","hlc_100Rnd_762x51_T_M60E4","hlc_200Rnd_762x51_T_M60E4","rhs_weap_m72a7","rhs_mag_maaws_HEAT","rhs_mag_maaws_HEDP","rhs_mag_maaws_HE","ACRE_PRC77","121_80s_AlicePack","121_80s_Radio","121_80s_Buttpack","121_80s_Medbag","rhs_mag_an_m8hc","rhs_mag_m67","rhs_mag_m18_green","rhs_mag_m18_purple","rhs_mag_m18_red","rhs_mag_M433_HEDP","rhs_mag_M441_HE","rhs_mag_M583A1_white","rhs_mag_M585_white_cluster","rhs_mag_m713_Red","rhs_mag_m714_White","rhs_mag_m715_Green","rhsusf_20Rnd_762x51_m62_Mag","ACE_EarPlugs","ACE_HandFlare_Green","ACE_HandFlare_Red","ACE_HandFlare_White","ACE_rope12","ACE_rope15","ACE_rope18","ACE_rope27","ACE_rope3","ACE_rope36","ACE_rope6"];

_rangerItems = ["121_80s_Helmet1","121_80s_Helmet2","121_80s_Helmet3","121_80s_Helmet4","121_80s_TCU_UNIFORM","121_80s_AliceRig1","121_80s_AliceRig2","121_80s_AliceRig3","121_80s_AliceRig4","hlc_rifle_M14","hlc_rifle_M14_Bipod","hlc_optic_artel_m14","hlc_wp_M16A1","hlc_rifle_M16A1_m203","hlc_muzzle_A1_FlashHider","hlc_lmg_m60","rhs_weap_maaws","rhs_optic_maaws"];

_sofItems = ["121_80s_Boonie1","121_80s_Boonie2","121_80s_Boonie3","121_80s_Boonie4","121_80s_BDU_UNIFORM1","121_80s_BDU_UNIFORM2","121_80s_BDU_UNIFORM3","121_80s_BDU_UNIFORM4","121_80s_BDU_UNIFORM5","121_80s_BDU_UNIFORM6","121_80s_AliceRig1","121_80s_AliceRig2","121_80s_AliceRig3","121_80s_AliceRig4","hlc_smg_mp5a3","hlc_wp_mod727","hlc_muzzle_A2_FlashHider","hlc_wp_mod727_M203","hlc_lmg_M60E4","hlc_rifle_M14","hlc_rifle_M14_Bipod","hlc_optic_artel_m14","rhs_weap_maaws","rhs_optic_maaws"];

_soarItems = ["UK3CB_H_Pilot_Helmet","UK3CB_CW_US_B_LATE_U_H_Pilot_Uniform_01_NATO","UK3CB_V_Pilot_Vest","ACRE_SEM52SL","hlc_smg_mp5a3","ACE_microDAGR"];

//EXECUTE
switch (_role) do
{
	case "Ranger":
	{
		_globalItems append _rangerItems;
	};
	case "SOF":
	{
		_globalItems append _sofItems;
	};
	case "SOAR":
	{
		_globalItems append _soarItems;
	};
	default
	{
		_globalItems append [""];
	};
};

TFO_arsenalBlacklist = +_globalItems;

["ace_arsenal_displayOpened", {
	[{
		private _items = [ace_arsenal_currentBox] call ace_arsenal_fnc_getVirtualItems;
		private _arr = keys _items - ["Binocular"];
		[ace_arsenal_currentBox, _arr] call ace_arsenal_fnc_removeVirtualItems;
		[ace_arsenal_currentBox, TFO_arsenalBlacklist] call ace_arsenal_fnc_addVirtualItems;
	}, [ace_arsenal_currentBox, TFO_arsenalBlacklist]] call CBA_fnc_execNextFrame;
	[{
		call aceax_arsenal_fnc_filterVirtualItems;
		ace_arsenal_virtualItems = aceax_arsenal_filteredVirtualItems;
		call ace_arsenal_fnc_refresh;
	}] call CBA_fnc_execNextFrame;
}] call CBA_fnc_addEventHandler;