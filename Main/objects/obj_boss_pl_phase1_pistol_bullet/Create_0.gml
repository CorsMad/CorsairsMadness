/// @description Insert description here
// You can write your code in this editor
image_alpha = 0;
image_index = 2;
image_speed = 0;
t = 0;
spd = 4;

fnc_snd_play_boat_pistol();
if instance_exists(obj_Player) {
    var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
}

image_angle = point_direction(x,y,obj_Player.x,obj_Player.y-16);