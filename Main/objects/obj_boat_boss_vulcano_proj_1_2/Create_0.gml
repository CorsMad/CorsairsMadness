/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player_boat) {
    var dir = point_direction(x,y,obj_Player_boat.x,obj_Player_boat.y-16);
    hspeed = lengthdir_x(3,dir);
    vspeed = lengthdir_y(3,dir);
}