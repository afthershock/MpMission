_pic = "images\HDLogo.paa";
[
    '<img align=''left'' size=''1.5'' shadow=''0'' image='+(str(_pic))+' />',
    safeZoneX+safeZoneW - 0.70, //since X axis top-right is 1, we need to remove a bit to move it left
	safeZoneY+0.05, //since Y axis top right is 0, we want to add a bit to it to move it down
    99999,
    0,
    0,
    3090
] spawn bis_fnc_dynamicText;