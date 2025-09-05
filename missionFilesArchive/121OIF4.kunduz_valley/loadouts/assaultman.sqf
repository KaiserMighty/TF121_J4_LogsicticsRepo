removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeHeadgear player;
removeGoggles player;
removeBackpack player;

player forceAddUniform "121_Uni_MOPP_U";
player addVest "121_IBA_Rifleman";
player addHeadgear "121_Helmet_PASGT";
player linkItem "121_PVS7";

player addWeapon "UK3CB_M16A2";
player addPrimaryWeaponItem "UK3CB_M16_30rnd_556x45_R";
player addWeapon "rhs_weap_smaw_green";
player addWeaponItem ["rhs_weap_smaw_green", "rhs_weap_optic_smaw"];
player addWeaponItem ["rhs_weap_smaw_green", "rhs_mag_smaw_SR"];
player addWeaponItem ["rhs_weap_smaw_green", "rhs_mag_smaw_HEDP"];

for "_i" from 1 to 6 do {player addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {player addItemToUniform "ACE_CableTie";};
player addItemToUniform "kat_chestSeal";
player addItemToUniform "kat_larynx";
player addItemToUniform "kat_ncdKit";
player addItemToUniform "ACE_DefusalKit";
player addItemToUniform "ACE_Flashlight_XL50";
player addItemToUniform "ACE_MapTools";

for "_i" from 1 to 6 do {player addItemToVest "UK3CB_M16_30rnd_556x45_R";};
for "_i" from 1 to 1 do {player addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ace_isEngineer", 0, true];
player setVariable ["ace_medical_medicClass", 0, true];