#include <a_samp>
//* ======================================================================== *//
new Text:Textdraw0;
new Text:Textdraw1;
new Text:Textdraw2;
new Text:Textdraw3;
new Text:Textdraw4;
new Text:Textdraw5;
new Text:Textdraw6;
new Text:Textdraw7;
new Text:Textdraw8;
new Text:Textdraw9;
new Text:Textdraw10;
//* ======================================================================== *//
public OnGameModeInit()
{
	Textdraw0 = TextDrawCreate(581.253479, 99.033348, "B");
	TextDrawLetterSize(Textdraw0, 0.576996, 3.051667);
	TextDrawAlignment(Textdraw0, 1);
	TextDrawColor(Textdraw0, -1);
	TextDrawSetShadow(Textdraw0, 0);
	TextDrawBackgroundColor(Textdraw0, 255);
	TextDrawFont(Textdraw0, 1);
	TextDrawSetProportional(Textdraw0, 1);

	Textdraw1 = TextDrawCreate(598.249328, 99.033348, "P");
	TextDrawLetterSize(Textdraw1, 0.576996, 3.051667);
	TextDrawAlignment(Textdraw1, 1);
	TextDrawColor(Textdraw1, 41215);
	TextDrawSetShadow(Textdraw1, 0);
	TextDrawBackgroundColor(Textdraw1, 255);
	TextDrawFont(Textdraw1, 1);
	TextDrawSetProportional(Textdraw1, 1);

	Textdraw2 = TextDrawCreate(614.745300, 99.633338, "R");
	TextDrawLetterSize(Textdraw2, 0.576996, 3.051667);
	TextDrawAlignment(Textdraw2, 1);
	TextDrawColor(Textdraw2, -1);
	TextDrawSetShadow(Textdraw2, 0);
	TextDrawBackgroundColor(Textdraw2, 255);
	TextDrawFont(Textdraw2, 1);
	TextDrawSetProportional(Textdraw2, 1);

	Textdraw3 = TextDrawCreate(570.479919, 128.066467, "Role");
	TextDrawLetterSize(Textdraw3, 0.400000, 1.600000);
	TextDrawAlignment(Textdraw3, 1);
	TextDrawColor(Textdraw3, -1);
	TextDrawSetShadow(Textdraw3, 0);
	TextDrawBackgroundColor(Textdraw3, 255);
	TextDrawFont(Textdraw3, 1);
	TextDrawSetProportional(Textdraw3, 1);

	Textdraw4 = TextDrawCreate(602.503723, 127.933250, "Play");
	TextDrawLetterSize(Textdraw4, 0.400000, 1.600000);
	TextDrawAlignment(Textdraw4, 1);
	TextDrawColor(Textdraw4, 41215);
	TextDrawSetShadow(Textdraw4, 0);
	TextDrawBackgroundColor(Textdraw4, 255);
	TextDrawFont(Textdraw4, 1);
	TextDrawSetProportional(Textdraw4, 1);

	Textdraw5 = TextDrawCreate(290.190582, 20.116666, "Play");
	TextDrawLetterSize(Textdraw5, 0.508998, 2.139999);
	TextDrawAlignment(Textdraw5, 1);
	TextDrawColor(Textdraw5, -1);
	TextDrawSetShadow(Textdraw5, 0);
	TextDrawBackgroundColor(Textdraw5, 255);
	TextDrawFont(Textdraw5, 1);
	TextDrawSetProportional(Textdraw5, 1);

	Textdraw6 = TextDrawCreate(315.715423, 37.847949, "Real");
	TextDrawLetterSize(Textdraw6, 0.478998, 2.299999);
	TextDrawAlignment(Textdraw6, 1);
	TextDrawColor(Textdraw6, 41215);
	TextDrawSetShadow(Textdraw6, 0);
	TextDrawBackgroundColor(Textdraw6, 255);
	TextDrawFont(Textdraw6, 1);
	TextDrawSetProportional(Textdraw6, 1);

	Textdraw7 = TextDrawCreate(280.629699, 25.499986, "box");
	TextDrawLetterSize(Textdraw7, 0.000000, -1.291364);
	TextDrawTextSize(Textdraw7, 354.000000, 0.000000);
	TextDrawAlignment(Textdraw7, 1);
	TextDrawColor(Textdraw7, -1);
	TextDrawUseBox(Textdraw7, 1);
	TextDrawBoxColor(Textdraw7, -1);
	TextDrawSetShadow(Textdraw7, 0);
	TextDrawBackgroundColor(Textdraw7, -1);
	TextDrawFont(Textdraw7, 1);
	TextDrawSetProportional(Textdraw7, 1);

	Textdraw8 = TextDrawCreate(280.629699, 24.599983, "box");
	TextDrawLetterSize(Textdraw8, 0.000000, -1.291364);
	TextDrawTextSize(Textdraw8, 354.000000, 0.000000);
	TextDrawAlignment(Textdraw8, 1);
	TextDrawColor(Textdraw8, -1);
	TextDrawUseBox(Textdraw8, 1);
	TextDrawBoxColor(Textdraw8, -1);
	TextDrawSetShadow(Textdraw8, 0);
	TextDrawBackgroundColor(Textdraw8, -1);
	TextDrawFont(Textdraw8, 1);
	TextDrawSetProportional(Textdraw8, 1);

	Textdraw9 = TextDrawCreate(281.498321, 63.099922, "box");
	TextDrawLetterSize(Textdraw9, 0.000000, -1.291364);
	TextDrawTextSize(Textdraw9, 352.400024, 0.000000);
	TextDrawAlignment(Textdraw9, 1);
	TextDrawColor(Textdraw9, -1);
	TextDrawUseBox(Textdraw9, 1);
	TextDrawBoxColor(Textdraw9, -1);
	TextDrawSetShadow(Textdraw9, 0);
	TextDrawBackgroundColor(Textdraw9, -1);
	TextDrawFont(Textdraw9, 1);
	TextDrawSetProportional(Textdraw9, 1);
	
	Textdraw10 = TextDrawCreate(581.253479, 99.033348, "B");
	TextDrawLetterSize(Textdraw10, 0.576996, 3.051667);
	TextDrawAlignment(Textdraw10, 1);
	TextDrawColor(Textdraw10, -1);
	TextDrawSetShadow(Textdraw10, 0);
	TextDrawBackgroundColor(Textdraw10, 255);
	TextDrawFont(Textdraw10, 1);
	TextDrawSetProportional(Textdraw10, 1);

	return 1;
}
//* ======================================================================== *//
public OnPlayerSpawn(playerid)
{
    TextDrawShowForPlayer(playerid, Textdraw0);
    TextDrawShowForPlayer(playerid, Textdraw1);
    TextDrawShowForPlayer(playerid, Textdraw2);
    TextDrawShowForPlayer(playerid, Textdraw3);
    TextDrawShowForPlayer(playerid, Textdraw4);
    TextDrawShowForPlayer(playerid, Textdraw5);
	TextDrawShowForPlayer(playerid, Textdraw6);
	TextDrawShowForPlayer(playerid, Textdraw7);
	TextDrawShowForPlayer(playerid, Textdraw8);
	TextDrawShowForPlayer(playerid, Textdraw9);
	TextDrawShowForPlayer(playerid, Textdraw10);
	return 1;
}
