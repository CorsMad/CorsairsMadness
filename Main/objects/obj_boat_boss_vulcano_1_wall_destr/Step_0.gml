/// @description Insert description here
// You can write your code in this editor
t++;
if t mod 5 = 0 {
	instance_create_depth(x+random_range(2,16),y+random_range(4,158),depth-1,obj_sfx_explosion);	
}
switch(t)
{	
	case 50:
		instance_destroy();
		break;
}