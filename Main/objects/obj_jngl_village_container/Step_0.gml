/// @description Insert description here
// You can write your code in this editor


if global.dia_jungleMerch != 0 && global.dia_jungleChief != 0 && global.dia_jungleComt = 0
{
    if instance_exists(obj_block_jungle_village) && instance_exists(obj_popup_creator_village_trigger) {
        instance_destroy(obj_block_jungle_village);   
        instance_destroy(obj_popup_creator_village_trigger);   
    }
}
