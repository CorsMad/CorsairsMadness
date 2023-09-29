// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_finalboss_phase1_proj(){
	var rand = choose(1,2,3);
	switch(rand){
		case 1:
			instance_create_depth(40,152,depth-1,obj_bossmerch_phase1_proj1_3);
			instance_create_depth(40,248,depth-1,obj_bossmerch_phase1_proj1_3);
			break;
		case 2:
			instance_create_depth(40,232,depth-1,obj_bossmerch_phase1_proj1_3);
			instance_create_depth(40,248,depth-1,obj_bossmerch_phase1_proj1_3);
			instance_create_depth(40,216,depth-1,obj_bossmerch_phase1_proj1_3);
			break;
		case 3:
			instance_create_depth(40,184,depth-1,obj_bossmerch_phase1_proj1_3);
			instance_create_depth(40,200,depth-1,obj_bossmerch_phase1_proj1_3);
			instance_create_depth(40,168,depth-1,obj_bossmerch_phase1_proj1_3);
			break;
	}
}

function scr_finalboss_phase1_proj_l(){
	var rand = choose(1,2,3);
	switch(rand){
		case 1:
			var l1 = instance_create_depth(440,152,depth-1,obj_bossmerch_phase1_proj1_3);
			var l2 = instance_create_depth(440,248,depth-1,obj_bossmerch_phase1_proj1_3);
			l1.spd = -2;
			l2.spd = -2;
			break;
		case 2:
			var l1 = instance_create_depth(440,232,depth-1,obj_bossmerch_phase1_proj1_3);
			var l2 = instance_create_depth(440,248,depth-1,obj_bossmerch_phase1_proj1_3);
			var l3 = instance_create_depth(440,216,depth-1,obj_bossmerch_phase1_proj1_3);
			l1.spd = -2;
			l2.spd = -2;
			l3.spd = -2;
			break;
		case 3:
			var l1 = instance_create_depth(440,184,depth-1,obj_bossmerch_phase1_proj1_3);
			var l2 = instance_create_depth(440,200,depth-1,obj_bossmerch_phase1_proj1_3);
			var l3 = instance_create_depth(440,168,depth-1,obj_bossmerch_phase1_proj1_3);
			l1.spd = -2;
			l2.spd = -2;
			l3.spd = -2;
			break;
	}
}