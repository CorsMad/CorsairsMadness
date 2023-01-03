/// @description Insert description here
// You can write your code in this editor
hspd = 0;
vspd = 0;
isOn = 0;
timer = 0;

pointer = instance_create_depth(x,y-64,depth-1,obj_icon_pointerdown);
pointer.own = id;
