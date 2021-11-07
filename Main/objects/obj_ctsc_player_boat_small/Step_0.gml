/// @description Insert description here
// You can write your code in this editor
x+=spd;
t ++;
if t = 400
{
    instance_create_depth(0,0,0,obj_sound_controller_boat);   
}
if transfer = true 
{
    if image_xscale = 1
    {
        instance_create_depth(0,0,0,obj_room_transition_black_screen_to_L1_p);
    }   else instance_create_depth(0,0,0,obj_room_transition_black_screen_to_L1_b);   
}