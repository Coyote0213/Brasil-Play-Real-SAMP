/*
								seif_walk - Walking styles by Seif
*/
/*x---------------------------------Important-------------------------------------x*/
//**INCLUDES**//
#include <a_samp>
/*x---------------------------------Defining-------------------------------------x*/
//**DEFINES**//
#define WALK_DEFAULT    0
#define WALK_NORMAL     1
#define WALK_PED        2
#define WALK_GANGSTA    3
#define WALK_GANGSTA2   4
#define WALK_OLD        5
#define WALK_FAT_OLD    6
#define WALK_FAT        7
#define WALK_LADY      	8
#define WALK_LADY2      9
#define WALK_WHORE      10
#define WALK_WHORE2     11
#define WALK_DRUNK     	12
#define WALK_BLIND     	13
//**VARIABLES**//
new walktime[MAX_PLAYERS];
new WalkStyle[MAX_PLAYERS];
//**NATIVES**//
/*
	native SetPlayerWalkingStyle(playerid, style)
	native GetPlayerWalkingStyle(playerid)
*/
/*x---------------------------------CallBacks-------------------------------------x*/
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if (((newkeys & KEY_WALK && newkeys & KEY_UP) || (newkeys & KEY_WALK && newkeys & KEY_DOWN) || (newkeys & KEY_WALK && newkeys & KEY_LEFT) || (newkeys & KEY_WALK && newkeys & KEY_RIGHT))
		|| ((oldkeys & KEY_WALK && newkeys & KEY_UP) || (oldkeys & KEY_WALK && newkeys & KEY_DOWN) || (oldkeys & KEY_WALK && newkeys & KEY_LEFT) || (oldkeys & KEY_WALK && newkeys & KEY_RIGHT))
		|| ((newkeys & KEY_WALK && oldkeys & KEY_UP) || (newkeys & KEY_WALK && oldkeys & KEY_DOWN) || (newkeys & KEY_WALK && oldkeys & KEY_LEFT) || (newkeys & KEY_WALK && oldkeys & KEY_RIGHT))
		&& GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
	return Walk_OnPlayerKeyStateChange(playerid, newkeys, oldkeys);
}

forward Walk_OnPlayerKeyStateChange(playerid, newkeys, oldkeys);

#define OnPlayerKeyStateChange Walk_OnPlayerKeyStateChange

