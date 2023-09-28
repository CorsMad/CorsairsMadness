/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 0:
        t++;
        switch(t){
            case 50: fnc_snd_play_onetime(snd_cannon_fire);break;
            case 60: fnc_snd_play_onetime(snd_cannon_fire);break;
            case 70: fnc_snd_play_onetime(snd_cannon_fire);break;
            case 80: fnc_snd_play_onetime(snd_cannon_fire);break;
            case 90: fnc_snd_play_onetime(snd_cannon_fire);break;
            case 150: instance_create_depth(-16,48,201,obj_DI_d4_pew_cannonball);break;
            case 160: instance_create_depth(-16,48,201,obj_DI_d4_pew_cannonball);break;
            case 170: instance_create_depth(-16,48,201,obj_DI_d4_pew_cannonball);break;
            case 180: instance_create_depth(-16,48,201,obj_DI_d4_pew_cannonball);break;
            case 190: instance_create_depth(-16,48,201,obj_DI_d4_pew_cannonball);break;
            case 300:
                instance_create_depth(0,0,0,obj_txt_DI_p4_end_merch2);
                instance_destroy();
                break;
        }   
        break;
    case 1:
        t++;
        
        break;
}