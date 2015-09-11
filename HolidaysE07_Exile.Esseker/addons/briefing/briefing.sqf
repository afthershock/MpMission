if (!hasInterface) exitWith {};
 


waitUntil {!isNull player};

player createDiarySubject ["information","Information"];
player createDiarySubject ["rules","Server Rules"];
player createDiarySubject ["community","About SoA"];
 
player createDiaryRecord["information",
["Information","

<br/>  - The Esseker map is not yet officially supported by the Exile dev team.  As such, 
			there are some features or functions that may be a little buggy.  Please
			bear with us as we fix them over the coming days and weeks until official
			support is added.
<br/>
<br/>  - DO NOT place a flag pole in any named city, town or military area.  Doing so will
			cause loot to not spawn anywhere in the area.  Esseker has too few enterable
			buildings as it is without YOU decreasing the loot even further.  Poles found in these
			areas will be deleted by admins WITHOUT NOTICE!
<br/>
<br/>  - IMPORTANT NOTE:  Any vehicles you find on the map DO NOT SAVE.  If you want to use a vehicle
			for storage or be able to lock it you must purchase the vehicle from a trader at the south-east 
			trader city.  Fresh random vehicles will be placed around the map on each restart.
<br/>

"]];
 
player createDiaryRecord ["rules",
["Server Rules","
<br/>  - NO BUILDING in any named cities, towns, or military bases!
<br/>  - NO Voice comms over Global or Side Chat
<br/>  - NO whining, complaining or making demands
<br/>  - NO racism, homophobia or hateful comments
<br/>  - NO camping spawn or trader safe zone areas
<br/>  - NO advertising other servers
<br/>  - NO spamming chat with useless garbage
<br/>  - NO duping or exploiting of glitches
<br/>  - NO totally demolishing player bases,
<br/>  - However, you may breach doors and walls to loot
<br/>  - Please report all bugs to the relevant game forums
<br/>  - Be respectful to other players and admins at all times
<br/>  - Remember that actions have consequences.  If you attack a person's base, don't whine to admins when they retaliate!
<br/>  - Most of all - HAVE FUN!!
"]];
 
 
player createDiaryRecord["community",
["About SoA","
<br/>  - TeamSpeak3 - 103.7.58.24:5555
<br/>
<br/>  - Our admin team is firm, but fair.  All we ask for is respect.
<br/>
<br/>  - We are a no cheating community.  This goes for players and admins.  
			If you suspect a player of cheating or an admin of abusing their powers, 
			please make a post on our forums and it will be investigated thoroughly.
<br/>
<br/>  - Donations are not required, but they are greatly appreciated!
<br/>
"]];