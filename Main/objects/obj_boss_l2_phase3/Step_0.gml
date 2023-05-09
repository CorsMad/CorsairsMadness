/*
  0 - ожидание
  1 - кидки
  
*/

if (state = 0) {
    t++;
	if t = 50
	{
		state = 1;
		t = 0;
	}
}

if (state = 1) {
    t++;
	switch(t)
	{
		case 50:  var b = instance_create_depth(x,y,depth-1,obj_boss_l2_bomb_small);
			b.hspd = irandom_range(-3,3);
			break; // бросок минибомб	
		case 100: break;
		case 150: var b = instance_create_depth(x,y,depth-1,obj_boss_l2_bomb_small);
			b.hspd = irandom_range(-3,3);
			break; // бросок минибомб	
		case 200: break;// бомб
		case 250: var b = instance_create_depth(x,y,depth-1,obj_boss_l2_bomb_small);
			b.hspd = irandom_range(-3,3);
			break; // бросок минибомб	
		case 300: t=0;state = 0;break;// бомб
	}	
}
	
	
	
if !instance_exists(obj_boss_l2_stand) && state < 2 
{
	state = 2;	
}
	
#region Падение

if (state = 2) {
    y+=2;
	if y >=256
	{
		y = 256;
		state = 3;
		t = 0;
	}
}
#endregion

if (state = 3) {
    t++;
	if t = 50 {
		instance_create_depth(x,y,depth,obj_armor_skel);
		sprite_index = -1;
		image_speed = 0;	
		state = 4;
	}
}

if state = 4
{
	if !instance_exists(obj_armor_skel)
	{
		instance_destroy()
	}
}