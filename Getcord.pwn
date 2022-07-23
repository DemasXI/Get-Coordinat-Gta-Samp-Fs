//Rebuild By Demasxi


CMD:getdick(playerid)
{
    new Float: pX,
        Float: pY,
        Float: pZ;

    new cord[100];
    GetPlayerPos(playerid, pX, pY, pZ);
    format(cord, sizeof cord, "Koordinat : \nX : %f Y : %f Z : %f", pX, pY, pZ);
    SendClientMessage(playerid, -1, cord);
    return 1;
}

CMD:tdick(playerid,params[])
{
	if(admin_level[playerid] == 0) return 1;

    new Float:x,Float:z,Float:y;
	if(sscanf(params,"p<,>fff",x,y,z)) return SendClientMessage(playerid,-1,"/tdick [x], [y], [z]");
	if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
	{
		SetPlayerPos(playerid,x,y,z);
		SetPlayerInterior(playerid, 0);
		SetPlayerVirtualWorld(playerid, 0);
	}
	else SetVehiclePos(GetPlayerVehicleID(playerid), x, y, z);
	return SendClientMessage(playerid,-1,"ElU Udah teleport!");
}
