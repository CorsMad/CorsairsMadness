/// @description Insert description here
// You can write your code in this editor
x-= 2;
if place_meeting(x,y,obj_Player_boat)
{
    instance_destroy();
    //obj_Player_boat.state = 1;
    obj_Player_boat.bonus_gain_fast_pistol = 1;
    //obj_Player_boat.image_index = 0;
}