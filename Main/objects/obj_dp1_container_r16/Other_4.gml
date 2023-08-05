/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.Cutscene_dp1_r16 = 1
{
    var i = instance_create_depth(288,0,0,obj_trigger_cutscene_pd1_r16);   
    i.image_yscale = 20;
    i.image_xscale = 20;
}