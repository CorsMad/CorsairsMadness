/// @description Insert description here
// You can write your code in this editor



if state = 0 {
    state =1;
    image_speed = 0;
    image_index = 13;
    fnc_snd_play_over(snd_di_boss_lancefly);
    if instance_exists(obj_Player) {
    var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
    }
}



