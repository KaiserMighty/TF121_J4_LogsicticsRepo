removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeHeadgear player;
removeGoggles player;
removeBackpack player;

private _rank = (profileName splitString " ") select 0;
switch (_rank) do
{
	case "PVT":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	case "PV2":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	case "PFC":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	case "SPC":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	case "AB":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	case "Amn":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	case "SrA":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	case "EOD2":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	case "WOC":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	case "WO1":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	case "MAJ":
	{
		player forceAddUniform "121_Uni_MCCUU_U";
	};
	default
	{
		player forceAddUniform "121_Uni_BDU_U";
	};
};
player addVest "121_IBA_Teamleader";
player addHeadgear "121_Helmet_PASGT_TASC";
player linkItem "121_PVS7";

player addWeapon "UK3CB_M16A2";
player addPrimaryWeaponItem "UK3CB_M16_30rnd_556x45_R";

for "_i" from 1 to 6 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "kat_chestSeal";
player addItemToUniform "kat_larynx";
player addItemToUniform "kat_ncdKit";
player addItemToUniform "ACE_DefusalKit";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";

for "_i" from 1 to 3 do {player addItemToVest "UK3CB_M16_30rnd_556x45_R";};
for "_i" from 1 to 3 do {player addItemToVest "UK3CB_M16_30rnd_556x45_RT";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 1 do {player addItemToVest "ACRE_PRC343";};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ace_isEngineer", 0, true];
player setVariable ["ace_medical_medicClass", 0, true];