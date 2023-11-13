/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_hitbox){
	if instance_exists(obj_Player){
		if obj_Player.x < x {
			instance_create_depth(x-8,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(3,6),vspd : random_range(-5,-2)});
			instance_create_depth(x-4,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(3,6),vspd : random_range(-5,-2)});
			instance_create_depth(x,y-6,depth,obj_di_pile_p,  {image_index : irandom(3),hspd : random_range(3,6),vspd : random_range(-5,-2)});
			instance_create_depth(x+4,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(3,6),vspd : random_range(-5,-2)});
			instance_create_depth(x+8,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(3,6),vspd : random_range(-5,-2)});
	
			instance_create_depth(x-16,y-6,depth,obj_sfx_dust_expl_small);
			instance_create_depth(x,   y-6,depth,obj_sfx_dust_expl_small);
			instance_create_depth(x+16,y-6,depth,obj_sfx_dust_expl_small);
			instance_create_depth(x-10,y-12,depth,obj_sfx_dust_expl_small);
			instance_create_depth(x+10,y-12,depth,obj_sfx_dust_expl_small);
			fnc_snd_play_onetime(snd_chest_destruct);
			instance_destroy();	
		} else {
			instance_create_depth(x-8,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(-6,-6),vspd : random_range(-5,-2)});
			instance_create_depth(x-4,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(-6,-6),vspd : random_range(-5,-2)});
			instance_create_depth(x,y-6,depth,obj_di_pile_p,  {image_index : irandom(3),hspd : random_range(-6,-6),vspd : random_range(-5,-2)});
			instance_create_depth(x+4,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(-6,-6),vspd : random_range(-5,-2)});
			instance_create_depth(x+8,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(-6,-6),vspd : random_range(-5,-2)});
	
			instance_create_depth(x-16,y-6,depth,obj_sfx_dust_expl_small);
			instance_create_depth(x,   y-6,depth,obj_sfx_dust_expl_small);
			instance_create_depth(x+16,y-6,depth,obj_sfx_dust_expl_small);
			instance_create_depth(x-10,y-12,depth,obj_sfx_dust_expl_small);
			instance_create_depth(x+10,y-12,depth,obj_sfx_dust_expl_small);
			fnc_snd_play_onetime(snd_chest_destruct);
			instance_destroy();		
		}
	}
}


if place_meeting(x,y,obj_Player){
	
	instance_create_depth(x-8,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(-1,1),vspd : random_range(-1.2,-2)});
	instance_create_depth(x-4,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(-1,1),vspd : random_range(-1.2,-2)});
	instance_create_depth(x,y-6,depth,obj_di_pile_p,  {image_index : irandom(3),hspd : random_range(-1,1),vspd : random_range(-1.2,-2)});
	instance_create_depth(x+4,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(-1,1),vspd : random_range(-1.2,-2)});
	instance_create_depth(x+8,y-6,depth,obj_di_pile_p,{image_index : irandom(3),hspd : random_range(-1,1),vspd : random_range(-1.2,-2)});
	
	instance_create_depth(x-16,y-6,depth,obj_sfx_dust_expl_small);
	instance_create_depth(x,   y-6,depth,obj_sfx_dust_expl_small);
	instance_create_depth(x+16,y-6,depth,obj_sfx_dust_expl_small);
	instance_create_depth(x-10,y-12,depth,obj_sfx_dust_expl_small);
	instance_create_depth(x+10,y-12,depth,obj_sfx_dust_expl_small);
	
	fnc_snd_play_onetime(snd_chest_destruct);
	
	instance_destroy();
}