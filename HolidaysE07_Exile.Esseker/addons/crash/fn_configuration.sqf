/*
	File: fn_configuration.sqf
	Author: [midgetgrimm]
	Purpose: Main config for planned mission system, right now only fn_heliCrashes.sqf uses
	Notes: Global messages assist from eraser1, check notes on that
	TODO: better fill crate system; better messaging system;
*/
exsys_cc_debugMode = false;
exsys_cc_mapCenter = [6262.519,7118.1719,139.97002]; 


exsys_cc_weapon = [
		["srifle_LRR_F","7Rnd_408_Mag",3],
		["arifle_Katiba_GL_F","30Rnd_65x39_caseless_green",3],
		["srifle_DMR_03_ACO_F","20Rnd_762x51_Mag",3],
		["srifle_DMR_04_Tan_F","10Rnd_127x54_Mag",3],
		["srifle_DMR_05_hex_F","10Rnd_93x64_DMR_05_Mag",3],
		["srifle_DMR_06_camo_F","20Rnd_762x51_Mag",3],
		["arifle_TRG21_GL_F","30Rnd_556x45_Stanag",3],
		["arifle_TRG21_GL_F","UGL_FlareGreen_F",3],
		["arifle_MX_SW_F","100Rnd_65x39_caseless_mag",1],
		["arifle_Mk20_F","30Rnd_556x45_Stanag",3],
		["hgun_Pistol_heavy_02_F","6Rnd_45ACP_Cylinder",3],
		["hgun_Pistol_heavy_01_F","11Rnd_45ACP_Mag",3]
];
exsys_cc_usableItem = [
	"Exile_Item_InstaDoc","Exile_Item_InstaDoc","Exile_Item_InstaDoc","Exile_Item_Catfood_Cooked","Exile_Item_CookingPot","Exile_Item_InstaDoc","Exile_Item_Surstromming_Cooked","Exile_Item_PlasticBottleFreshWater","Exile_Item_PlasticBottleFreshWater","Exile_Item_Matches","Rangefinder","ItemGPS","Exile_Item_CamoTentKit","Exile_Item_GloriousKnakworst","Exile_Item_Surstromming","Exile_Item_SausageGravy","Exile_Item_ChristmasTinner","Exile_Item_BBQSandwich","Exile_Item_Catfood","Exile_Item_Rope","Exile_Item_DuctTape"
];

exsys_cc_attachments = [
	"optic_Nightstalker","optic_MRD","optic_MRCO","optic_LRPS","optic_KHS_tan","optic_KHS_hex","optic_KHS_blk","optic_Holosight","optic_Hamr","optic_DMS","optic_Arco","optic_mas_acog","optic_mas_acog_eo","optic_mas_MRD","optic_mas_PSO_nv","optic_mas_PSO_eo","optic_mas_zeiss_eo","optic_mas_zeiss","optic_mas_MRD","optic_mas_kobra","optic_tws_mg"
];

exsys_cc_backPack = [
	"B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_dgtl","B_AssaultPack_khk","B_AssaultPack_mcamo","B_AssaultPack_rgr","B_AssaultPack_sgg","B_FieldPack_blk","B_FieldPack_cbr","B_FieldPack_ocamo","B_FieldPack_oucamo","B_TacticalPack_blk","B_TacticalPack_rgr","B_TacticalPack_ocamo","B_TacticalPack_mcamo","B_TacticalPack_oli","B_Kitbag_cbr","B_Kitbag_mcamo","B_Kitbag_sgg","B_Carryall_cbr","B_Carryall_khk","B_Carryall_mcamo","B_Carryall_ocamo","B_Carryall_oli","B_Carryall_oucamo","B_Bergen_blk","B_Bergen_mcamo","B_Bergen_rgr","B_Bergen_sgg","B_HuntingBackpack","B_OutdoorPack_blk","B_OutdoorPack_blu","B_OutdoorPack_tan"
];

exsys_cc_clothes = [
	"B_Parachute","V_PlateCarrierSpec_rgr","V_PlateCarrierSpec_mtp","V_PlateCarrierSpec_blk","V_PlateCarrier1_blk","V_PlateCarrier1_rgr","V_PlateCarrierH_CTRG","V_Rangemaster_belt","V_TacVest_camo","V_I_G_resistanceLeader_F","V_Chestrig_oli","U_I_Wetsuit","U_O_Wetsuit","U_B_Wetsuit","U_B_survival_uniform","U_O_GhillieSuit","U_O_FullGhillie_lsh","U_BG_leader","U_IG_leader","U_I_OfficerUniform","U_I_CombatUniform"
];

