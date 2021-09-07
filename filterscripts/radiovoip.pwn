#include <a_samp>
#include <Pawn.CMD>
#include <sampvoice>
#include <sscanf2>

#define MAX_FREQUENCIAS 50

new SV_GSTREAM:StreamFreq[MAX_FREQUENCIAS] = SV_NULL;
new IDStream[MAX_PLAYERS];

public OnFilterScriptInit()
{
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	return 1;
}

public SV_VOID:OnPlayerActivationKeyPress(SV_UINT:playerid, SV_UINT:keyid)
{
	if(keyid == 0x42 && IDStream[playerid] >= 1)
	{
		SvAttachSpeakerToStream(StreamFreq[IDStream[playerid]], playerid);
		SendClientMessage(playerid, -1, "Botao Ativado(Em Ligacao)");
	}
	if(keyid == 0x42)
	{
		SendClientMessage(playerid, -1, "Botao Ativado");
	}
}

public SV_VOID:OnPlayerActivationKeyRelease(SV_UINT:playerid, SV_UINT:keyid)
{
	if(keyid == 0x42 && IDStream[playerid] >= 1)
	{
		SvDetachSpeakerFromStream(StreamFreq[IDStream[playerid]], playerid);
		SendClientMessage(playerid, -1, "Botao Desativado(Em Ligacao)");
	}
	if(keyid == 0x42)
	{
		SendClientMessage(playerid, -1, "Botao Desativado!");
	}
}

public OnPlayerConnect(playerid)
{
    if (SvGetVersion(playerid) == SV_NULL)
    {
        SendClientMessage(playerid, -1, "Voip nao encontrado.");
    }
    else if (SvHasMicro(playerid) == SV_FALSE)
    {
        SendClientMessage(playerid, -1, "Microfone nao encontrado.");
    }
	else
	{
		SendClientMessage(playerid, -1, "Voip Conectado Com Sucesso!");
        SvAddKey(playerid, 0x42);
    }
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

cmd:freq(playerid, params[])
{
	new id;
	if(sscanf(params, "d", id)) return SendClientMessage(playerid, -1, "Uso: /freq [frequencia]");
	if(id > 50 || id < 0) return SendClientMessage(playerid, 0xFF0000FF, "Frequencia Invalida!");
	if(id == 0)
	{
		SendClientMessage(playerid, -1, "Radio Desligado com sucesso!");
		StreamFreq[IDStream[playerid]] = SV_NULL;
	}

	IDStream[playerid] = id;

	if(StreamFreq[IDStream[id]] == SV_NULL)
	{
		StreamFreq[IDStream[id]] = SvCreateGStream(0xFF00FFFF, "Radio");
		SvAttachListenerToStream(StreamFreq[IDStream[id]], playerid);
 	}
 	else
 	{
    	SvAttachListenerToStream(StreamFreq[IDStream[id]], playerid);
	}
	return 1;
}
