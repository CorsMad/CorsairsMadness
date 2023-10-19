/// @description Insert description here
// You can write your code in this editor

/*
  0 - //выстрелы правой клешней вверх большим снарядом
  1 - //призыв скелетов
  2 - // если есть стена - выпуск тины и бочка с пушкой
*/

switch(state)
{
	case 0:
		#region выстрелы правой клешней вверх большим снарядом
		
		t++;
        if (t < 40 || t > 95) {image_speed = 1;sprite_index = spr_boat_boss_vulcano_idle;} else image_speed = 0;
        
        #region anim
        switch(t)
        {
            case 45:
                sprite_index = spr_boat_boss_vulcano_attack11;
                image_index = 0;
                break;
            case 50:
                image_index = 1;
                break;
            case 80:
                image_index = 2;
                instance_create_depth(x+random_range(18,22),y-random_range(32,36),depth-1,obj_sfx2);
                instance_create_depth(x+20,y-31,depth-1,obj_boat_boss_vulcano_proj_2_1);
                break;
            case 85:
                image_index = 1;
                break;
            case 90:
                image_index = 0;
                break;
            case 400:
                state = 1;
                t = 0;
                break;
        }
        #endregion	
		
		#endregion
		break;	
	case 1:
		#region Призыв скелетов
        if t < 250 t++;
        
        if (t < 30 || t > 180) {image_speed = 1;sprite_index = spr_boat_boss_vulcano_idle;} else image_speed = 0;
        
        
        switch(t)
        {
            case 35:
                sprite_index = spr_boat_boss_vulcano_attack21;
                image_index = 0;
                break;
            case 40:
                image_index = 1;
                break;
            case 45:
                image_index = 2;
                break;
            case 50:
                image_index = 3;
                fnc_snd_play_onetime(snd_enemy_boss2_attack);
                instance_create_depth(512,choose(0,48,96,128),depth-10000,obj_boat_boss_vulcano_skeleton_approach);
                break;
            case 55:
                image_index = 4;
                break;
            case 70:
                image_index = 0;
                break;
            case 90:
                image_index = 1;
                break;
            case 95:
                image_index = 2;
                break;
            case 100:
                image_index = 3;
                fnc_snd_play_onetime(snd_enemy_boss2_attack);
                instance_create_depth(512,choose(0,48,96,128),depth-10000,obj_boat_boss_vulcano_skeleton_approach);
                break;
            case 105:
                image_index = 4;
                break;
            case 120:
                image_index = 0;
                break;
            case 140:
                image_index = 1;
                break;
            case 145:
                image_index = 2;
                break;
            case 150:
                image_index = 3;
                fnc_snd_play_onetime(snd_enemy_boss2_attack);
                instance_create_depth(512,choose(0,48,96,128),depth-10000,obj_boat_boss_vulcano_skeleton_approach);
                break;
            case 155:
                image_index = 4;
                break;
            case 180:
                image_index = 0;
                break;
        }
        
        
        if t > 160 && !instance_exists(obj_boat_boss_vulcano_skeleton_approach) && !instance_exists(obj_skeleton_surf_pointing_2hp)
        {
            t = 0;
            state = 2;
        }
        
		#endregion
		break;
	case 2:
		t++;
		if t = 10{
		if instance_exists(obj_boat_boss_vulcano_1_wall){
			obj_boat_boss_vulcano_1_wall.isOn = 1;	
		}
		}
		if t = 50{
			t = 0 ;
			state = 0;
		}
		break;
}	

#region смерть

if enemy_hp <= 0
{
    instance_create_depth(x,y,depth,obj_boat_boss_vulcano_death2);
    instance_destroy();
}
#endregion

#region получение урона

fnc_boat_take_dmg_pistol(1)

fnc_boat_take_dmg_dual_pistol(0.4,0.6,0.8) 

fnc_boat_take_dmg_cannon(10) 

fnc_boat_take_dmg_parrotcage(1,1.4,1.8,2)

fnc_boat_take_dmg_blunderbuss(0.5)

fnc_boat_take_dmg_fastshot(0.5,1)

#endregion
