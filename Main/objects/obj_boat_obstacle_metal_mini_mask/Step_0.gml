/// @description Insert description here
// You can write your code in this editor


if instance_exists(fol){

x = fol.x;
y = fol.y;
#region Получение урона



//fnc_boat_take_dmg_obstacle()

fnc_boat_take_dmg_pistol(0)
fnc_boat_take_dmg_fastshot(0,0)
fnc_boat_take_dmg_dual_pistol(0,0,0) 
fnc_boat_take_dmg_blunderbuss(0)
fnc_boat_take_dmg_parrotcage(0,0,0,0)
fnc_boat_take_dmg_cannon(0) 

#endregion
} else {
	instance_destroy();	
}