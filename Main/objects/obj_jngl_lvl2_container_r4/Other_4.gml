/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.secretpass_j2_r4 = 1
{
    instance_create_depth(432,16,0,obj_jngl_lvl2_passage_r4);   
}



if global.TargetRoom = J2_r4 && !instance_exists(obj_checkpoint_projectile)
{
    var ch_off = instance_create_depth(256,112,0,obj_checkpoint_projectile);
    ch_off.isOn = 2;
} else instance_create_depth(256,112,0,obj_checkpoint_projectile);