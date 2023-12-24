/// @description Insert description here
// You can write your code in this editor

/*
  0 - //выстрелы правой клешней вверх
  1 - //выстрел в игрока лазером
  2 - //выстрелы в игрока из пушки
*/

switch(state)
{
	case 0: 
		#region выстрелы правой клешней вверх
		t++;
        #region anim
        if (t < 40 || t > 110) {image_speed = 1;sprite_index = spr_boat_boss_vulcano_idle;} else image_speed = 0;
        switch(t)
        {
            case 45:
                sprite_index = spr_boat_boss_vulcano_attack11;
                image_index = 0;
                break;
            case 50:
                image_index = 1;
                break;
            case 60:
                image_index = 2;
                break;
            case 65:
                image_index = 1;
                break;
            case 70:
                image_index = 2;
                break;
            case 75:
                image_index = 1;
                break;
            case 80:
                image_index = 2;
                break;
            case 85:
                image_index = 1;
                break;
            case 90:
                image_index = 2;
                break;
            case 95:
                image_index = 1;
                break;
            case 100:
                image_index = 2;
                break;
            case 105:
                image_index = 0;
                break;
        }
        #endregion
        
		if t mod 10 = 0 && t > 50 && t < 105 
		{
            //instance_create_depth(x+21,y-34,depth-2,obj_sfx3);
			instance_create_depth(x+random_range(18,22),y-random_range(32,36),depth-1,obj_sfx2);
			instance_create_depth(x+20,y-31,depth-1,obj_boat_boss_vulcano_proj_1_1);
		}
		
		if t = 250
		{
			t = 0;
			state = 1;
		}
		
		#endregion
		break;
	case 1:
		#region выстрел в игрока лазером
		t++;
        #region anim
        if (t < 50 || t > 175) {sprite_index = spr_boat_boss_vulcano_idle;image_speed = 1;} else image_speed = 0;
        switch(t)
        {
            case 55:
                sprite_index = spr_boat_boss_vulcano_attack12;
                image_index = 0;
                break;
            case 60:    image_index = 1; break;
            case 65:    image_index = 2; break;
            case 70:    image_index = 3; break;
            case 120:   image_index = 4; break;
            case 125:   image_index = 5; break;
            case 130:   
                if instance_exists(obj_Player_boat)
                {
                    laser_x = obj_Player_boat.x;
                    laser_y = obj_Player_boat.y-8;
                }
                image_index = 6; 
                break;
            case 135:   image_index = 7; break;
            case 140:   image_index = 8; break;
            case 145:   image_index = 9; break;
            case 150:   image_index = 10;break;
            case 155:   image_index = 11;break;
            case 160:   image_index = 12;break;
            case 165:   image_index = 13;break;
            case 170:   image_index = 14;break;
            case 175:   image_index = 0; break;
        }
        
        #endregion
        
        if t > 145 && t < 160 && t mod 1 = 0
        {
            var laser = instance_create_depth(x-4,y-21,depth-1,obj_boat_boss_vulcano_proj_1_3);
            laser.dir_x = laser_x;
            laser.dir_y = laser_y;            
        }
        
        
		if t = 220 
		{
			t = 0;			
			if instance_exists(obj_boat_boss_vulcano_1_wall) 
			{
				state = 3;
			} else state = 2;
		}
	#endregion		
		break;
	case 2:
		#region выстрелы в игрока из пушки	
		t++;
        
        #region anim
        if (t < 50 || t > 160) {image_speed = 1;sprite_index = spr_boat_boss_vulcano_idle;} else image_speed = 0;
        switch(t)
        {            
            case 55:    image_index = 0;
                        sprite_index = spr_boat_boss_vulcano_attack13
                        break;
            case 60:    image_index = 1;break;
            case 65:    image_index = 2;break;
            case 110:   image_index = 3;break;
            case 115:   image_index = 2;break;
            case 120:   image_index = 3;break;
            case 125:   image_index = 2;break;
            case 130:   image_index = 3;break;
            case 135:   image_index = 2;break;
            case 140:   image_index = 3;break;
            case 145:   image_index = 2;break;
            case 150:   image_index = 1;break;
            case 155:   image_index = 0;break;
                
        }
        #endregion
        
		if t mod 10 = 0 && t > 100 && t < 150 
		{

			instance_create_depth(x-random_range(21,23),y-random_range(7,9),depth-1,obj_sfx2);
			instance_create_depth(x-22,y-8,depth,obj_boat_boss_vulcano_proj_1_2);
		}
		if t = 200
		{
			t = 0;
			state = 0;
		}
		#endregion
		break;
	case 3: 
		#region выстрелы из стены
		t++;
		if t =	2
		{
			if instance_exists(obj_boat_boss_vulcano_1_wall) 
			{
				obj_boat_boss_vulcano_1_wall.isOn = 1;	
			}
		}
		if t = 50
		{
			t = 0;
			state = 0;
		}
		#endregion		
		break;
}

#region смерть

if enemy_hp <= 0
{
    instance_create_depth(x,y,depth,obj_boat_boss_vulcano_death1);
    instance_destroy();
}
#endregion

#region получение урона

fnc_boat_take_dmg_pistol(1)
fnc_boat_take_dmg_fastshot(0.6,1.3)
fnc_boat_take_dmg_dual_pistol(0.75,1,1.25) 
fnc_boat_take_dmg_blunderbuss(0.6)
fnc_boat_take_dmg_parrotcage(1,1.25,1.25,1.25)
fnc_boat_take_dmg_cannon(8) 

#endregion