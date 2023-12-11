// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ending_step1(argument0){
	t++;
	if t = 20{
		instance_create_depth(0,0,-9999999999999,argument0);
		t = 0;
		step += 0.5;
	}
}