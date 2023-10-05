/// @description Insert description here
// You can write your code in this editor
/*
0 - начало
1 - несколько выстрелов из руки
2 - удар вниз и волной влево
3 - полет влево, удар и волна вправо
4 - ожидание
5 - полет вправо, удар и волна влево
6 - долгое ожидание 
7 - подъем вверх и 0
*/


switch(state){
     case -1:
        if image_alpha < 1 image_alpha+=0.05;
        x = lerp(x,384,0.1);
        if image_alpha >=1 {
            image_alpha = 1;
            x = 384;
            state = 0;
        }
        break;
	case 1:
		t++;
		switch(t){
            case 5:sprite_index = spr_bossmerch_phase2_hand_attackr;image_index = 1;image_speed = 0;break;
			case 50:
                instance_create_depth(x,y,depth-1,obj_sfx3,{
                    image_xscale : 2,
                    image_yscale : 2
                });
                image_index = 2;
				instance_create_depth(x,y,depth-1,obj_bossmerch_phase1_proj1_1);
				break;
            case 70:image_index = 1;break;
			case 100:
                instance_create_depth(x,y,depth-1,obj_sfx3,{
                    image_xscale : 2,
                    image_yscale : 2
                });
                image_index = 2;
				instance_create_depth(x,y,depth-1,obj_bossmerch_phase1_proj1_1);
				break;
            case 120: image_index = 1;break;
			case 150:
                instance_create_depth(x,y,depth-1,obj_sfx3,{
                    image_xscale : 2,
                    image_yscale : 2
                });
                image_index = 2;
				instance_create_depth(x,y,depth-1,obj_bossmerch_phase1_proj1_1);
				break;
            case 175:image_index = 0;break;
            case 180:image_index = 3;break;
			case 200:
				t = 0;
				state = 2;
				break;
		}
		break;
	case 2:
		vspd=4;
		y+=vspd;
		if y>= room_height-48{
			vspd = 0;
            instance_create_depth(x,784,depth-2,obj_sfx4);
            instance_create_depth(x-8,784,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(x+8,784,depth-1,obj_sfx_dust_expl_small);
			y =  room_height-48;
			state = 3;
			t = 0;
		}
		break;
	case 3:
		t++
		if t > 30 {
			if hspd > -8 hspd-=0.2;	
		}
		x+=hspd;
		if x <= 40{
			x = 40;
			hspd = 0;
			state = 4;
            instance_create_depth(16,y+8,depth-2,obj_sfx4,{image_angle : 270});
            instance_create_depth(16,y-8,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(16,y+12,depth-1,obj_sfx_dust_expl_small);
            
			t = 0;
		}
		break;
	case 4:
		t++;
		if t > 50 {
			if hspd < 8 hspd+=0.2;	
		}
		x+=hspd;
		if x >=448-8{
			x = 448-8;
			hspd = 0;
			state = 5;
			t = 0;
            instance_create_depth(464,y+8,depth-2,obj_sfx4,{image_angle : 90});
            instance_create_depth(464,y-8,depth-1,obj_sfx_dust_expl_small);
            instance_create_depth(464,y+12,depth-1,obj_sfx_dust_expl_small);
            
		}
		break;
	case 5:
		t++;
        if t > 100 && t < 150 {
            if t mod 15 = 0 {
                if image_index = 3 image_index = 4 else image_index = 3;  
            }
        }
        if t >=150 {
            if t mod 5 = 0 {
                if image_index = 3 image_index = 4 else image_index = 3;  
            }   
        }
        
		if t = 200{
			t = 0;
			state = 6;	
		}
		break;
	case 6:
        t++;
        if t = 10 {
            sprite_index = spr_bossmerch_phase2_hand_attackL;image_index = 1;break;
        }
        if t = 15 {
            sprite_index = spr_bossmerch_phase2_hand_idle;image_speed = 1;
        }
		y-=4;
		if y<= 640 {
			y = 640;
			state = 7;
            t = 0;
		}
		break;
	case 7:
		x-=4;
		if x <= 384{
			x = 384;
			state = 0;
			t = 0;
			hspd = 0;
			vspd = 0;
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
	obj_bossmerch_phase2.state = 1;
	obj_bossmerch_phase2.t = 0;
	instance_destroy();
	var death =  instance_create_depth(x,y,depth,obj_bossmerch_phase2_hand_r_d);
    death.sprite_index = sprite_index;
    if x < room_width/2 death.hspd = -2 else death.hspd = 2;
}
#endregion