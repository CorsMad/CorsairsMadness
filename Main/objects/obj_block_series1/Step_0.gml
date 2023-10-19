switch(state)
{
    case 0: // выкл
        image_index = 0;
        if place_meeting(x,y,obj_hitbox_mask) 
        {
            state = 1; 
            instance_create_depth(x,y,depth-1,obj_sfx_weapon_slash);
            fnc_snd_play_onetime(snd_ps_block_series1);
        }
        break;
    case 1: //вкл
        image_index = 1;
        break;
    case 2: // error
        t++;
        if t = 1 fnc_snd_play_onetime(snd_ps_block_series_off);
        if t = 50
        {
            t =0 ;
            state = 0;
        }
        image_index = 2;
        break;
    case 3: //complete
        image_index = 3;
        break;
}