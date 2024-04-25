/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.dia_jungleMerch = 0 || global.dia_jungleChief = 0 || global.dia_jungleComt > 0
{
    var block = instance_create_depth(-8,16,0,obj_block_jungle_village);
    block.image_yscale = 20;
    var block2= instance_create_depth(984,16,0,obj_block_jungle_village);
    block2.image_yscale = 20;
    var tip1 = instance_create_depth(0,16,0,obj_popup_creator_village_trigger);
    tip1.image_yscale = 20;
    var tip2= instance_create_depth(976,16,0,obj_popup_creator_village_trigger);
    tip2.image_yscale = 20;
}

if global.dia_jungleChief = 1
{
    instance_create_depth(496,240,1,obj_npc_junglev_comt);   
}

if global.saved_jungle = 1 
{
    instance_create_depth(304,240,1,obj_npc_jake_jvillage);        
}


#region указатель

if global.dia_jungleChief = 0 
{
    instance_create_depth(816,160,10,obj_npc_village_pointer);
}

if global.dia_jungleChief != 0 && global.dia_jungleMerch = 0 
{
    instance_create_depth(404-28,180,10,obj_npc_village_pointer);
}

if instance_exists(obj_npc_junglev_comt) && global.dia_jungleComt > 0 
{
    instance_create_depth(496,144,10,obj_npc_village_pointer)   ;
}
#endregion
