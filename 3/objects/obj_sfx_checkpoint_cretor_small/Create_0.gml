/// @description Insert description here
// You can write your code in this editor
timer=0;
l = instance_create_depth(x,y,0,obj_sfx_checkpoint_small);
l.hspd = -1;
l.vspd = 1;
k = instance_create_depth(x,y,0,obj_sfx_checkpoint_small);
k.hspd = 1;
k.vspd = 1;