/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_hitbox){
	if instance_exists(obj_Player){
		if obj_Player.x < x {
			instance_create_depth(x,y-8,depth, obj_di_staff_p,{hspd : 2,    vspd : -2  ,image_index : 0});
			instance_create_depth(x,y-8,depth, obj_di_staff_p,{hspd : 1,    vspd : -1.5,image_index : 1});
			instance_create_depth(x,y+8,depth, obj_di_staff_p,{hspd : 0.5,  vspd : -1.5,image_index : 2});
			instance_create_depth(x,y+24,depth,obj_di_staff_p,{hspd : -0.52,vspd : -1.5,image_index : 3});	
		} else {
			instance_create_depth(x,y-8,depth, obj_di_staff_p,{hspd : -2,    vspd : -2  ,image_index : 0});
			instance_create_depth(x,y-8,depth, obj_di_staff_p,{hspd : -1,    vspd : -1.5,image_index : 1});
			instance_create_depth(x,y+8,depth, obj_di_staff_p,{hspd : -0.5,  vspd : -1.5,image_index : 2});
			instance_create_depth(x,y+24,depth,obj_di_staff_p,{hspd : 0.52,  vspd : -1.5,image_index : 3});	
		}
	}
	fnc_snd_play_onetime(snd_chest_destruct);
	instance_destroy();
}


t_anim++;
if t_anim = 2 {
	t_anim = 0;
	
	instance_create_depth(x+random_range(-4,4),y-random_range(7,9),depth+1,obj_di_staff_gr);
}



