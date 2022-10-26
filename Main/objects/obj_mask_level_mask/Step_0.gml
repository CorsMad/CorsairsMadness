/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    y = y + cos(a)/5;
    a+=0.05;
}
if state = 1
{
    
if instance_exists(obj_player_t1_ctscn) {
    var dir = point_direction(x,y,obj_player_t1_ctscn.x,obj_player_t1_ctscn.y-16);
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
}
}