params ["_this"];

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeHeadgear _this;
removeGoggles _this;
removeBackpack _this;

private _randomUniform = selectRandom ["U_juju_OG107_ids","U_juju_OG107_ids_gb","U_juju_OG107_ids_gt"];
private _randomVest = selectRandom ["V_Juju_chicom_va2","V_Juju_chicom_va2_nb","V_Juju_chicom_va3","V_Juju_chicom_va3_nb"];
private _randomHeadgear = selectRandom ["H_juju_ids_helm_nr_va5","H_juju_ids_helm_nr_va5_net1","H_juju_ids_helm_brown_va2_net2","H_juju_ids_helm_brown_va2_net1","H_juju_ids_helm_brown_va2"];

_this forceAddUniform _randomUniform;
_this addVest _randomVest;
_this addHeadgear _randomHeadgear;

_this addWeapon "rhs_weap_akm";
_this addPrimaryWeaponItem "rhs_30Rnd_762x39mm";

for "_i" from 1 to 5 do {_this addItemToVest "rhs_30Rnd_762x39mm";};
for "_i" from 1 to 1 do {_this addItemToVest "rhs_mag_f1";};