// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_finalboss_phase1_proj(){
	var rand = choose(1,2,3);
	switch(rand){
		case 1:
			instance_create_depth(24,680,depth-1,obj_bossmerch_phase1_proj1_3);
			instance_create_depth(24,776,depth-1,obj_bossmerch_phase1_proj1_3);
			break;
		case 2:
			instance_create_depth(24,744,depth-1,obj_bossmerch_phase1_proj1_3);
			instance_create_depth(24,760,depth-1,obj_bossmerch_phase1_proj1_3);
			instance_create_depth(24,776,depth-1,obj_bossmerch_phase1_proj1_3);
			break;
		case 3:
			instance_create_depth(24,696,depth-1,obj_bossmerch_phase1_proj1_3);
			instance_create_depth(24,712,depth-1,obj_bossmerch_phase1_proj1_3);
			instance_create_depth(24,728,depth-1,obj_bossmerch_phase1_proj1_3);
			break;
	}
}

function scr_finalboss_phase1_proj_l(){
	var rand = choose(1,2,3);
	switch(rand){
		case 1:
			var l1 = instance_create_depth(456,680,depth-1,obj_bossmerch_phase1_proj1_3);
			var l2 = instance_create_depth(456,776,depth-1,obj_bossmerch_phase1_proj1_3);
			l1.spd = -2;
			l2.spd = -2;
			break;
		case 2:
			var l1 = instance_create_depth(456,744,depth-1,obj_bossmerch_phase1_proj1_3);
			var l2 = instance_create_depth(456,760,depth-1,obj_bossmerch_phase1_proj1_3);
			var l3 = instance_create_depth(456,776,depth-1,obj_bossmerch_phase1_proj1_3);
			l1.spd = -2;
			l2.spd = -2;
			l3.spd = -2;
			break;
		case 3:
			var l1 = instance_create_depth(456,696,depth-1,obj_bossmerch_phase1_proj1_3);
			var l2 = instance_create_depth(456,712,depth-1,obj_bossmerch_phase1_proj1_3);
			var l3 = instance_create_depth(456,728,depth-1,obj_bossmerch_phase1_proj1_3);
			l1.spd = -2;
			l2.spd = -2;
			l3.spd = -2;
			break;
	}
}