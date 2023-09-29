/// @description Insert description here
// You can write your code in this editor


t++;
if t = 50{
	t = 0;
	instance_create_depth(x,y,depth,obj_bossmerch_phase2);
	instance_create_depth(x,y,depth,obj_bossmerch_phase2_hand_l);
	instance_create_depth(x,y,depth,obj_bossmerch_phase2_hand_r);
	instance_destroy();
}