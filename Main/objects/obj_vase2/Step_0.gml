/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox_mask) || place_meeting(x,y,obj_hitbox_mask_dash)
{
    global.Vases_array[MyID,0] = 1;
    instance_destroy();
    fnc_hp_after_destroy_vase(15,45);
    instance_create_depth(x,y-8,depth,obj_sfx3);
    instance_create_depth(x,y,depth,obj_vase2_p1);
    instance_create_depth(x,y,depth,obj_vase2_p2);
}

if global.Vases_array[MyID,0] == 1 
{
    instance_destroy();   
}