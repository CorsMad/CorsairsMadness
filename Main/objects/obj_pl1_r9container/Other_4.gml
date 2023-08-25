/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,0,obj_room_transition_black_screen);

if instance_exists(obj_Player)
{
    if obj_Player.x < room_width/2
    {
        var trig = instance_create_depth(288,240,0,obj_pl1_r9_wall_trigger)   ;
        trig.image_yscale = 2.3;
    }
}