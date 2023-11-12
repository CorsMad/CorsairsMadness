/// @description Insert description here
// You can write your code in this editor

if hit_cd!=0 hit_cd++;
if hit_cd=12 hit_cd=0;

if place_meeting(x,y,obj_hitbox) && hit_cd = 0{
    t = 1;   
    hit_cd =1;
    instance_create_depth(x,y-38,depth-1,obj_sfx3);
    fnc_snd_play_onetime(snd_skate_human);
}

if t!=0 t++;
switch(t){
    case 0:  image_index = 0;break;
    case 2:  image_index = 1;break;        
    case 100:image_index = 2;break;
    case 105:image_index = 3;break;
    case 110:image_index = 4;break;
    case 115:image_index = 5;break;
    case 120:image_index = 6;break;
    case 125: t = 0;break;
}








