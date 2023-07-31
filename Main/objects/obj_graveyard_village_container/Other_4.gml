/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.dia_shadowMerch = 0 || global.dia_shadowChief = 0 || global.dia_shadowComt > 0
{
    var block = instance_create_depth(-8,16,0,obj_block_jungle_village);
    block.image_yscale = 20;
    var block2= instance_create_depth(888,16,0,obj_block_jungle_village);
    block2.image_yscale = 20;
    var tip1 = instance_create_depth(0,16,0,obj_popup_creator_village_trigger);
    tip1.image_yscale = 20;
    var tip2= instance_create_depth(880,16,0,obj_popup_creator_village_trigger);
    tip2.image_yscale = 20;
}

if global.dia_shadowChief = 1
{
    instance_create_depth(536,240,1,obj_npc_shadowv_comt);  
    instance_create_depth(512,240,2,obj_npc_shadowv_comt_fl2);
    instance_create_depth(528,240,2,obj_npc_shadowv_comt_fl2);
    instance_create_depth(560,240,2,obj_npc_shadowv_comt_fl2);
    instance_create_depth(576,240,2,obj_npc_shadowv_comt_fl2);
    
    instance_create_depth(521,240,0,obj_npc_shadowv_comt_fl1);
    var fl = instance_create_depth(554876,240,1,obj_npc_shadowv_comt_fl1);
    fl.image_xscale = -1;
    instance_create_depth(567,240,0,obj_npc_shadowv_comt_fl1);
}

#region указатель

if global.dia_shadowChief = 0 
{
    instance_create_depth(266,159,10,obj_npc_village_pointer);
}

if global.dia_shadowChief != 0 && global.dia_shadowMerch = 0 
{
    instance_create_depth(693,160,10,obj_npc_village_pointer);
}

if instance_exists(obj_npc_shadowv_comt) && global.dia_shadowComt > 0 
{
    instance_create_depth(536,160,10,obj_npc_village_pointer)   ;
}
#endregion