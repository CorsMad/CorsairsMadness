/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.Cutscene_f1_r33 = 1
{
    var i = instance_create_depth(384,0,0,obj_trigger_cutscene_f1_r33);   
    i.image_yscale = 20;
}