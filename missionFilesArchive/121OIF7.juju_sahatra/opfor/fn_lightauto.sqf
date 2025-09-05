params ["_this"];

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeHeadgear _this;
removeGoggles _this;
removeBackpack _this;

private _randomUniform = selectRandom ["UK3CB_MEC_C_Jeans_Tshirt_U_21","UK3CB_MEC_C_Jeans_Tshirt_U_20","UK3CB_MEC_C_Jeans_Tshirt_U_19","UK3CB_MEC_C_Jeans_Tshirt_U_18","UK3CB_MEC_C_Jeans_Tshirt_U_17","UK3CB_MEC_C_Jeans_Tshirt_U_16","UK3CB_MEC_C_Jeans_Tshirt_U_15","UK3CB_MEI_B_U_Pants_02","UK3CB_MEC_C_Pants_U_21","UK3CB_MEC_C_Pants_U_20","UK3CB_MEC_C_Pants_U_19","UK3CB_ADC_C_Pants_U_24","UK3CB_ADC_C_Pants_U_25","UK3CB_ADC_C_Pants_U_23","UK3CB_ADC_C_Pants_U_22","UK3CB_ADC_C_Pants_U_21","UK3CB_ADC_C_Pants_U_19","UK3CB_ADC_C_Pants_U_01","UK3CB_ADC_C_Pants_U_02","UK3CB_ADC_C_Pants_U_03","UK3CB_ADC_C_Pants_U_04"];
private _randomVest = selectRandom ["V_Juju_chicom_va1_nb","V_Juju_p58_va6","V_Juju_p58_va1"];
private _randomHeadgear = selectRandom ["H_juju_ids_kef_red","H_juju_ids_kef","",""];

_this forceAddUniform _randomUniform;
_this addVest _randomVest;
_this addHeadgear _randomHeadgear;

_this addWeapon "UK3CB_RPD";
_this addPrimaryWeaponItem "UK3CB_RPD_100rnd_762x39_GM";

_this addItemToUniform "UK3CB_RPD_100rnd_762x39_GM";
_this addItemToVest "UK3CB_RPD_100rnd_762x39_GM";
_this addItemToVest "UK3CB_RPD_100rnd_762x39_GM";
_this addItemToVest "rhs_mag_f1";