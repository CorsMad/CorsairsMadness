/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_hitbox_down)) && timer = 0
{
	timer=1;	
	mask_index = spr_blank;
}
if timer > 0 
{
	timer++;	
}

switch(timer)
{
	case 2: instance_create_depth(x+20,y+20,-1,obj_sfx_dust_expl_big);break;
	case 10: instance_destroy();break;
}