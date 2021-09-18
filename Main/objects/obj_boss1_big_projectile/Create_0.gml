/// @description Insert description here
// You can write your code in this editor
spd = 4;
fnc_snd_play_over(snd_boss_big_shoot);
if instance_exists(obj_Player) 
{
    var dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
    hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
}