/// @description Insert description here
// You can write your code in this editor
x += hspd;
y += vspd;

if state = 0
{
    vspd+=0.05;
    if vspd > 2 && y >= ycr
    {
        vspd = 0;
        state = 1;
    }
}

if state = 1
{
    hspd = -2;
}

if place_meeting(x,y,obj_player_boat_hitbox)
{
    
    instance_destroy();
    if obj_Player_boat.state != 9
    {
        fnc_snd_play_over(snd_ability_gain);
        global.hp = global.hp_max;
        obj_Player_boat.image_index = 0;
        obj_Player_boat.fastshoot_count = 0;
        obj_Player_boat.cannonshoot_count= 20 
        obj_Player_boat.t = 0;
        obj_Player_boat.state = 3;
        
    }
    //obj_Player_boat.image_index = 0;
}

//fnc_boat_destroyer();