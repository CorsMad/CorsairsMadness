/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.Music_controller_f1_r32 = 1
{
    var i = instance_create_depth(0,32,0,obj_sound_controller_f1_r32);   
    i.image_xscale = 60;
}