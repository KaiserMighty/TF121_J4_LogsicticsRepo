removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeHeadgear player;
removeGoggles player;
removeBackpack player;

player forceAddUniform "121_Uni_MOPP_U";
player addVest "121_IBA_SAW";
player addHeadgear "121_Helmet_PASGT";

player addWeapon "rhs_weap_m249_pip";
player addPrimaryWeaponItem "rhsusf_acc_saw_bipod";
player addPrimaryWeaponItem "rhsusf_200rnd_556x45_M855_mixed_box";
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

for "_i" from 1 to 3 do {player addItemToVest "rhsusf_200rnd_556x45_M855_mixed_box";};
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_m67";};

player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";

player setVariable ["ace_isEngineer", 0, true];
player setVariable ["ace_medical_medicClass", 0, true];