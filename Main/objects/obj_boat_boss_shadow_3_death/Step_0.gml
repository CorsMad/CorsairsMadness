/// @description Insert description here
// You can write your code in this editor
t++;
if t mod 5 = 0
{
    instance_create_depth(x+random_range(-32,58),y+random_range(-36,38),-1000,obj_sfx_explosion)   ;
}
switch(t){
	case 100:
		image_speed = 0;
		image_index = 6;
		break;
	case 105:image_index = 5;break;
	case 110:image_index = 4;break;
	case 115:image_index = 3;
	instance_destroy(obj_boat_boss_shadow_water_main);
	break;
	case 120:image_index = 2;break;
	case 125:image_index = 1;break;
	case 130:image_index = 0;break;
	case 140:
		obj_sp_boat_G2.state = 16.5;
        obj_sp_boat_G2.t = 0;
		instance_destroy();
		break;
}