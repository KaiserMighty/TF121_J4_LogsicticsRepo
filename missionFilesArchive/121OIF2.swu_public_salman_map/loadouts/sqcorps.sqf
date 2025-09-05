removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeHeadgear player;
removeGoggles player;
removeBackpack player;

player forceAddUniform "121_Uni_MOPP_U";
player addVest "121_IBA_Med";
player addHeadgear "121_Helmet_PASGT_TASC";
player addBackpack "121_pack_med";

player addWeapon "UK3CB_M16A2";
player addPrimaryWeaponItem "UK3CB_M16_30rnd_556x45_R";
player addWeapon "rhsusf_weap_m9";
player addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

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
for "_i" from 1 to 3 do {player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 1 do {player addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 1 do {player addItemToVest "ACRE_PRC343";};

for "_i" from 1 to 30 do {player addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 4 do {player addItemToBackpack "kat_larynx";};
for "_i" from 1 to 4 do {player addItemToBackpack "kat_chestSeal";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_splint";};
for "_i" from 1 to 4 do {player addItemToBackpack "kat_ketamine";};
for "_i" from 1 to 4 do {player addItemToBackpack "kat_TXA";};
for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 4 do {player addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_IO_FAST";};
for "_i" from 1 to 2 do {player addItemToBackpack "kat_aatKit";};
for "_i" from 1 to 2 do {player addItemToBackpack "KAT_Empty_bloodIV_500";};
for "_i" from 1 to 1 do {player addItemToBackpack "kat_accuvac";};
for "_i" from 1 to 1 do {player addItemToBackpack "kat_pocketBVM";};
for "_i" from 1 to 1 do {player addItemToBackpack "kat_Pulseoximeter";};
for "_i" from 1 to 1 do {player addItemToBackpack "kat_stethoscope";};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ace_isEngineer", 0, true];
player setVariable ["ace_medical_medicClass", 1, true];