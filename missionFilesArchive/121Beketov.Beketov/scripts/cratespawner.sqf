params ["_object"];

_repair 		= ["CS_Repair", "Repair Parts", "", {}, {true}] call ace_interact_menu_fnc_createAction;
_repairAvionics 	= ["CS_Repair_Avionics", "Avionics", "", { _item = "FL_parts_avionics" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_controlSurfaces 	= ["CS_Repair_ControlSurfaces", "Control Surfaces", "", { _item = "FL_parts_controlsurfaces" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_fuelLarge		= ["CS_Repair_FuelLarge", "Fuel Tank (Large)", "", { _item = "FL_parts_fueltanklarge" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;
_fuelSmall		= ["CS_Repair_FuelSmall", "Fuel Tank (Small)", "", { _item = "FL_parts_fueltanksmall" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_fcs			= ["CS_Repair_FCS", "Gun FCS", "", { _item = "FL_parts_gunfcs" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_engineLarge 		= ["CS_Repair_EngineLarge", "Piston Engine (Large)", "", { _item = "FL_parts_enginepistonlarge" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;
_engineMedium 		= ["CS_Repair_EngineMedium", "Piston Engine (Medium)", "", { _item = "FL_parts_enginepistonmedium" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_engineSmall 		= ["CS_Repair_EngineSmall", "Piston Engine (Small)", "", { _item = "FL_parts_enginepistonsmall" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_rotorAssembly 		= ["CS_Repair_RotorAssembly", "Rotor Assembly", "", { _item = "FL_parts_rotorassembly" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_turbineLarge 		= ["CS_Repair_TurbineLarge", "Turbine Engine (Large)", "", { _item = "FL_parts_engineturbinelarge" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;
_turbineSmall 		= ["CS_Repair_TurbineSmall", "Turbine Engine (Small)", "", { _item = "FL_parts_engineturbinesmall" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_turretDrive	 	= ["CS_Repair_TurretDrive", "Turret Drive", "", { _item = "FL_parts_turretdrive" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_spareParts 		= ["CS_Repair_SpareParts", "Spare Parts", "", { _item = "FL_parts_SpareParts" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _repair] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _repairAvionics] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _controlSurfaces] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _fuelLarge] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _fuelSmall] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _fcs] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _engineLarge] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _engineMedium] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _engineSmall] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _rotorAssembly] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _turbineLarge] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _turbineSmall] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _turretDrive] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Repair"], _spareParts] call ace_interact_menu_fnc_addActionToObject;


_supply 		= ["CS_Supply", "Supplies", "", {}, {true}] call ace_interact_menu_fnc_createAction;
_medicalCrate1		= ["CS_Medical_Crate1", "Medical Crate", "", { _item = "ACM_MedicalSupplyCrate_Advanced" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;
_fuelCanister1		= ["CS_Fuel_Canister1", "Fuel Can", "", { _item = "Land_CanisterFuel_F" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_spareWheel 		= ["CS_Repair_SpareWheel", "Spare Wheel", "", { _item = "ACE_Wheel" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;
_spareTrack 		= ["CS_Repair_SpareTrack", "Spare Track", "", { _item = "ACE_Track" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _supply] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Supply"], _medicalCrate1] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Supply"], _fuelCanister1] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Supply"], _spareWheel] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Supply"], _spareTrack] call ace_interact_menu_fnc_addActionToObject;


_rangerSupply 		= ["CS_RangerSupply", "Rangers", "", {}, {true}] call ace_interact_menu_fnc_createAction;
_rangerCrate1		= ["CS_Ranger_Crate1", "Ranger Crate", "", { _item = "121_75th_supply_1" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _rangerSupply] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_RangerSupply"], _rangerCrate1] call ace_interact_menu_fnc_addActionToObject;


_makoSupply 		= ["CS_MakoSupply", "Mako", "", {}, {true}] call ace_interact_menu_fnc_createAction;
_makoSpeedball1		= ["CS_Mako_Speedball1", "Empty Speedball", "", { _item = "121_TACDEVRON_SPEEDBALL_EMPTY" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;
_makoSpeedball2		= ["CS_Mako_Speedball2", "Emergency Speedball", "", { _item = "121_TACDEVRON_SPEEDBALL" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;
_makoSpeedball3		= ["CS_Mako_Speedball3", "MATV Resupply", "", { _item = "121_TACDEVRON_SPEEDBALL_MATV" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;
_makoSpeedball4		= ["CS_Mako_Speedball4", "FOB Resupply", "", { _item = "121_TACDEVRON_SPEEDBALL_BELTFED" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _makoSupply] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_MakoSupply"], _makoSpeedball1] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_MakoSupply"], _makoSpeedball2] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_MakoSupply"], _makoSpeedball3] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_MakoSupply"], _makoSpeedball4] call ace_interact_menu_fnc_addActionToObject;


_mortars 		= ["CS_Mortars", "Mortars", "", {}, {true}] call ace_interact_menu_fnc_createAction;
_defaultShells		= ["CS_Mortars_Default", "Mixed Shells", "", { _item = "ACE_Box_82mm_Mo_Combo" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;
_heShells		= ["CS_Mortars_HE", "HE Shells", "", { _item = "ACE_Box_82mm_Mo_HE" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;
_smokeShells		= ["CS_Mortars_Smoke", "Smoke Shells", "", { _item = "ACE_Box_82mm_Mo_Smoke" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startDrag; }, {true}] call ace_interact_menu_fnc_createAction;
_ilumShells		= ["CS_Mortars_Ilum", "Ilum Shells", "", { _item = "ACE_Box_82mm_Mo_Illum" createVehicle position _player; [_player, _item] call ace_dragging_fnc_startCarry; }, {true}] call ace_interact_menu_fnc_createAction;

[_object, 0, ["ACE_MainActions"], _mortars] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Mortars"], _defaultShells] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Mortars"], _heShells] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Mortars"], _smokeShells] call ace_interact_menu_fnc_addActionToObject;
[_object, 0, ["ACE_MainActions", "CS_Mortars"], _ilumShells] call ace_interact_menu_fnc_addActionToObject;