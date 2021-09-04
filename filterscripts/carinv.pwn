#include <a_samp>
#include <zcmd>
#include <sscanf2>
 
enum iVeh {
	Vehicle[10],
	bool:SpawnCar
}
new InveVehicle[MAX_PLAYERS][iVeh];
new VehCar[MAX_PLAYERS];
 
new VehicleNames[][] =
{
    "Landstalker", "Bravura", "Buffalo", "Linerunner", "Perrenial", "Sentinel",
    "Dumper", "Firetruck", "Trashmaster", "Stretch", "Manana", "Infernus",
    "Voodoo", "Pony", "Mule", "Cheetah", "Ambulance", "Leviathan", "Moonbeam",
    "Esperanto", "Taxi", "Washington", "Bobcat", "Whoopee", "BF Injection",
    "Hunter", "Premier", "Enforcer", "Securicar", "Banshee", "Predator", "Bus",
    "Rhino", "Barracks", "Hotknife", "Trailer", "Previon", "Coach", "Cabbie",
    "Stallion", "Rumpo", "RC Bandit", "Romero", "Packer", "Monster", "Admiral",
    "Squalo", "Seasparrow", "Pizzaboy", "Tram", "Trailer", "Turismo", "Speeder",
    "Reefer", "Tropic", "Flatbed", "Yankee", "Caddy", "Solair", "Berkley's RC Van",
    "Skimmer", "PCJ-600", "Faggio", "Freeway", "RC Baron", "RC Raider", "Glendale",
    "Oceanic","Sanchez", "Sparrow", "Patriot", "Quad", "Coastguard", "Dinghy",
    "Hermes", "Sabre", "Rustler", "ZR-350", "Walton", "Regina", "Comet", "BMX",
    "Burrito", "Camper", "Marquis", "Baggage", "Dozer", "Maverick", "News Chopper",
    "Rancher", "FBI Rancher", "Virgo", "Greenwood", "Jetmax", "Hotring", "Sandking",
    "Blista Compact", "Police Maverick", "Boxville", "Benson", "Mesa", "RC Goblin",
    "Hotring Racer A", "Hotring Racer B", "Bloodring Banger", "Rancher", "Super GT",
    "Elegant", "Journey", "Bike", "Mountain Bike", "Beagle", "Cropduster", "Stunt",
    "Tanker", "Roadtrain", "Nebula", "Majestic", "Buccaneer", "Shamal", "Hydra",
    "FCR-900", "NRG-500", "HPV1000", "Cement Truck", "Tow Truck", "Fortune",
    "Cadrona", "FBI Truck", "Willard", "Forklift", "Tractor", "Combine", "Feltzer",
    "Remington", "Slamvan", "Blade", "Freight", "Streak", "Vortex", "Vincent",
    "Bullet", "Clover", "Sadler", "Firetruck", "Hustler", "Intruder", "Primo",
    "Cargobob", "Tampa", "Sunrise", "Merit", "Utility", "Nevada", "Yosemite",
    "Windsor", "Monster", "Monster", "Uranus", "Jester", "Sultan", "Stratium",
    "Elegy", "Raindance", "RC Tiger", "Flash", "Tahoma", "Savanna", "Bandito",
    "Freight Flat", "Streak Carriage", "Kart", "Mower", "Dune", "Sweeper",
    "Broadway", "Tornado", "AT-400", "DFT-30", "Huntley", "Stafford", "BF-400",
    "News Van", "Tug", "Trailer", "Emperor", "Wayfarer", "Euros", "Hotdog", "Club",
    "Freight Box", "Trailer", "Andromada", "Dodo", "RC Cam", "Launch", "Police Car",
    "Police Car", "Police Car", "Police Ranger", "Picador", "S.W.A.T", "Alpha",
    "Phoenix", "Glendale", "Sadler", "Luggage", "Luggage", "Stairs", "Boxville",
    "Tiller", "Utility Trailer"
};
 
public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print("Inventory Vehicle By Vict9r");
	print("--------------------------------------\n");
	return 1;
}
 
public OnFilterScriptExit()
{
	return 1;
}
 
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys == KEY_YES)
    {
		if(!IsPlayerInAnyVehicle(playerid))
		{//vehName
			new StrCash[550];
			for(new slot; slot < 10; slot++)
			{
				if(InveVehicle[playerid][Vehicle][slot] != 0)
					format(StrCash, sizeof(StrCash), "%s{ffffff}Slot %i\t{ffffff}%s\n", StrCash, slot, VehicleNames[InveVehicle[playerid][Vehicle][slot]-400]);
				else
					format(StrCash, sizeof(StrCash), "%s{ffffff}Slot %i\t{ffffff}Vazio\n", StrCash, slot);
			}
			ShowPlayerDialog(playerid, 666 , DIALOG_STYLE_LIST , "Inventario" , StrCash , "Spawnar" , "Fechar");
		}
    }
}
 
CMD:setcar(playerid,params[]){
	new id,vehid;
   	if(sscanf(params, "ii",id,vehid)) return SendClientMessage(playerid, -1, "{DF0101}[BORP]{FFFFFF}/setcar [ID DO JOGADOR] [ID VEH] ");
	for(new i = 0; i < 10; ++i)
	{
		if(InveVehicle[id][Vehicle][i] == 0)
		{
			InveVehicle[id][Vehicle][i] = vehid;
			SendClientMessage(playerid, -1, "Veiculo de inventario setado  para o jogador.");
			return 1;
		}
	}
	SendClientMessage(playerid, -1, "Inventario desse jogador esta cheio.");
	return 1;
}
public OnPlayerExitVehicle(playerid, vehicleid) {
	if(VehCar[playerid] >= 1){
	    DestroyVehicle(VehCar[playerid]);
	    InveVehicle[playerid][SpawnCar] = false;
	}
	return 1;
}
 
public OnPlayerDisconnect(playerid, reason){
	if(VehCar[playerid] >= 1){
	    DestroyVehicle(VehCar[playerid]);
	    InveVehicle[playerid][SpawnCar] = false;
	}
	return 1;
}
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case 666: if(response)
		{
			if(InveVehicle[playerid][SpawnCar] == true) return SendClientMessage(playerid, -1, "Voce ja esta com um veiculo spawnado.");
			new Float:x, Float:y, Float:z;
	        GetPlayerPos(playerid, x, y, z);
	        VehCar[playerid] = AddStaticVehicleEx(InveVehicle[playerid][Vehicle][listitem],x,y+2.0,z+1.0,0,1,1,false);
            PutPlayerInVehicle(playerid,VehCar[playerid],0);
            InveVehicle[playerid][SpawnCar] = true;
			return 1;
		}
	}
	return 1;
}