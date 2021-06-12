/// @description Insert description here
// You can write your code in this editor


//y = obj_Player.y-16;

if instance_exists(obj_item_hook_masked)
{
    if obj_item_hook_masked.isHooked = 1
    {
        y = obj_item_hook_masked.y;   
    } else y = obj_Player.y-16;
}
