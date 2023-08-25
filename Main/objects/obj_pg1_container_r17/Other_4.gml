/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.Cutscene_pg1_r17 = 1
{
    var i = instance_create_depth(320,144,0,obj_trigger_cutscene_pg1_r17);   
    i.image_xscale = 1;
    i.image_yscale = 6;    
}