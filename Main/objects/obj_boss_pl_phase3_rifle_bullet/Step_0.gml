/// @description Insert description here
// You can write your code in this editor


t_anim++;
if t_anim = 5 {
	instance_create_depth(x,y,depth+1,obj_follower_lava_bullet_trace);
	t_anim = 0;
}