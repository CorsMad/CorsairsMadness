/// @description Insert description here
// You can write your code in this editor


t++;
switch(t)
{
	case 1:
		for (var a1 = 0; a1 < 16; a1++) {
		    instance_create_depth(x,112+16*a1,depth,obj_boat_algae);
		}	
		break;
	case 500:
		for (var a1 = 0; a1 < 16; a1++) {
		    instance_create_depth(x,112+16*a1,depth,obj_boat_algae);
		}	
		break;
	case 999:
		instance_create_depth(x,y,depth,obj_powerup_barrel_cannon);
		t = 0;
		isOn = 0;
		break;
}



#region Разруш
if enemy_hp<=0 {
	instance_destroy();
	instance_create_depth(x,y,depth,obj_boat_boss_vulcano_1_wall_destr)
}
#endregion
#region получение урона

fnc_boat_take_dmg_pistol(0)

fnc_boat_take_dmg_dual_pistol(0,0,0) 

fnc_boat_take_dmg_cannon(1) 

fnc_boat_take_dmg_parrotcage(0,0,0,0)

fnc_boat_take_dmg_blunderbuss(0)

fnc_boat_take_dmg_fastshot(0,0)

#endregion