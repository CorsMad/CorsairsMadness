/// @description Insert description here
// You can write your code in this editor

/*

0 -  ожидание
1 -  Бросок

*/

if (state = 0) {
    t++;
	if t = 50
	{
		t = 0;
		state = 1;
	}
}

if (state = 1) {
    t++;
	if t = 100
	{
		instance_create_depth(x,y,depth-1,obj_boss_l2_bomb_small);
	}
	if t = 150
	{
		state = 0;
		t = 0;
	}
}

if ((left = 1) && (right = 1) && (state < 2)) state = 2

if (state = 2) {
	y+=3;
	if y >=256
	{
		y = 256;
		state = 3
	}
}

if state = 3
{
	y+=3;
	if y >=256
	{
		y = 256;
		state = 4;
		t = 0;
	}	
}

if state = 4
{
	t++;
	if t = 50 {
		instance_create_depth(x,y,depth,obj_armor_skel);
		sprite_index = -1;
		image_speed = 0;	
		state = 5;
	}
}	

if state = 5
{
	if !instance_exists(obj_armor_skel)
	{
		instance_create_depth(240,96,depth,obj_boss_l2_phase2);
		instance_destroy()
	}
}