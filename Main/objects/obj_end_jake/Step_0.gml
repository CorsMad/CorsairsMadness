/// @description Insert description here
// You can write your code in this editor

fnc_Collision(obj_block);

switch(state){
	case 1:
		t++;
		if t = 50{
			t = 0;
			vspd = -5;
			state = 2;
			sprite_index = spr_npc_jake_jumpland;
			image_speed = 0;
			image_index = 0;
		}
		break;
	case 2:
		vspd+=0.1;
		if vspd > -2 {
			sprite_index = spr_npc_jake_salto2
			
			image_speed = 1;
		}
		if vspd>=0 {
			instance_create_depth(x,y,depth-1,obj_end_jake_part)
			vspd = 0;
			state = 3;
		}
		break;
	case 3:
		if vspd < 9 vspd+=1 else vspd = 9;
		if place_meeting(x,y+vspd,obj_block){
			vspd = -5;
			state = 4;
			instance_create_depth(x,240,depth-2,obj_sfx4);
			instance_create_depth(x,240,depth-1,obj_sfx_dust_expl_big);
			if instance_exists(obj_end_jake_part) obj_end_jake_part.state = 1;
		}
		break;
	case 4:
		if vspd > 0.4 {
			sprite_index = spr_npc_jake_jumpland;
			image_speed = 0;
			image_index = 0;
		}
		if vspd < 5 vspd+=0.2; else vspd = 5;
		if place_meeting(x,y+vspd,obj_block){
			state = 5;	
			instance_create_depth(x,240,depth-2,obj_sfx4);
			image_index = 1;
		}
		break;
	case 5:
		t++;
		if t = 20 {
			sprite_index = spr_npc_jake_idle;
			image_speed = 1;
		}
		if t = 50 {
			t = 0;			
			obj_ending.step+=0.5;
			state = 6;
		}
		break;
}