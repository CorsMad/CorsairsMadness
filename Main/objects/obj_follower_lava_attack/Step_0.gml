/// @description Insert description here
// You can write your code in this editor
/*
  0 появление
  1 - ожидание
  2 - выстрел
  3 - назад
*/
switch(state)
{
	case 0:
	t++;
	switch(t)
	{
		case 5:image_index = 1;break;
		case 10:image_index = 2;break;
		case 15:image_index = 3;break;
		case 20:
			image_index = 4;
			t = 0;
			state = 1;
			break;
	}
		break;
	case 1:
	t++;
	switch(t) 
	{
		case 1: // цель
			instance_create_depth(x_dest,y_dest,-1,obj_follower_lava_target);
			break;
		case 75: 
			sprite_index = spr_follower_lp_shot;
			image_index = 1;
			var bullet = instance_create_depth(x+42*image_xscale,y-12,depth-1,obj_follower_lava_bullet);
			bullet.x_dest = x_dest;
			bullet.y_dest = y_dest;
			instance_destroy(obj_follower_lava_target);
			instance_create_depth(x+42*image_xscale,y-12,depth-1,obj_follower_lava_steam)
			break;
		case 85:
			image_index = 0;
			break;
		case 100:
			sprite_index = spr_follower_lp_appear;
			image_index = 3;
			break;
		case 105: image_index = 2;break;
		case 110: image_index = 1;break;
		case 115: image_index = 0;break;
		case 120: instance_destroy();break;
	}
		break;
}
