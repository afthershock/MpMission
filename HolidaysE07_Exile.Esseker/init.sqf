//{if(!isPlayer x)then{deleteVehicle x;};} forEach ([13500,12000,0] nearEntities [‘Exile_Unit_GhostPlayer’,700]);
[]execVM "zombie\configurations.sqf";


if (isServer) then {
[] execVM "addons\time\time.sqf";			    // Time
[] execVM "addons\crash\fn_configuration.sqf";
[] execVM "addons\crash\crashes\fn_heliCrashes.sqf";
};