/// @description Insert description here
// You can write your code in this editor
timer=0;

m = instance_create_depth(x,y,0,obj_sfx_checkpoint_big);
m.hspd = -1.5;
n = instance_create_depth(x,y,0,obj_sfx_checkpoint_big);
n.hspd = 1.5;

timer=0;
l = instance_create_depth(x,y,0,obj_sfx_checkpoint_big);
l.hspd = -1;
l.vspd = -1;
k = instance_create_depth(x,y,0,obj_sfx_checkpoint_big);
k.hspd = 1;
k.vspd = -1;