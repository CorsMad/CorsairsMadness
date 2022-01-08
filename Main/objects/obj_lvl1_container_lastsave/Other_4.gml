/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);


var i = instance_create_depth(16,192,0,obj_sound_controller_l1_lastsave)
i.image_xscale = 4;


if global.TargetRoom = L1_lastsave && !instance_exists(obj_checkpoint_projectile)
{
    var ch_off = instance_create_depth(240,240,0,obj_checkpoint_projectile);
    ch_off.isOn = 2;
} else instance_create_depth(240,240,0,obj_checkpoint_projectile);