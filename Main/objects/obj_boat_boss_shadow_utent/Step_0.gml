/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case 0:
		#region выстрелы
		t++;
		if (t = t_max) {
		    t = 0;
			instance_create_depth(x,y,depth-1,obj_boat_boss_shadow_tent_projectile)
		}
		#endregion
		break;		
	case 1:
		break;
}

#region Попадание

fnc_boat_take_dmg_pistol(random_range(-16,8),random_range(-16,16),depth-1000,random_range(-16,8),random_range(-16,16),depth-1000)
fnc_boat_take_dmg_parrotcage(random_range(-16,8),random_range(-16,16),depth-1000);
fnc_boat_take_dmg_blunderbuss(random_range(-16,8),random_range(-16,16),depth-1000);
fnc_boat_take_dmg_fastshot(random_range(-16,8),random_range(-16,16),depth-1000);

if enemy_hp <=0
{
    instance_destroy();

}

#endregion   