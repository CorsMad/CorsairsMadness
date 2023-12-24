/// @description Insert description here
// You can write your code in this editor

switch(state)
{
	case 0:    
        sprite_index = spr_boat_boss_shadow_tent;
		image_speed = 1;
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
       t++;  
		
		switch(t)
		{
			case 5:sprite_index = spr_boat_boss_shadow_tent_attack;image_index = 0;image_speed = 0;break;	
			case 10:image_index = 1;break;
			case 15:image_index = 2;break;
			case 20:image_index = 3;break;
			case 25:image_index = 4;break;
			case 30:image_index = 5;break;
			case 35:image_index = 6;
			instance_create_depth(x-24,y-24,depth-1,obj_boat_boss_shadow_tent_projectile);
			break;
			case 40:image_index = 7;break;
			case 45:image_index = 8;break;
			case 50:image_index = 9;break;
			case 55:image_index = 10;break;
			case 60:
				image_index = 0;
				t = 0;
				state = 0;

		break;
		}
}

#region Попадание

fnc_boat_take_dmg_pistol(1)
fnc_boat_take_dmg_fastshot(0.6,1.3)
fnc_boat_take_dmg_dual_pistol(0.75,1,1.25) 
fnc_boat_take_dmg_blunderbuss(0.6)
fnc_boat_take_dmg_parrotcage(1,1.25,1.25,1.25)
fnc_boat_take_dmg_cannon(4) 

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