/// @description Insert description here
// You can write your code in this editor

if instance_exists(fol){
	x = fol.x;
	y = fol.y+y_start+yoffset
	t++;
	if t < 20 yoffset-=1;
	if t = 50 instance_destroy();
}