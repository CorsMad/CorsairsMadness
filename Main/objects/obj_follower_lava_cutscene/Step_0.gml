/// @description Insert description here
// You can write your code in this editor

switch(state)
{
    case 0://anim появления
        t++;
		switch(t)
		{
			case 5:image_index = 1;break;	
			case 10:image_index = 2;break;	
			case 15:image_index = 3;break;	
			case 20:image_index = 4;break;	
		}
        if t = 100
        {
            t =0;
            state =0.5;
            obj_cutscene_pl1_r15.state = 2;
        }
        break;
    case 1: //anim смеха
        t++;
        if t = 50
        {
            t= 0;
            state = 1.5;
        }
        break;
    case 2: // anim выхода
        t++;
		switch(t)
		{
			case 30:image_index = 3;break;	
			case 35:image_index = 2;break;	
			case 40:image_index = 1;fnc_snd_play_over(snd_spikes_trap_activation);break;	
			case 45:image_index = 0;break;	
		}
        if t = 50
        {
            t = 0;
            instance_destroy();
        }
        break;
}




