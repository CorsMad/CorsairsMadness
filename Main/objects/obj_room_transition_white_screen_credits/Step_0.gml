/// @description Insert description here
// You can write your code in this editor

t++;
if t > 100 {
	image_alpha-=0.05	
}
if image_alpha <= 0 {
	if instance_exists(obj_credits_good) {
		obj_credits_good.state = 1;
		instance_create_depth(-224,0,1,obj_credits_good_ship);
	}
	instance_destroy();	
}