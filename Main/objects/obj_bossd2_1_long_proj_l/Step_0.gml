/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    t++;
    if t mod 15 = 0 fnc_snd_play_onetime(snd_enemy_sander_open);
    x+=spd;
    if spd < 0
    {
        if x <= 48
        {
            x = 48; 
            state = 1;
            t = 0;
        }
    }
    if spd > 0
    {
        if x >= 432
        {
            x = 432; 
            state = 1;
            t = 0;
        }   
    }
}

if state = 1 // ожадание
{
    t++;
    if t = 20
    {
        t =0;
        state = 2;
        if instance_exists(obj_boss_d2_phase1_1)
        {
            obj_boss_d2_phase1_1.mov = 1 
            fnc_snd_play_onetime(snd_follower_block_fall);
        } 
    }
}

if state = 2
{
    y+=2; 
    if place_meeting(x,y+1,obj_block)
    {
        state = 3; 
        fnc_snd_play_onetime(snd_wall_explosion);
    }
}
if state = 3
{
    fnc_snd_play_onetime(snd_wall_explosion);
    for (var e = 0; e<24; e+=1) {
        var ear = instance_create_depth(x+16+16*e,y,depth+1,obj_boss_d2_eath_proj);
        ear.hspd = random_range(-1,1);
        ear.vspd = random_range(-0.5,-2)
    }
    instance_destroy();    
}
