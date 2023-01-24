/// @description Insert description here
// You can write your code in this editor

if state = 1
{
    y-=2;
    t++;
    if t mod 30 = 0
    {
        fnc_snd_play_onetime(snd_j2_boss_walls);
        var d1 = instance_create_depth(0,248,0,obj_sfx_dust_expl_big);
        d1.image_angle = random(360);
        var d2 = instance_create_depth(480,248,0,obj_sfx_dust_expl_big);
        d2.image_angle = random(360);
    }
    if y <= 0
    {
        y = 0;
        state = 2;
    }
}


