/// @description Insert description here
// You can write your code in this editor


state = 0;

var en = instance_nearest(x,y,obj_enemy_parent_combo)
if en!=noone{
    var dir = point_direction(x,y,en.x,en.y-8);
    hspeed = lengthdir_x(5,dir);
    vspeed = lengthdir_y(5,dir);   
    image_angle = point_direction(x,y,obj_Player.x,obj_Player.y-16);
} else {
    hspeed = choose (-5,5);   
}





