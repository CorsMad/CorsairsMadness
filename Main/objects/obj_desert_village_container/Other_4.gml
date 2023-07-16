/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.dia_desertMerch = 0 || global.dia_desertChief = 0 || global.dia_desertComt > 0
{
    var block = instance_create_depth(-18,16,0,obj_block_jungle_village);
    block.image_yscale = 20;
    var block2= instance_create_depth(898,16,0,obj_block_jungle_village);
    block2.image_yscale = 20;
    var tip1 = instance_create_depth(0,16,0,obj_popup_creator_village_trigger);
    tip1.image_yscale = 20;
    var tip2= instance_create_depth(880,16,0,obj_popup_creator_village_trigger);
    tip2.image_yscale = 20;
}

if global.dia_desertChief = 1
{
    instance_create_depth(496,240,1,obj_npc_desertv_comt);   
}