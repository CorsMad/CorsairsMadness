/// @description Insert description here
// You can write your code in this editor

if t<160 t1++;
if t1 mod 20
{
    instance_create_depth(x+random_range(-16,16),y+random_range(-16,16),depth-1000,obj_sfx_explosion)   ;
}


if state = 0
{    
    t++;
    switch(t)
    {
        case 100: sprite_index = spr_boat_boss_vulcano_arrival;image_index = 9;image_speed =0 ;break;
        case 105: image_index=8;break;
        case 110: image_index=7;break;
        case 115: image_index=6;break;
        case 120: image_index=5;break;
        case 125: image_index=4;break;
        case 130: image_index=3;break;
        case 135: image_index=2;
            fnc_snd_play_onetime(snd_vase_destruct);
			instance_destroy(obj_boat_boss_desert_water);
			instance_destroy(obj_boat_boss_shadow_water_main);
			instance_destroy(obj_boat_boss_shadow_water);
			break;
        case 140: image_index=1;break;
        case 145: image_index=0;break;

        case 165: 
		obj_sp_boat_L2.state = 16.5;
        obj_sp_boat_L2.t = 0;
        
        instance_destroy();
		break;        
    }
}

if t mod 10 = 0 instance_create_depth(x,y+random_range(-16,16),depth-1,obj_sfx_sparkle_1);