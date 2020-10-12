/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.1;
image_yscale = 0.1;
image_speed = 0;

spd = 3;

// Направление и скорость

if instance_exists(obj_Player) {
    var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
}