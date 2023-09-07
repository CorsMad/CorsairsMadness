/*
  0 выключен
  1 - 
*/

if isOn = 1 && place_meeting(x,y,obj_hitbox_mask) 
{
	obj_boss_pl_light_block.state = 1;
	isOn = 2	
}

if isOn = 2 {
	
}


if isOn = 0 {
	t++	
	if t = 10{
		if image_index = 2 image_index = 3; else image_index = 2;
		instance_create_depth(x+random_range(-8,8),y,depth+1,obj_boss_pl_light_trigger_sparkle)
		t = 0;
	}
}




#region anim
switch(isOn)
{
	case 0: image_blend = c_dkgray ;image_alpha = 0.75;break;	
	case 1: image_index = 0;image_blend = c_white; image_alpha = 1;break;	
	case 2: image_index = 1;break; 
}
#endregion