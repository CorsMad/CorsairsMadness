/// @description Insert description here
// You can write your code in this editor
spd = 2.5;
fnc_snd_play_onetime(snd_follower_laser);

if instance_exists(obj_Player) {
    var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
}

image_speed = 2;


