/// @description Insert description here
// You can write your code in this editor
spd = 1;

fnc_snd_play_onetime(snd_follower_laser);
if instance_exists(obj_Player_boat) {
    var dir = point_direction(x,y,obj_Player_boat.x,obj_Player_boat.y-16);
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
}
