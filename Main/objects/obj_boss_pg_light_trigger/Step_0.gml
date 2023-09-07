/*
  0 выключен
  1 - 
*/

if isOn = 1 && place_meeting(x,y,obj_hitbox_mask) 
{
	obj_boss_pg_light_block.state = 1;
	isOn = 2	
}

if isOn = 2 {
	t++;
	if t = 50 {
		t = 0;
		isOn = 0;
	}
}


#region anim
switch(isOn)
{
	case 0: image_index = 0;image_blend = c_dkgray ;image_alpha = 0.5;break;	
	case 1: image_index = 0;image_blend = c_white; image_alpha = 1;break;	
	case 2: image_index = 1;break; 
}
#endregion