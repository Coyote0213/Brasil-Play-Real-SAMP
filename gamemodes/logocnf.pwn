#include <a_samp>

new Text:Textdraw0;
new Text:Textdraw1;

public OnGameModeInit()
{
    Textdraw0 = TextDrawCreate(538.316284, 136.333282, "Conexao");
    TextDrawLetterSize(Textdraw0, 0.400000, 1.600000);
    TextDrawAlignment(Textdraw0, 1);
    TextDrawColor(Textdraw0, 16711935);
    TextDrawSetShadow(Textdraw0, 3);
    TextDrawBackgroundColor(Textdraw0, 255);
    TextDrawFont(Textdraw0, 2);
    TextDrawSetProportional(Textdraw0, 1);

    Textdraw1 = TextDrawCreate(573.924560, 152.666748, "Favela");
    TextDrawLetterSize(Textdraw1, 0.400000, 1.600000);
    TextDrawAlignment(Textdraw1, 1);
    TextDrawColor(Textdraw1, 65535);
    TextDrawSetShadow(Textdraw1, 2);
    TextDrawBackgroundColor(Textdraw1, 255);
    TextDrawFont(Textdraw1, 2);
    TextDrawSetProportional(Textdraw1, 1);
    return 1;
}
public OnPlayerSpawn(playerid)
{
    TextDrawShowForPlayer(playerid, Textdraw0);
    TextDrawShowForPlayer(playerid, Textdraw1);
    return 1;
}
