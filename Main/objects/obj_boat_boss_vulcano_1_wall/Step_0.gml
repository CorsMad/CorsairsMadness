/// @description Insert description here
// You can write your code in this editor

switch(isOn)
{
	case 0:
		t = 0;
		break;
	case 1:
		t++;
		switch(t)
		{
			case 50:
				// ВЫСТРЕЛ ИЗ ВЕРХА instance_create_depth(x,y,depth,obj_b)
				break;
			case 100:
				// выстрел из низа
				break;
			case 150:
				// выстрел из середины
				break;
			case 190:
				instance_create_depth(x,y,depth,obj_powerup_barrel_cannon);
				t = 0;
				isOn = 0;
				break;
		}
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