/// @description Insert description here
// You can write your code in this editor
depth = -y;


if place_meeting(x,y,obj_boat_mine) || place_meeting(x,y,obj_boat_obstacle_big) || place_meeting(x,y,obj_boat_obstacle_small) || place_meeting(x,y,obj_boat_stone)
{
    instance_destroy();   
}