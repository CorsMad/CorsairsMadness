fnc_msc_start_checkpoint(msc_village_shadow);
global.PlayerTransition = 3;
scr_save_progress();

if global.completed_PG2 = 0 {
    instance_create_depth(80 +random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(112+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(128+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(160+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(208+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(288+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(336+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(400+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(416+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(448+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(624+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(656+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(688+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(720+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(752+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(784+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    instance_create_depth(816+random_range(-32,32),240,0,obj_npc_shadowv_skel_not);
    
    instance_create_depth(96,240,0,obj_npc_shadowv_skel_t);
    instance_create_depth(352,240,0,obj_npc_shadowv_skel_t);
    instance_create_depth(464,240,0,obj_npc_shadowv_skel_t);
    instance_create_depth(784,240,0,obj_npc_shadowv_skel_t);
} else {
     instance_create_depth(384,240,100,obj_npc_shadowv_npc1);  
}