exsys_cc_rareItems = [
	"Exile_Item_WoodWallKit","Exile_Item_WoodGateKit","Exile_Item_WoodWindowKit","Exile_Item_WoodFloorPortKit","Exile_Item_WoodDoorKit","Exile_Item_WorkBenchKit","Exile_Item_WoodWallHalfKit","Exile_Item_WoodSupportKit","Exile_Item_WoodStairsKit","Exile_Item_WoodPlank","Exile_Item_StorageCrateKit","Exile_Item_PortableGeneratorKit","Exile_Item_MetalPole","Exile_Item_MetalBoard","Exile_Item_FloodLightKit","Exile_Item_CampFireKit","Exile_Item_CampFireKit","Exile_Item_CampFireKit","Exile_Item_SafeKit","Exile_Item_CodeLock"
];

exsys_cc_backUpCoords = [
	[2625.5542,2532.4307,353.23288],[2099.5527,7164.6934,173.51343],[1591.0837,5673.2461,164.40848],[5904.3027,4357.2617,240.50287],[3860.7129,5546.749,119.47629],[4198.1211,7576.146,106.21362],[2111.1824,10060.455,155.54329],[7778.2197,10278.101,91.253426],[8510.2988,3311.2354,197.57649],[6547.3018,3349.7563,233.78036],[7691.1035,4843.8301,101.2812],[7632.4443,6792.4106,74.16497],[11287.395,7220.2891,55.793777],[9908.168,8710.9619,181.08487],[8377.2266,8117.4541,156.67358],[6659.2695,10922.089,138.85808],[9473.9521,11933.64,156.04263],[11557.751,11497.896,149.08386],[3060.1592,11489.346,85.901405],[10491.834,2386.1523,152.32117],[8363.3535,1468.0227,226.81032],[6137.0127,703.46729,288.91629],[4438.3296,2150.8018,278.40671],[6182.3545,8680.9209,162.15434],[6737.9814,7807.5059,165.74301]
];

exsys_cc_boxes =[
	"CargoNet_01_box_F","CargoNet_01_box_F","CargoNet_01_box_F","Box_IND_WpsSpecial_F","Box_IND_Wps_F","Box_IND_WpsLaunch_F","Box_IND_AmmoVeh_F","Box_East_Wps_F","Box_NATO_AmmoOrd_F","Box_East_Support_F"
];

exsys_cc_wrecks = [
	"Land_Wreck_Heli_Attack_02_F","Land_UWreck_MV22_F","Land_UWreck_Heli_Attack_02_F","Land_Wreck_Heli_Attack_01_F"
];

exsys_cc_prisonNames = [
	"Leavenworth","Polunsky","Wabash Valley","Pelican Bay","Attica","Sing Sing","Folsom State","Alcatraz","Rikers Island","ADX","San Quentin","Hanoi Hilton","Tuol Sleng","Elmina Castle","Robben Island","Montelupich","Camp 1391","Camp 22","Carandiru","Tadmor","Diyarbakir","Gldani"
];


/*
	line below taken from eraser1 and his Defents Mission System for ExileMod -
	Had to use this for the global messaging as I couldn't get it working right
	So I just nicked this bit here and away we go!
	1. playerNotificationTypes 2.dynamicTextSize 3.dynamicTextColor 4.BroadcastMissionStatus
	// Notification types. Supported values are: ["advancedHintRequest","dynamicTextRequest","standardHintRequest","systemChatRequest"]
*/
exsys_cc_playerNotificationTypes = ["standardHintRequest"];
exsys_cc_dynamicTextSize = 0.55;
exsys_cc_dynamicTextColor = "#FFCC00";
exsys_cc_BroadcastMissionStatus = compileFinal "
							if !((typeName _this) == ""STRING"") then {
								_this = str _this;
							};
							{
								private ""_args"";
								_args =	[
											[_x, [_this]],
											[_x, [_this,0,exsys_cc_dynamicTextSize,exsys_cc_dynamicTextColor]]
										] select (_x == ""dynamicTextRequest"");

								_args call ExileServer_system_network_send_broadcast;
								false;
							} count exsys_cc_playerNotificationTypes;";

/*end eraser1 recompiles - thanks dude! xD*/
