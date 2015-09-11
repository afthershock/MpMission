/*
	file: fn_zombieinit.sqg
	author: corvobrok
	
	descripttion: create random zombies near the player (more zombies if you are in a city)
*/
_units =  ["RyanZombieC_man_1", "RyanZombieC_man_polo_1_F", "RyanZombieC_man_polo_2_F", "RyanZombieC_man_polo_4_F", "RyanZombieC_man_polo_5_F", "RyanZombieC_man_polo_6_F", "RyanZombieC_man_p_fugitive_F", "RyanZombieC_man_w_worker_F", "RyanZombieC_scientist_F", "RyanZombieC_man_hunter_1_F", "RyanZombieC_man_pilot_F", "RyanZombieC_journalist_F", "RyanZombieC_Orestes", "RyanZombieC_Nikos", "RyanZombieC_man_1medium", "RyanZombieC_man_polo_1_Fmedium", "RyanZombieC_man_polo_2_Fmedium", "RyanZombieC_man_polo_4_Fmedium", "RyanZombieC_man_polo_5_Fmedium", "RyanZombieC_man_polo_6_Fmedium", "RyanZombieC_man_p_fugitive_Fmedium", "RyanZombieC_man_w_worker_Fmedium", "RyanZombieC_scientist_Fmedium", "RyanZombieC_man_hunter_1_Fmedium", "RyanZombieC_man_pilot_Fmedium", "RyanZombieC_journalist_Fmedium", "RyanZombieC_Orestesmedium", "RyanZombieC_Nikosmedium", "RyanZombieC_man_1slow", "RyanZombieC_man_polo_1_Fslow", "RyanZombieC_man_polo_2_Fslow", "RyanZombieC_man_polo_4_Fslow", "RyanZombieC_man_polo_5_Fslow", "RyanZombieC_man_polo_6_Fslow", "RyanZombieC_man_p_fugitive_Fslow", "RyanZombieC_man_w_worker_Fslow", "RyanZombieC_scientist_Fslow", "RyanZombieC_man_hunter_1_Fslow", "RyanZombieC_man_pilot_Fslow", "RyanZombieC_journalist_Fslow", "RyanZombieC_Orestesslow", "RyanZombieC_Nikosslow", "RyanZombieB_Soldier_02_f", "RyanZombieB_Soldier_02_f_1", "RyanZombieB_Soldier_02_f_1_1", "RyanZombieB_Soldier_03_f", "RyanZombieB_Soldier_03_f_1", "RyanZombieB_Soldier_03_f_1_1", "RyanZombieB_Soldier_04_f", "RyanZombieB_Soldier_04_f_1", "RyanZombieB_Soldier_04_f_1_1", "RyanZombieB_Soldier_lite_F", "RyanZombieB_Soldier_lite_F_1", "RyanZombieB_Soldier_02_fmedium", "RyanZombieB_Soldier_02_f_1medium", "RyanZombieB_Soldier_02_f_1_1medium", "RyanZombieB_Soldier_03_fmedium", "RyanZombieB_Soldier_03_f_1medium", "RyanZombieB_Soldier_03_f_1_1medium", "RyanZombieB_Soldier_04_fmedium", "RyanZombieB_Soldier_04_f_1medium", "RyanZombieB_Soldier_04_f_1_1medium", "RyanZombieB_Soldier_lite_Fmedium", "RyanZombieB_Soldier_lite_F_1medium", "RyanZombieB_Soldier_02_fslow", "RyanZombieB_Soldier_02_f_1slow", "RyanZombieB_Soldier_02_f_1_1slow", "RyanZombieB_Soldier_03_fslow", "RyanZombieB_Soldier_03_f_1slow", "RyanZombieB_Soldier_03_f_1_1slow", "RyanZombieB_Soldier_04_fslow", "RyanZombieB_Soldier_04_f_1slow", "RyanZombieB_Soldier_04_f_1_1slow", "RyanZombieB_Soldier_lite_Fslow", "RyanZombieB_Soldier_lite_F_1slow", "RyanZombieboss1", "RyanZombieboss2", "RyanZombieboss3", "RyanZombieboss4", "RyanZombieboss5", "RyanZombieboss6", "RyanZombieboss7", "RyanZombieboss8", "RyanZombieboss9", "RyanZombieboss10", "RyanZombieboss11", "RyanZombieboss12", "RyanZombieboss13", "RyanZombieboss14", "RyanZombieB_RangeMaster_F", "RyanZombieB_Soldier_05_f", "RyanZombieB_RangeMaster_Fmedium", "RyanZombieB_Soldier_05_fmedium", "RyanZombieB_RangeMaster_Fslow", "RyanZombieB_Soldier_05_fslow", "RyanZombieC_man_1Opfor", "RyanZombieC_man_polo_1_FOpfor", "RyanZombieC_man_polo_2_FOpfor", "RyanZombieC_man_polo_4_FOpfor", "RyanZombieC_man_polo_5_FOpfor", "RyanZombieC_man_polo_6_FOpfor", "RyanZombieC_man_p_fugitive_FOpfor", "RyanZombieC_man_w_worker_FOpfor", "RyanZombieC_scientist_FOpfor", "RyanZombieC_man_hunter_1_FOpfor", "RyanZombieC_man_pilot_FOpfor", "RyanZombieC_journalist_FOpfor", "RyanZombieC_OrestesOpfor", "RyanZombieC_NikosOpfor", "RyanZombieC_man_1mediumOpfor", "RyanZombieC_man_polo_1_FmediumOpfor", "RyanZombieC_man_polo_2_FmediumOpfor", "RyanZombieC_man_polo_4_FmediumOpfor", "RyanZombieC_man_polo_5_FmediumOpfor", "RyanZombieC_man_polo_6_FmediumOpfor", "RyanZombieC_man_p_fugitive_FmediumOpfor", "RyanZombieC_man_w_worker_FmediumOpfor", "RyanZombieC_scientist_FmediumOpfor", "RyanZombieC_man_hunter_1_FmediumOpfor", "RyanZombieC_man_pilot_FmediumOpfor", "RyanZombieC_journalist_FmediumOpfor", "RyanZombieC_OrestesmediumOpfor", "RyanZombieC_NikosmediumOpfor", "RyanZombieC_man_1slowOpfor", "RyanZombieC_man_polo_1_FslowOpfor", "RyanZombieC_man_polo_2_FslowOpfor", "RyanZombieC_man_polo_4_FslowOpfor", "RyanZombieC_man_polo_5_FslowOpfor", "RyanZombieC_man_polo_6_FslowOpfor", "RyanZombieC_man_p_fugitive_FslowOpfor", "RyanZombieC_man_w_worker_FslowOpfor", "RyanZombieC_scientist_FslowOpfor", "RyanZombieC_man_hunter_1_FslowOpfor", "RyanZombieC_man_pilot_FslowOpfor", "RyanZombieC_journalist_FslowOpfor", "RyanZombieC_OrestesslowOpfor", "RyanZombieC_NikosslowOpfor", "RyanZombieB_Soldier_02_fOpfor", "RyanZombieB_Soldier_02_f_1Opfor", "RyanZombieB_Soldier_02_f_1_1Opfor", "RyanZombieB_Soldier_03_fOpfor", "RyanZombieB_Soldier_03_f_1Opfor", "RyanZombieB_Soldier_03_f_1_1Opfor", "RyanZombieB_Soldier_04_fOpfor", "RyanZombieB_Soldier_04_f_1Opfor", "RyanZombieB_Soldier_04_f_1_1Opfor", "RyanZombieB_Soldier_lite_FOpfor", "RyanZombieB_Soldier_lite_F_1Opfor", "RyanZombieB_Soldier_02_fmediumOpfor", "RyanZombieB_Soldier_02_f_1mediumOpfor", "RyanZombieB_Soldier_02_f_1_1mediumOpfor", "RyanZombieB_Soldier_03_fmediumOpfor", "RyanZombieB_Soldier_03_f_1mediumOpfor", "RyanZombieB_Soldier_03_f_1_1mediumOpfor", "RyanZombieB_Soldier_04_fmediumOpfor", "RyanZombieB_Soldier_04_f_1mediumOpfor", "RyanZombieB_Soldier_04_f_1_1mediumOpfor", "RyanZombieB_Soldier_lite_FmediumOpfor", "RyanZombieB_Soldier_lite_F_1mediumOpfor", "RyanZombieB_Soldier_02_fslowOpfor", "RyanZombieB_Soldier_02_f_1slowOpfor", "RyanZombieB_Soldier_02_f_1_1slowOpfor", "RyanZombieB_Soldier_03_fslowOpfor", "RyanZombieB_Soldier_03_f_1slowOpfor", "RyanZombieB_Soldier_03_f_1_1slowOpfor", "RyanZombieB_Soldier_04_fslowOpfor", "RyanZombieB_Soldier_04_f_1slowOpfor", "RyanZombieB_Soldier_04_f_1_1slowOpfor", "RyanZombieB_Soldier_lite_FslowOpfor", "RyanZombieB_Soldier_lite_F_1slowOpfor", "RyanZombieboss1Opfor", "RyanZombieboss2Opfor", "RyanZombieboss3Opfor", "RyanZombieboss4Opfor", "RyanZombieboss5Opfor", "RyanZombieboss6Opfor", "RyanZombieboss7Opfor", "RyanZombieboss8Opfor", "RyanZombieboss9Opfor", "RyanZombieboss10Opfor", "RyanZombieboss11Opfor", "RyanZombieboss12Opfor", "RyanZombieboss13Opfor", "RyanZombieboss14Opfor", "RyanZombieB_RangeMaster_FOpfor", "RyanZombieB_Soldier_05_fOpfor", "RyanZombieB_RangeMaster_FmediumOpfor", "RyanZombieB_Soldier_05_fmediumOpfor", "RyanZombieB_RangeMaster_FslowOpfor", "RyanZombieB_Soldier_05_fslowOpfor", "RyanZombieSpider1", "RyanZombieSpider2", "RyanZombieSpider3", "RyanZombieSpider4", "RyanZombieSpider5", "RyanZombieSpider6", "RyanZombieSpider7", "RyanZombieSpider8", "RyanZombieSpider9", "RyanZombieSpider10", "RyanZombieSpider11", "RyanZombieSpider12", "RyanZombieSpider13", "RyanZombieSpider14", "RyanZombieSpider1Opfor", "RyanZombieSpider2Opfor", "RyanZombieSpider3Opfor", "RyanZombieSpider4Opfor", "RyanZombieSpider5Opfor", "RyanZombieSpider6Opfor", "RyanZombieSpider7Opfor", "RyanZombieSpider8Opfor", "RyanZombieSpider9Opfor", "RyanZombieSpider10Opfor", "RyanZombieSpider11Opfor", "RyanZombieSpider12Opfor", "RyanZombieSpider13Opfor", "RyanZombieSpider14Opfor"];
_suoni =  ["zomb1","zomb2","zomb3"];

