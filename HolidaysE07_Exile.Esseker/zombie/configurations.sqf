/*
	file: configurations.sqf
	author: corvobrok
	
	description:
	set up files
*/
//XXXXXXXXXXXXXXXXXXXXX  EDIT FROM HERE!  XXXXXXXXXXXXXXXXXXXXXXXXX
//---------general settings----------------------------------------

zombielimit= 300;		//zombies respawn afterdead, but for each unit in zone, 7 zombies will spawn
zombiedamage= 30;	//% of the damage of a zombie for a punch
zombierun = 0; 		//set 1 if zombie must run, 0 if they must walk
respawntime = 250;	//time for respawn killed zombies

zdebugging = 0;	//show the debug stats; enable with 1



//----------Only marker spawn---------------------------------------
//with this function, zombies will spawn only near markers

zombiemkr=["Z01","Z01_1","Z01_2","Z01_3","Z01_4","Z01_5","Z01_6","Z01_7","Z01_8","Z01_9","Z01_10","Z01_11","Z01_12","Z01_14","Z01_15","Z01_16","Z01_19","Z01_21","Z01_23","Z01_24","Z01_25","Z01_26",,"Z01_27","Z01_28","Z01_29","Z01_30","Z01_31","Z01_32","Z01_33","Z01_34","Z01_35","Z01_36","Z01_37","Z01_38"];	   //markers where zombie spawn
//EXAMPLE: zombiemkr=["marker1",marker2"];
//where marker1 and marker2 are marker placed on the editor

markerdist = 500;  //distance from markers where zombies spawn/despawn



//XXXXXXXXXXXXXXXXXXXXX  DON'T EDIT BELOW!  XXXXXXXXXXXXXXXXXXXXXXXXX
SideZMB = createCenter civilian;
groupZMB = createGroup civilian;
sleep 0.1;
fncZcontact = compile preprocessFile "zombie\fnc_Zcontact.sqf";
fncZproximity = compile preprocessFile "zombie\fnc_ZProximity.sqf";
fncZMarkers = compile preprocessFile "zombie\fnc_ZMarkers.sqf";
zarray=[];

if (count zombiemkr > 0) then
{[]call fncZMarkers;}
else
{[]call fncZproximity;};
