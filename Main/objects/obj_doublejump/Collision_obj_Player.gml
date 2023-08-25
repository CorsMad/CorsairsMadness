/// @description Insert description here
// You can write your code in this editor

obj_Player.vspd = -6;   
instance_destroy();


/*
if place_meeting(x,y,obj_doublejump_forward)
{
    obj_Player.doublejumpspd = obj_doublejump_forward.hspd;   
    obj_Player.vspd = obj_doublejump_forward.vspd;   
} else 

if place_meeting(x,y,obj_doublejump_up)
{
    obj_Player.doublejumpspd = obj_doublejump_up.hspd;   
    obj_Player.vspd = obj_doublejump_up.vspd;   
} else
obj_Player.vspd = -6;   
instance_destroy();