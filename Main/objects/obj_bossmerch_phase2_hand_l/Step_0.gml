/// @description Insert description here
// You can write your code in this editor

/*
 0 - начало
 1 - перемещение в выбранную сторону
 2 - удар плоский
 3 - подъем
 4 - движение к игроку
 5 - удар вниз кулаком
 6 - подъем 
 7 - движение к игроку
 8 - удар вниз кулаком
 9 - подъем 
 10- движение к игроку
 11- удар вниз кулаком
 12- ожидание
 13- подъем вверх
 14 - возвращение на место и 0 
*/

switch(state){
    
    case -1:
        if image_alpha < 1 image_alpha+=0.05;
        x = lerp(x,96,0.1);
        if image_alpha >=1 {
            image_alpha = 1;
            state = 0;
            x = 96;
        }
        break;
    
	case 0:
		if instance_exists(obj_Player){
			if obj_Player.x > room_width/2{
				side = 1 
			} else side = 0;
		}
		break;
	case 1:
		t++;
        
        if abs(obj_Player.x-x) > 10 {
				if obj_Player.x>x x+=2 else x-=2;	
			} 
        if t = 50{
            state = 2;   
            t = 0;
        }

		break;
	case 2:
		t++;
		switch(t){
			case 50:
				sprite_index = spr_bossmerch_phase2_hand_attackL;
				mask_index = spr_bossmerch_phase2_hand_big;
                image_index = 4;
                image_speed = 0;
				break;
            case 55:    image_index = 5;break;
			case 75:
				vspd = 0.1;
				break;
		}
        if vspd!=0 && vspd < 7 vspd+=0.5;
		y+=vspd;
		if y >= room_height-32 {
            instance_create_depth(x,784,depth-2,obj_sfx4);
            instance_create_depth(x-24,784,depth-2,obj_sfx4);
            instance_create_depth(x-48,784,depth-2,obj_sfx4);
            instance_create_depth(x+24,784,depth-2,obj_sfx4);
            instance_create_depth(x+48,784,depth-2,obj_sfx4);
            instance_create_depth(x-8,784,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x+8,784,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x-16,784,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x+16,784,depth-1,obj_sfx_dust_expl_small);
			state = 3;	
			t = 0;
			vspd = -4;
		}
		break;
	case 3:
		y+=vspd;
		if y <= 640{
			y = 640;
			vspd = 0;
			state = 4;
		}
		break;
	case 4:
		t++;
		if t < 75 {
			if abs(obj_Player.x-x) > 10{
				if obj_Player.x>x x+=2 else x-=2;	
			} 
		}
		
		switch(t){
			case 5:
                image_index = 4;
				mask_index = spr_bossmerch_phase2_hand_small;
				break;
            case 10:image_index = 1;break;
            case 15:image_index = 2;break;
			case 80:
				t = 0;
				state = 5;
				vspd = 7;
				break;	
		}
		break;
	case 5:
		y+=vspd;
		if y >= room_height-48 {
            instance_create_depth(x,784,depth-2,obj_sfx4);
            instance_create_depth(x-8,784,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x+8,784,depth-1,obj_sfx_dust_expl_small);
			state = 6;	
			t = 0;
			vspd = -7;
		}
		break;
	case 6:
		y+=vspd;
		if y <= 640 {
			y = 640;
			state = 7;	
			t = 0;
			vspd = 0;
		}
		break;
	case 7:
		t++;
		if t < 75 {
			if abs(obj_Player.x-x) > 10{
				if obj_Player.x>x x+=2 else x-=2;	
			} 
		}
		//if t < 100 x = lerp(x,obj_Player.x,0.1);
		switch(t){
			case 80:
				t = 0;
				state = 8;
				vspd = 7;
				break;	
		}
		break;
	case 8:
		y+=vspd;
		if y >= room_height-48 {
            instance_create_depth(x,784,depth-2,obj_sfx4);
            instance_create_depth(x-8,784,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x+8,784,depth-1,obj_sfx_dust_expl_small);
			state = 9;	
			t = 0;
			vspd = -7;
		}
		break;
	case 9:
		y+=vspd;
		if y <= 640 {
			y = 640;
			state = 10;	
			t = 0;
			vspd = 0;
		}
		break;
	case 10:
		t++;
		if t < 75 {
			if abs(obj_Player.x-x) > 10{
				if obj_Player.x>x x+=2 else x-=2;	
			} 
		}
		//if t < 100 x = lerp(x,obj_Player.x,0.1);
		switch(t){
            case 50:image_index = 1;break;
            case 55:image_index = 7;break;
            case 60:image_index = 8;break;
            case 79:image_index = 9;break;
			case 80:
				t = 0;
				state = 11;
				vspd = 7;
				break;	
		}
		break;
	case 11:
		y+=vspd;
		if y >= room_height-48 {
            instance_create_depth(x,784,depth-2,obj_sfx4);
            instance_create_depth(x-8,784,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x+8,784,depth-1,obj_sfx_dust_expl_small);
			state = 12;	
			t = 0;
			vspd = 0;
		}
		break;
	case 12:
		t++;
        
        if t > 100 && t < 150 {
            if t mod 15 = 0 {
                if image_index = 9 image_index = 10 else image_index = 9;  
            }
        }
        if t >= 150  {
            if t mod 5 = 0 {
                if image_index = 9 image_index = 10 else image_index = 9;  
            }
        }
        
		if t = 200{
			t = 0;
			state = 13;
			vspd = -4;
		}
		break;
	case 13:
		y+=vspd;
		if y <= 640 {
			y = 640;
			state = 14;	
			t = 0;
			vspd = 0;
		}
		break;
	case 14:
    sprite_index = spr_bossmerch_phase2_hand_idle;
    image_speed = 1;
		x = lerp(x,96,0.1);
		if abs(x-96) < 1 {
			x = 96;
			state = 0;
			obj_bossmerch_phase2.state = 1;
			obj_bossmerch_phase2.t = 0;
		}
		break;
		
}


#region получение урона
 // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)
    

// Получение урона

    fnc_enemy_no_armor_dmg();
    
#endregion

#region смерть
if enemy_hp<=0{
	instance_destroy();
	obj_bossmerch_phase2.state = 1;
	obj_bossmerch_phase2.t = 0;
	var death =  instance_create_depth(x,y,depth,obj_bossmerch_phase2_hand_l_d);
    death.sprite_index = sprite_index;
    if x < room_width/2 death.hspd = -2 else death.hspd = 2;
    
}
#endregion