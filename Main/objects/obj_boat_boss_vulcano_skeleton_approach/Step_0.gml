/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
vspd+=0.2;
hspd = lerp(hspd,0,0.01);
if y>=ydest
{ 
    var s = instance_create_depth(x,y,depth,obj_skeleton_surf_pointing_2hp);
    s.hspd = -2;
    instance_destroy();
} 