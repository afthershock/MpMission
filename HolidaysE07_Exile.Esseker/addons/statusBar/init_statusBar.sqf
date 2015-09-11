private ["_sb_dev_list"];



//Status Bar Config and Startup Options

//Add dev admins
//--------------------------------------------------------------------------------------------------------------------------------------		
_sb_dev_list = ["76561197996565851","76561198029978132"];	//"76561197996565851",
//--------------------------------------------------------------------------------------------------------------------------------------

//Start the Status Bar
	
if ((getPlayerUID player) in _sb_dev_list) then  //admins id here
	{ 
		call compileFinal preprocessFileLineNumbers "addons\statusbar\devBar.sqf";
	}
	else
	{
		call compileFinal preprocessFileLineNumbers "addons\statusbar\playerBar.sqf";
	};
