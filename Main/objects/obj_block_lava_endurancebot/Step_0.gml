/// @description Insert description here
// You can write your code in this editor

if state = 1 {
	t++;
	if t = 1 instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small);
	if t = 5 instance_destroy();
}