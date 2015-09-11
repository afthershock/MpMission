
[]spawn 
	{

	while {true} do 
		{
		uiSleep 60;
		{if(!isPlayer x)then
			{
				deleteVehicle x;
			};
		}	count ([13500,12000,0] nearEntities ["Exile_Unit_GhostPlayer",700]);
		diag_log "[GHOST PLAYER CLEANUP] >>--- Completed!!"; 
		};
};