_marker = zombiemkr select 0;

	while {true} do {
		{
			if (player distance getmarkerpos _x < player distance getmarkerpos _marker) then
			{
				_marker = _x;
			};
			sleep 0.01;
		}foreach zombiemkr;

		if (player distance getmarkerpos _marker < markerdist) then
		{
			if (count zarray < zombielimit) then {
				_pos = [(position player select 0) + floor (random 400)-200, (position player select 1) +floor (random 400)-200, 0];
				_type = _units call BIS_fnc_selectRandom;
				_type createUnit [_pos, groupZMB,"[this]spawn fncZcontact;"];
				sleep 0.2;
			};
		}
		else {sleep 3;};
		sleep 1;
		_rand = floor (random 2);
		if (count zarray >2 && _rand > 0) then
		{
			_one = zarray call BIS_fnc_selectRandom;
			_two = _suoni call BIS_fnc_selectRandom;
			_one say3d _two;
		};
		
		if (zdebugging > 0) then
		{
			if (!isdedicated) then 
			{
				hintsilent format ["DEBUGGING MENU\n>single player<\n\n>Spawned zombies: %1\n>Nearest Marker: %2m",(count zarray),floor (player distance getmarkerpos _marker)];
			}else
			{
				hintsilent format ["DEBUGGING MENU\n>dedicated server<\n\n>Spawned zombies: %1\n>Nearest Marker: %2m",(count zarray),floor (player distance getmarkerpos _marker)];
			};
		};
	};
