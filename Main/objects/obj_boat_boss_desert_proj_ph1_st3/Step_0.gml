/// @description Insert description here
// You can write your code in this editor
if (state = 0) {
    if image_alpha < 1 image_alpha+=0.1;
    if (image_index > image_number - 1) {
        sprite_index = spr_boat_boss_desert_proj_tier2_st2;
        state = 1;
        fnc_snd_play_onetime(snd_follower_laser);
        x = x-56;
        y = y-10;
        spd = 3;
        if instance_exists(obj_Player_boat) {
            var dir = point_direction(x,y,obj_Player_boat.x,obj_Player_boat.y-16);
            hspeed = lengthdir_x(spd,dir);
            vspeed = lengthdir_y(spd,dir);
        }
    }
}
if (state = 1) {
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        obj_Player_boat.hit_cd = 1; 
        global.hp-=1;
    } 
}
