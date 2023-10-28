/// @description Insert description here
// You can write your code in this editor

if hit_cd!=0 hit_cd++;
if hit_cd=10 hit_cd=0;



fnc_Collision(obj_block);

image_speed = hspd;

if !place_meeting(x,y+1,obj_block) vspd+=0.1 else vspd = 0;


if place_meeting(x,y+1,obj_block){
    if hspd!=0 hspd = lerp(hspd,0,0.025);   
}


if instance_exists(obj_Player){
    if place_meeting(x,y,obj_hitbox) && hit_cd = 0{
        fnc_snd_play_onetime(snd_vase_destruct);
        if obj_Player.x < x hspd = 2 else hspd = -2;
        hit_cd = 1;
    }
       
}


