/// @description Insert description here
// You can write your code in this editor

instance_create_depth(x,y,depth,boss_phase)
var t1 = instance_create_depth(416,112,-112,obj_boat_boss_shadow_utent_arrive);
var t2 = instance_create_depth(416,240,-240,obj_boat_boss_shadow_dtent_arrive); 
t1.t = 0;
t2.t = 200;
					
instance_destroy();