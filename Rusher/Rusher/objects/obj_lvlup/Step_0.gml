/// @description Insert description here
// You can write your code in this editor


if t < 11 t ++;
if t = 2 {
	new_array = array_create(0);
	new_a_shuffeled = array_create(0);
	new_a_shuffeled_n = array_create(0);

	for (var i = pos_start; i < pos_end; i++) {
	    if upgrade[i] != "z" {	
			array_push(new_array,upgrade[i])
		}
	}

	new_a_shuffeled_n = array_shuffle(new_array);

	for (var i = 0; i < 3; i++) {
	    array_push(new_a_shuffeled,new_a_shuffeled_n[i])
	}	
}

if t = 5 {
	scr_lvlup_text(new_a_shuffeled[0],left);
	scr_lvlup_text(new_a_shuffeled[1],middle);
	scr_lvlup_text(new_a_shuffeled[2],right);

	var lvlup = instance_create_depth(0,0,-50,obj_lvlup_draw);
	lvlup.left_n   = left.name
	lvlup.left_d   = left.desc
	lvlup.left_s   = left.sprite
	lvlup.middle_n = middle.name
	lvlup.middle_d = middle.desc
	lvlup.middle_s = middle.sprite
	lvlup.right_n  = right.name
	lvlup.right_d  = right.desc
	lvlup.right_s  = right.sprite
	
	instance_destroy();
}	
/*
if t = 5 {
	
	var lvlup = instance_create_depth(0,0,-50,obj_lvlup_draw);
	lvlup.name_l    = name_l   ;
	lvlup.name_m    = name_m   ;
	lvlup.name_r    = name_r   ;
	lvlup.desc_l    = desc_l   ;
	lvlup.desc_m    = desc_m   ;
	lvlup.desc_r    = desc_r   ;
	lvlup.sprite_l  = sprite_l ;
	lvlup.sprite_m  = sprite_m ;
	lvlup.sprite_r  = sprite_r ;
	//instance_destroy();	
}







