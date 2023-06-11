/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case 0:    
        sprite_index = spr_boat_boss_shadow_tent;
		#region выстрелы
		t++;
		if (t = t_max) {
		    t = 0;
			state = 1;
            image_index = 0;
		}
		#endregion
		break;		
	case 1:
        sprite_index = spr_boat_boss_shadow_tent_attack;
        t++;        
        if t = 60
        {
            image_index = 0;
            t = 0;
            state = 0;
        }

		break;
}

#region Попадание

fnc_boat_take_dmg_pistol(random_range(-16,8),random_range(-16,16),depth-1000,random_range(-16,8),random_range(-16,16),depth-1000)
fnc_boat_take_dmg_parrotcage(random_range(-16,8),random_range(-16,16),depth-1000);
fnc_boat_take_dmg_blunderbuss(random_range(-16,8),random_range(-16,16),depth-1000);
fnc_boat_take_dmg_fastshot(random_range(-16,8),random_range(-16,16),depth-1000);

if enemy_hp <=0
{
    instance_create_depth(x,y,depth,obj_boat_boss_shadow_dutent_death);
    instance_destroy();    
}

if death = 1
{
    instance_create_depth(x,y,depth,obj_boat_boss_shadow_dutent_death);
    instance_destroy();    
}

#endregion   