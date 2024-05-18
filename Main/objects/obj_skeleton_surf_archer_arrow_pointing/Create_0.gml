/// @description Insert description here
// You can write your code in this editor
spd = 6;
image_xscale = -1;
if instance_exists(obj_Player_boat) {
    var dir = point_direction(x,y,obj_Player_boat.x,obj_Player_boat.y-24);
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
}
fnc_snd_play_near_player(snd_skel_throw);