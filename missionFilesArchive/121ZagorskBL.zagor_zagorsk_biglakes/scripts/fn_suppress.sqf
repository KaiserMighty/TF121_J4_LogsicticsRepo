params ["_unit", "_distance", "_shooter", "", "_ammoObject"];

if (
  // Exit if EH is triggered for remote unit - should not happen
  !(local _unit) ||
  // Exit if unit is dead (can be spectator)
  {!(alive _unit)} ||
  // Exit if unit in vehicle
  {!(isNull (objectParent _unit))} ||
  // Exit if unit is unconscious
  {_unit getVariable ["ACE_isUnconscious", false]} ||
  // Exit if shooter is closer than min distance
  {!(isNull _shooter) && {((_unit distance _shooter) < 10)}} // 10 - Min Distance
) exitWith {};

private _suppress = linearConversion [10, 1, _distance, 0, 20, true]; // 10 - Max Projectile Distance

// Exit if shot has no effect
if (_suppress isEqualTo 0) exitWith {};

private _curSuppress = _unit getVariable ["121_suppression_value", 0];
_curSuppress = _curSuppress + _suppress;
_unit setVariable ["121_suppression_value", _curSuppress];
// hint str _curSuppress;
switch (true) do {
  case (_curSuppress <= 150): {["baseline", {5}, "tfo_suppression"] call ace_common_fnc_addSwayFactor};
  case (_curSuppress <= 300): {["baseline", {15}, "tfo_suppression"] call ace_common_fnc_addSwayFactor};
  case (_curSuppress <= 450): {["baseline", {30}, "tfo_suppression"] call ace_common_fnc_addSwayFactor};
  case (_curSuppress <= 600): {["baseline", {45}, "tfo_suppression"] call ace_common_fnc_addSwayFactor};
  default {["baseline", {60}, "tfo_suppression"] call ace_common_fnc_addSwayFactor};
};

// ["baseline", {50}, "tfo_suppression"] call ace_common_fnc_addSwayFactor;

[_unit, _suppress] spawn {
  params ["_unit", "_suppress"];
  sleep 5; // Fadeout Time
  private _curSuppress = _unit getVariable ["121_suppression_value", 0];
  _curSuppress = _curSuppress - _suppress;
  _unit setVariable ["121_suppression_value", _curSuppress];
  // hint str _curSuppress;
  if (_curSuppress <= 10) then
  {
    ["baseline", {0}, "tfo_suppression"] call ace_common_fnc_addSwayFactor;
  };
};