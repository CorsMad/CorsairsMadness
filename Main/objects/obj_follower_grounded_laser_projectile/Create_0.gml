/// @description Insert description here
// You can write your code in this editor
spd = 4.5;


if instance_exists(obj_Player) {
    var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
}

image_speed = 2;
image_angle = point_direction(x,y,obj_Player.x,obj_Player.y-16);