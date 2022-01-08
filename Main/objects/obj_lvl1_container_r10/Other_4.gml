/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

var o1 = instance_create_depth(320,160,0,obj_blob_creator);
o1.t = 100;
instance_create_depth(240,80,0,obj_blob_creator);
instance_create_depth(176,176,0,obj_pad_blue);


if global.TargetRoom = L1_r10 && !instance_exists(obj_checkpoint_projectile)
{
    var ch_off = instance_create_depth(368,160,0,obj_checkpoint_projectile);
    ch_off.isOn = 2;
} else instance_create_depth(368,160,0,obj_checkpoint_projectile);