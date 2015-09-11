/*
	Player Status Bar - Exile
	By: Darth_Rogue
	Date: 8/30/2015
	Notes:  Originally coded for Epoch by pix, modded extensively by Darth_Rogue.  See readme.md for additional credits
*/

waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

	_rscLayer = "statusBar" call BIS_fnc_rscLayer;
	_rscLayer cutRsc["statusBar","PLAIN"];
	systemChat format["Loading Player info...", _rscLayer];

	[] spawn 
	{

		uiSleep 5;
		//set the color values.
		//Additional color codes can be found here:  http://html-color-codes.com/
		_colourDefault 	= parseText "#adadad"; //set your default colour here
		_colour100 		= parseText "#336600";
		_colour90 		= parseText "#339900";
		_colour80 		= parseText "#33CC00";
		_colour70 		= parseText "#33FF00";
		_colour60 		= parseText "#66FF00";
		_colour50 		= parseText "#CCFF00";
		_colour40 		= parseText "#CCCC00";
		_colour30 		= parseText "#CC9900";
		_colour20 		= parseText "#CC6600";
		_colour10 		= parseText "#CC3300";
		_colour0 		= parseText "#CC0000";
		_colourDead 	= parseText "#000000";
		
	
		
	while {true} do 
	{
	
		uiSleep 1;
				
		//this is to handle instance where the status bar is disappearing 
		if(isNull ((uiNamespace getVariable "statusBar")displayCtrl 55555)) then
		{
			diag_log "statusbar is null create";
			disableSerialization;
			_rscLayer = "statusBar" call BIS_fnc_rscLayer;
			_rscLayer cutRsc["statusBar","PLAIN"];
		};		
		
		//initialize variables and set values
		_damage = round ((1 - (damage player)) * 100);
		_wallet = ExileClientPlayerMoney;
		_score = ExileClientPlayerScore;
		_gridref = mapGridPosition  player; 
		_xx = (format[_gridref]) select  [0,3]; 
		_yy = (format[_gridref]) select  [3,3];  
		_time = (round(240-(serverTime)/60));  //edit the '240' value (60*4=240) to change the countdown timer if your server restarts are shorter or longer than 4 hour intervals
		_hours = (floor(_time/60));
		_minutes = (_time - (_hours * 60));
		_fps = round diag_fps;
		
		switch(_minutes) do
	{
		case 9: {_minutes = "09"};
		case 8: {_minutes = "08"};
		case 7: {_minutes = "07"};
		case 6: {_minutes = "06"};
		case 5: {_minutes = "05"};
		case 4: {_minutes = "04"};
		case 3: {_minutes = "03"};
		case 2: {_minutes = "02"};
		case 1: {_minutes = "01"};
		case 0: {_minutes = "00"};
	};
		
		
				
		//Colour coding
		//Damage
		_colourDamage = _colourDefault;
		if(_damage >= 100) then{_colourDamage = _colour100;};
		if((_damage >= 90) && (_damage < 100)) then {_colourDamage =  _colour100;};
		if((_damage >= 80) && (_damage < 90)) then {_colourDamage =  _colour80;};
		if((_damage >= 70) && (_damage < 80)) then {_colourDamage =  _colour70;};
		if((_damage >= 60) && (_damage < 70)) then {_colourDamage =  _colour60;};
		if((_damage >= 50) && (_damage < 60)) then {_colourDamage =  _colour50;};
		if((_damage >= 40) && (_damage < 50)) then {_colourDamage =  _colour40;};
		if((_damage >= 30) && (_damage < 40)) then {_colourDamage =  _colour30;};
		if((_damage >= 20) && (_damage < 30)) then {_colourDamage =  _colour20;};
		if((_damage >= 10) && (_damage < 20)) then {_colourDamage =  _colour10;};
		if((_damage >= 1) && (_damage < 10)) then {_colourDamage =  _colour0;};
		if(_damage < 1) then{_colourDamage =  _colourDead;};
		
		
		
		
		//display the information 
		((uiNamespace getVariable "statusBar")displayCtrl 55555)ctrlSetStructuredText parseText 
			format["
			<t shadow='1' shadowColor='#000000' color='%6'><img size='1.6'  shadowColor='#000000' image='addons\statusbar\icons\players.paa' color='%6'/> %2</t>
			<t shadow='1' shadowColor='#000000' color='%6'><img size='1.0'  shadowColor='#000000' image='addons\statusbar\icons\health.paa' color='%7'/> %3%1</t> 
			<t shadow='1' shadowColor='#000000' color='%6'><img size='1.0'  shadowColor='#000000' image='addons\statusbar\icons\poptab_ca.paa' color='%6'/> %4</t> 
			<t shadow='1' shadowColor='#000000' color='%6'><img size='1.0'  shadowColor='#000000' image='addons\statusbar\icons\exile.paa' color='%6'/> %5</t> 
			<t shadow='1' shadowColor='#000000' color='%6'><img size='1.6'  shadowColor='#000000' image='addons\statusbar\icons\restart.paa' color='%6'/>%9:%10</t>
			<t shadow='1' shadowColor='#000000' color='%6'>FPS: %11</t> 
			<t shadow='1' shadowColor='#000000' color='%6'>GRIDREF: %8</t> ",
			
					"%", 
					count playableUnits,
					_damage,
					_wallet, 
					_score, 
					_colourDefault,
					_colourDamage,
					format["%1/%2",_xx,_yy], 
					_hours,
					_minutes,
					_fps
				];
		
		}; 
};
