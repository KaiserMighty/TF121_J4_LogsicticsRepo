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
private _randomVest = selectRandom ["V_Juju_p58_va3h","V_Juju_p58_va7h","V_Juju_p58_va1h","V_Juju_p58_va4h","V_Juju_p58_va5h","V_Juju_p58_va6h"];
private _randomHeadgear = selectRandom ["H_juju_ids_helm_brown_va1","H_juju_ids_helm_nr_va1","H_juju_ids_helm_nr_va4","H_juju_ids_helm_nr_va8","H_juju_ids_helm_nr_va7","H_juju_ids_helm_base","H_juju_ids_helm_nr_va9","H_juju_ids_helm_brown_va4","H_juju_ids_helm_brown_va3"];

_this forceAddUniform _randomUniform;
_this addVest _randomVest;
_this addHeadgear _randomHeadgear;

_this addWeapon "UK3CB_RPK";
_this addPrimaryWeaponItem "UK3CB_RPK_75rnd_762x39_GM";

_this addItemToUniform "UK3CB_RPK_75rnd_762x39_GM";
_this addItemToVest "UK3CB_RPK_75rnd_762x39_GM";
_this addItemToVest "UK3CB_RPK_75rnd_762x39_GM";
_this addItemToVest "rhs_mag_f1";