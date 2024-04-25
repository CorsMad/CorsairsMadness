/// @description Insert description here
// You can write your code in this editor
if state = 0 state = 1
if boomer = 0 && boom_timer = 0
{
	if boomer_armor1 > 0 {
					
		var tip = instance_create_depth(x,y,depth,obj_armor_skel_tip);
		tip.sprite_index = spr_bigskel_arm_icon1;
		tip.y_start = -68;	
		tip.image_index = boomer_armor1-1;
		tip.fol = id;
		
		
		
		boomer_armor1-=1;	
		boom_timer = 1;
		fnc_snd_play_onetime(snd_get_boomerang);
		for (var arm_part_t = 0; arm_part_t<5; arm_part_t++) {
		    var arm_part = instance_create_depth(x+random_range(-8,8),y-28+random_range(-8,8),depth-1,obj_armor_skel_part);
			arm_part.vspd = random_range(-6,-3)	
			if instance_exists(obj_item_boomerang){
				if obj_item_boomerang.x < x {
					arm_part.hspd = random_range(1,4)	
				} else {
					arm_part.hspd = random_range(-1,-4)		
				}	
			}
		}
	} else {		
	    count_boomer++;
	    fnc_snd_play_onetime(snd_get_boomerang);
	    t = 0;
	    boomer = 1;
	    state = 4;
	    boom_timer = 1;
	    spd = 0;
	    t_attack = 0;
	    image_index = 0;
	    instance_create_depth(x,y-32,depth-1,obj_sfx_dust_expl_big);
		
		for (var arm_part_t = 0; arm_part_t < 6; arm_part_t++) {
		    var arm_part = instance_create_depth(x+random_range(-8,8),y-28+random_range(-8,8),depth-1,obj_armor_skel_part);
			arm_part.vspd = random_range(-6,-3)	
			arm_part.hspd = random_range(-4,4)	;
		}
	}
}


if boomer = 1 && boom_timer = 0 
{
    if boomer_armor2 > 0 {
		var tip = instance_create_depth(x,y,depth,obj_armor_skel_tip);
		tip.sprite_index = spr_bigskel_arm_icon1;
		tip.y_start = -68;	
		tip.image_index = boomer_armor2+4;
		tip.fol = id;
		
		boomer_armor2-=1;	
		boom_timer = 1;
		fnc_snd_play_onetime(snd_get_boomerang);
		for (var arm_part_t = 0; arm_part_t<5; arm_part_t++) {
		    var arm_part = instance_create_depth(x+random_range(-8,8),y-16+random_range(-8,8),depth-1,obj_armor_skel_part);
			arm_part.vspd = random_range(-6,-3)	
			if instance_exists(obj_item_boomerang){
				if obj_item_boomerang.x < x {
					arm_part.hspd = random_range(1,4)	
				} else {
					arm_part.hspd = random_range(-1,-4)		
				}	
			}
		}
	} else {		
	    count_boomer++;
	    fnc_snd_play_onetime(snd_get_boomerang);
	    t = 0;
	    boomer = 2;
	    state = 6;
	    boom_timer = 1;
	    spd = 0;
	    t_attack = 0;
	    image_index = 0;
	    instance_create_depth(x,y-32,depth-1,obj_sfx_dust_expl_big);
		
		for (var arm_part_t = 0; arm_part_t < 6; arm_part_t++) {
		    var arm_part = instance_create_depth(x+random_range(-8,8),y-28+random_range(-8,8),depth-1,obj_armor_skel_part);
			arm_part.vspd = random_range(-6,-3)	
			arm_part.hspd = random_range(-4,4)	;
		}
	}
}