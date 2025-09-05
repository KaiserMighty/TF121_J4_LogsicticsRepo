params ["_this"];

removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeHeadgear _this;
removeGoggles _this;
removeBackpack _this;

private _randomUniform = selectRandom ["U_juju_og107_ids_veldjas_od"];
private _randomVest = selectRandom ["V_Juju_chicom_va4","V_Juju_chicom_va6","V_Juju_chicom_va5","V_Juju_chicom_va1","V_Juju_p58_va6","V_Juju_p58_va5","V_Juju_p58_va4","V_Juju_p58_va1","V_Juju_p58_va7","V_Juju_p58_va2","V_Juju_p58_va3","V_Juju_chicom_va1_nb"];
private _randomHeadgear = selectRandom ["H_juju_ids_helm_nr_va3","H_juju_ids_helm_nr_va1","H_juju_ids_helm_nr_va4","H_juju_ids_helm_nr_va8","H_juju_ids_helm_nr_va7","H_juju_ids_helm_base","H_juju_ids_helm_nr_va9","H_juju_ids_helm_brown_va4","H_juju_ids_helm_brown_va3"];

_this forceAddUniform _randomUniform;
_this addVest _randomVest;
_this addHeadgear _randomHeadgear;

_this addWeapon "rhs_weap_akm";
_this addPrimaryWeaponItem "rhs_30Rnd_762x39mm";

for "_i" from 1 to 5 do {_this addItemToVest "rhs_30Rnd_762x39mm";};
for "_i" from 1 to 1 do {_this addItemToVest "rhs_mag_f1";};