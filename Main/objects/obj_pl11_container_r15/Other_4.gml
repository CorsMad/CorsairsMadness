/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if global.Cutscene_pl1_r15 = 1
{
    var i = instance_create_depth(1152,112,0,obj_trigger_cutscene_pl1_r15);   
    i.image_yscale = 3;
    i.image_xscale = 1;
    
    if instance_exists(obj_wall_trigger_pl1_r15)
    {
        obj_wall_trigger_pl1_r15.state = 1;
        obj_wall_trigger_pl1_r15.imspd = 1;   
    }
}