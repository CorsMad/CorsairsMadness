/// @description Insert description here
// You can write your code in this editor
a = 0;
spd = 5;
if instance_exists(obj_Player) {
    var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
}