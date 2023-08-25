/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.Cutscene_sp1_r14 = 1
{
    var i = instance_create_depth(320,48,0,obj_trigger_cutscene_sp1_r14);   
    i.image_yscale = 8;
    i.image_xscale = 3;
}