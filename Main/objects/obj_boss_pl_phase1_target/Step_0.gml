/// @description Insert description here
// You can write your code in this editor

t++;
if t = 1{
	oleg = instance_create_depth(x,y,depth-1,obj_boss_pl_phase1_target_trace);
	oleg.origin_t = boss_phase;
	oleg.target_t = id;	
}

switch(t)
{
	case 40: image_alpha = 0.4;break;
	case 60: image_alpha = 1;break;
	case 80: image_alpha = 0.4;break;
	case 90: image_alpha = 1;break;
	case 100: image_alpha = 0.4;break;
	case 105: image_alpha = 1;break;
	case 110: image_alpha = 0.4;break;
	case 112: image_alpha = 1;break;
	case 114: image_alpha = 0.4;break;
	case 116: image_alpha = 1;break;
}	



if instance_exists(obj_Player)
{
	x = lerp(x,obj_Player.x,0.1);
	y = lerp(y,obj_Player.y-24,0.1);
}