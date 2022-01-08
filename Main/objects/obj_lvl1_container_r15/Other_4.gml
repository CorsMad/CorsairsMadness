/// @description Insert description here
// You can write your code in this editor
if global.TargetRoom = L1_r15 && !instance_exists(obj_checkpoint_projectile)
{
    var ch_off = instance_create_depth(320,240,0,obj_checkpoint_projectile);
    ch_off.isOn = 2;
} else instance_create_depth(320,240,0,obj_checkpoint_projectile);