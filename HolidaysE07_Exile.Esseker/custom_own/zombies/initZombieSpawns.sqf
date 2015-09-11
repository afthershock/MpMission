// Credits to ryandombrowsky (http://www.armaholic.com/page.php?id=28958) for Zombies & Demons


//Let the spawning BEGIN!
diag_log "Creating Zombie Logic";


_groupLogiccenter = createCenter sideLogic;
_groupLogic = createGroup _groupLogiccenter;

_groupEastcenter = createCenter east;
_groupEast = createGroup _groupEastcenter;


_logic_Ryanzombieslogicroam = "Ryanzombieslogicroam" createUnit [[15390.267,16814.582,18.199644], _groupLogic];
_logic_Ryanzombieslogicdelete = "Ryanzombieslogicdelete" createUnit [[15269.801,16699.918,17.91], _groupLogic];


_logic_Ryanzombieslogicroam = "Ryanzombieslogicroam" createUnit [[15390.267,16814.582,18.199644], _groupLogic];

diag_log "Finished Zombie Logic";
diag_log "Creating Zombie Spawners";

[_groupLogic,[10060.8,9900.43,0.417704], "ZombieTest1"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[1948.82,7816.21,0.556135], "ZombieTest2"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[3158.8,6068.87,0.499222], "ZombieTest3"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[1997.25,4184.27,0.63502], "ZombieTest4"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[10874.2,5473.09,0.860757], "ZombieTest5"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[10533.6,5468.17,0.860757], "ZombieTest6"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[10240.3,5566.78,0.860757], "ZombieTest7"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[9912.5,5674.39,0.860757], "ZombieTest8"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[9444.44,5589.06,0.860757], "ZombieTest9"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[8629.77,5697.22,0.860757], "ZombieTest10"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[8343.9,5736.57,0.860757], "ZombieTest11"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[7838.86,5620.74,0.860757], "ZombieTest12"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[6478.97,5447.83,0.860757], "ZombieTest13"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[10944,5610.86,0.860757], "ZombieTest14"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[8681.73,5478.53,0.860757], "ZombieTest15"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[4873.07,5104.96,0.860757], "ZombieTest16"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[8065.96,5493.51,0.860757], "ZombieTest17"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[11934.7,7864.23,0.860757], "ZombieTest18"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[11760.2,7973.89,0.860757], "ZombieTest19"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[10127.8,7926.16,0.860757], "ZombieTest20"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[3048.96,6032.54,0.860757], "ZombieTest21"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[2707.64,6111.23,0.860757], "ZombieTest22"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[1939.67,4184.39,0.860757], "ZombieTest23"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[3067.9,6104.81,0.860757], "ZombieTest24"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[6344.08,6187.67,0.860757], "ZombieTest25"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[6180.72,6206.66,0.860757], "ZombieTest26"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[2670.18,4533.55,0.860757], "ZombieTest27"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[2716.34,4662.45,0.860757], "ZombieTest28"] execVM "custom_own\zombies\createZombieSpawn.sqf";
[_groupLogic,[2683.72,4506.46,0.860757], "ZombieTest29"] execVM "custom_own\zombies\createZombieSpawn.sqf";

diag_log "Finished Zombie Spawners";
