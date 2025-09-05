params ["_this"];

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeHeadgear _this;
removeGoggles _this;
removeBackpack _this;

_this forceAddUniform "U_juju_tanker_ids_blk";
_this addHeadgear "H_juju_ids_fedayeen";
_this addVest "V_Juju_chicom_va7";

_this addWeapon "rhs_weap_akms";
_this addPrimaryWeaponItem "rhs_30Rnd_762x39mm";

_this addItemToVest "rhs_30Rnd_762x39mm";
_this addItemToVest "rhs_30Rnd_762x39mm";
_this addItemToVest "rhs_30Rnd_762x39mm";
_this addItemToVest "rhs_30Rnd_762x39mm";
_this addItemToVest "rhs_30Rnd_762x39mm";
_this addItemToVest "rhs_mag_f1";