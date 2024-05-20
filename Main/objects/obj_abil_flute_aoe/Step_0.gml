/// @description Insert description here
// You can write your code in this editor
if t < 60 t++;
if t >= 60 && image_alpha < 1 image_alpha +=0.1;

if t < 60{
    switch(t){
        case 5 :  fnc_snd_play_onetime(snd_flute_1);break;
        case 35 : fnc_snd_play_onetime(snd_flute_2);break;
        case 59 : fnc_snd_play_onetime(snd_flute_3);break;
    }
}

if t >= 60 {
     t_sound++;
     switch(t_sound){
        case 10:     fnc_snd_play_onetime(snd_flute_1);break;    
        case 20:     fnc_snd_play_onetime(snd_flute_2);break;
        case 30:     fnc_snd_play_onetime(snd_flute_3);t_sound = 0;break;
     }
}


if instance_exists(obj_Player)
{
    if obj_Player.isFlueting = 0 instance_destroy()   
	if obj_Player.isDead!=0 instance_destroy();
	if obj_Player.isClimbing = 1 instance_destroy();
} else {
	instance_destroy();
}	