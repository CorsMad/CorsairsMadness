/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.fTargetRoom = F1_r37 && !instance_exists(obj_checkpoint_projectile)
{
    var ch_off = instance_create_depth(192,160,0,obj_checkpoint_projectile);
    ch_off.isOn = 2;
} else instance_create_depth(192,160,0,obj_checkpoint_projectile);