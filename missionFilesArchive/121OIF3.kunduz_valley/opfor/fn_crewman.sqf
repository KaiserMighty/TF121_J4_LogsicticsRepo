params ["_this"];

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeHeadgear _this;
removeGoggles _this;
removeBackpack _this;

_this forceAddUniform "U_juju_tanker_ids";
_this addHeadgear "UK3CB_H_Crew_Cap";

_this addWeapon "rhs_weap_akms";
_this addPrimaryWeaponItem "rhs_30Rnd_762x39mm";

_this addItemToUniform "rhs_30Rnd_762x39mm";
_this addItemToUniform "rhs_30Rnd_762x39mm";
_this addItemToUniform "rhs_30Rnd_762x39mm";