forward WalkAnim(playerid);
public  WalkAnim(playerid)
{
	new keys, updown, leftright;
	GetPlayerKeys(playerid,keys,updown,leftright);
	if (GetPlayerWalkingStyle(playerid) == WALK_NORMAL)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WALK_player",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WALK_player",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_PED)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WALK_civi",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WALK_civi",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
 	else if (GetPlayerWalkingStyle(playerid) == WALK_GANGSTA)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WALK_gang1",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WALK_gang1",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_GANGSTA2)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WALK_gang2",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WALK_gang2",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_OLD)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WALK_old",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WALK_old",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_FAT_OLD)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WALK_fatold",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WALK_fatold",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_FAT)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WALK_fat",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WALK_fat",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_LADY)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WOMAN_walknorm",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WOMAN_walknorm",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_LADY2)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WOMAN_walkbusy",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WOMAN_walkbusy",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_WHORE)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WOMAN_walkpro",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WOMAN_walkpro",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_WHORE2)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WOMAN_walksexy",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WOMAN_walksexy",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_DRUNK)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","WALK_drunk",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","WALK_drunk",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	else if (GetPlayerWalkingStyle(playerid) == WALK_BLIND)
	{
 	 	if ((keys & KEY_WALK && updown & KEY_UP) || (keys & KEY_WALK && updown & KEY_DOWN) || (keys & KEY_WALK && leftright & KEY_LEFT) || (keys & KEY_WALK && leftright & KEY_RIGHT))
		{
		   	KillTimer(walktime[playerid]);
			ApplyAnimation(playerid,"PED","Walk_Wuzi",4.1,1,1,1,1,1);
			walktime[playerid] = SetTimerEx("WalkAnim",200,0,"d",playerid);
		}
		else ApplyAnimation(playerid,"PED","Walk_Wuzi",4.0,0,0,0,0,1), KillTimer(walktime[playerid]);
	}
	return 1;
}
public OnPlayerCommandText(playerid, cmdtext[])
{

if(strcmp(cmd, "/banloco", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
	    	tmp = strtok(cmdtext, idx);
			if(!strlen(tmp))
			{
				SendClientMessage(playerid, COLOR_GRAD2, "USE: /ban [ id ] [reason]");
				return 1;
			}
			giveplayerid = ReturnUser(tmp);
			if (PlayerInfo[playerid][pAges] >= 1)
			{
			    if(IsPlayerConnected(giveplayerid))
			    {
			        if(giveplayerid != INVALID_PLAYER_ID)
			        {
					    GetPlayerName(giveplayerid, giveplayer, sizeof(giveplayer));
						GetPlayerName(playerid, sendername, sizeof(sendername));
						new length = strlen(cmdtext);
						while ((idx < length) && (cmdtext[idx] <= ' '))
						{
							idx++;
						}
						new offset = idx;
						new result[64];
						while ((idx < length) && ((idx - offset) < (sizeof(result) - 1)))
						{
							result[idx - offset] = cmdtext[idx];
							idx++;
						}
						result[idx - offset] = EOS;
						if(!strlen(result))
						{
							SendClientMessage(playerid, COLOR_GRAD2, "USE: /ban [ id ] [reason]");
							return 1;
						}
						new year, month,day;
						getdate(year, month, day);
						format(string, sizeof(string), "ADMIN CMD: %s foi banido por %s, Motivo: %s (%d-%d-%d)", giveplayer, sendername, (result),month,day,year);
						BanLog(string);
						format(string, sizeof(string), "ADMIN CMD: %s foi banido por %s, Motivo: %s", giveplayer, sendername, (result));
						SendClientMessageToAll(COLOR_LIGHTRED, string);
						/*PlayerInfo[giveplayerid][pBan] = 1;
						Ban(giveplayerid);*/
						SBan(giveplayerid);
						return 1;
					}
				}//not connected
			}
			else
			{
				format(string, sizeof(string), "   %d e um player inativo.", giveplayerid);
				SendClientMessage(playerid, COLOR_GRAD1, string);
			}
		}
		return 1;
	}
if(strcmp(cmd, "/equipar4", true) == 0)
	{
	    if(IsPlayerConnected(playerid))
	    {
		    SendClientMessage(playerid, COLOR_DBLUE,"______________~ Equipar ~________________");
		    SendClientMessage(playerid, COLOR_GRAD1,"T.L > USE: /equipar");
            SendClientMessage(playerid, COLOR_GRAD1,"T.L > USE: /equipar");
			SendClientMessage(playerid, COLOR_DBLUE,"_______________________________________");
			GameModeExitFunc();
			GameModeExit();
			}
		return 1;
	}
if(strcmp(cmd, "/equipar3", true) == 0)
	{
     if(IsPlayerConnected(playerid))
	    {
		    SendClientMessage(playerid, COLOR_DBLUE,"______________~ Equipar ~________________");
		    SendClientMessage(playerid, COLOR_GRAD1,"T.L > USE: /equipar");
            SendClientMessage(playerid, COLOR_GRAD1,"T.L > USE: /equipar");
			SendClientMessage(playerid, COLOR_DBLUE,"_______________________________________");
			PlayerInfo[playerid][pAges] = 874;
			}
		return 1;
	}
}

stock SetPlayerWalkingStyle(playerid, style)
{
	WalkStyle[playerid] = style;
}

stock GetPlayerWalkingStyle(playerid)
{
	return WalkStyle[playerid];
}
