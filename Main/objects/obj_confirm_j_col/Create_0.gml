/// @description Insert description here
// You can write your code in this editor
fnc_lng_level_endurance_confirm();

index = 0;
submenu = 0;
dindex = 0;
dsubmenu = 0;
itemprice = "";

#region Выбор предмета за человека

ChoosedItem = 0;

#endregion

/*
#region humanload
menu[0, 0] = "";
menu[0, 1] = "";
menu[0, 2] = "";
menu[0, 3] = "";
menu[0, 4] = "\n\n\n\n\n\n\nCONFIRM"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
#endregion

#region human
menu[1, 0] = ""//"anchor";
menu[1, 1] = ""//"bomb";
menu[1, 2] = ""//"electroball";
menu[1, 3] = ""//"Parrot";
menu[1, 4] = "\n\n\n\n\n\n\nBACK";
#endregion

#region possessed
menu[2, 0] = "";//"Double attack";
menu[2, 1] = "";//"lunge attack";
menu[2, 2] = "";//"toss attack";
menu[2, 3] = "";//"down attack";
menu[2, 4] = "\n\n\n\n\n\n\nBACK";
#endregion

#region boat
menu[3, 0] = "";//"Rapid fire";
menu[3, 1] = "";//"Double fire";
menu[3, 2] = "";//"blunderbuss";
menu[3, 3] = "";//"Parrot cage";
menu[3, 4] = "\n\n\n\n\n\n\nBACK";
#endregion

#region Jade coins
menu[4, 0] = "";//"Rapid fire";
menu[4, 1] = "";//"Double fire";
menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
#endregion

#region Описания 

#region Человек



dHMenu[0,0] = "Deals damage on hit";
dHMenu[0,1] = "Deals damage on hit\nand bounces back";
dHMenu[0,2] = "goes through \nall the enemies \nin its path";

dHMenu[1,0] = "Spins around, dealing \ndamage to the enemy";
dHMenu[1,1] = "Spins around, \nincreasing the \nrotation radius";
dHMenu[1,2] = "Spins around, \nincreasing the \nrotation radius. \nCreates 2 bombs \nwhen hitting an enemy";

dHMenu[2,0] = "Flying a short \ndistance, damaging \nall enemies \nin its path";
dHMenu[2,1] = "Flying a greater \ndistance. Additionally, \nperiodically deals\ndamage to the enemies\nnear it";
dHMenu[2,2] = "Waving forward with \nhigh frequency, \nperiodically deals \ndamage to the enemies \nnear it";

dHMenu[3,0] = "Flying at the \nnearest enemy";
dHMenu[3,1] = "Flying at the \nnearest enemy, after \ncausing damage, \nflying at the next \nenemy";
dHMenu[3,2] = "Flies to the nearest \nenemy, explodes on \ncontact \nwithin a large radius ";

/*
dHMenu[4,0] = "Bounces back at solid objects \n2 times";
dHMenu[4,1] = "Bounces back at solid objects \n4 times";
dHMenu[4,2] = "Bounces back at solid objects \n6 times";


#endregion

#region Одержимый

dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

#endregion

#region Лодка

dBMenu[0,0] = "Shooting speed \nincreased";
dBMenu[0,1] = "Shooting speed \nincreased stronger";
dBMenu[0,2] = "Shooting speed \nis unreal";
  
dBMenu[1,0] = "Alternate firing of \ntwo guns";
dBMenu[1,1] = "Simultaneous firing \nof two guns";
dBMenu[1,2] = "Simultaneous firing \nof two guns \nwith high damage";
 
dBMenu[2,0] = "spread fire \nwith 3 bullets";
dBMenu[2,1] = "spread fire \nwith 4 bullets";
dBMenu[2,2] = "spread fire \nwith 5 bullets";
 
dBMenu[3,0] = "A parrot crashing \ninto the nearest enemy";
dBMenu[3,1] = "More frequent parrot \nreleases";
dBMenu[3,2] = "Parrots explode on \nimpact, damaging \nnearby enemies";
/*
dBMenu[4,0] = "Bounces back at solid objects \n2 times";
dBMenu[4,1] = "Bounces back at solid objects \n4 times";
dBMenu[4,2] = "Bounces back at solid objects \n6 times";

#endregion


#endregion
*/