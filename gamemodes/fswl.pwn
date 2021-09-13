#include a_samp
#include discord-connector
#include sscanf2
#include file
#include Dini

//Discord Bot
forward DCC_OnMessageCreate(DCC_Message:message);
public DCC_OnMessageCreate(DCC_Message:message){
 
    new DCC_Channel:channel;
 
    DCC_GetMessageChannel(message, channel);
 
    new DCC_User:author;
    DCC_GetMessageAuthor(message, author);

    //new bool:hasRole;
    //DCC_HasGuildMemberRole(guildName, author, adminRole, hasRole);
	
	new str[256];
    new command[32], params[128];
 
    DCC_GetMessageContent(message, str); 
 
    sscanf(str, "s[32]s[128]", command, params);
	if(!strcmp(command, "!wl!", true)){
		new nomeplayer[128];
		sscanf(params, "s", nomeplayer);
		new file[128];
		format(file,sizeof(file),"Whitelist/%s.ini",nomeplayer);
		fopen(file);
		new WLMessage[999];
		format(WLMessage,sizeof(WLMessage),"{0000FF}AVISO:{FFFFFF} O usuario %s foi adicionado na Whitelist por BOT_DISCORD!", nomeplayer);
		SendClientMessageToAll(-1,WLMessage);
	}
    return 1;
}