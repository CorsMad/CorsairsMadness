/// @description Insert description here
// You can write your code in this editor

switch(pos)
{
    case 0:
        if  s1.state = 1 pos = 1;
        if  s2.state = 1 || s3.state = 1 || s4.state = 1 
        {
            s1.state = 2;   
            s2.state = 2;   
            s3.state = 2;   
            s4.state = 2; 
            pos = 0;
        }
        break;
    case 1:
        if s2.state = 1 pos = 2;
        if s3.state = 1 || s4.state = 1 
        {
            s1.state = 2;   
            s2.state = 2;   
            s3.state = 2;   
            s4.state = 2; 
            pos = 0;
        }
        break;
    case 2:
        if s3.state = 1 pos = 3;
        if s4.state = 1 
        {
            s1.state = 2;   
            s2.state = 2;   
            s3.state = 2;   
            s4.state = 2; 
            pos = 0;
        }
        break;
    case 3:
        if s4.state = 1 
        {
            pos = 4;
            s1.state = 3;
            s2.state = 3;
            s3.state = 3;
            s4.state = 3;
        }
        break;
    case 4:
        t++;
        if t = 50
        {
            fnc_snd_play_onetime(snd_ps_block_series_finish);
            fnc_snd_play_onetime(snd_ps_block_destr);
         if instance_exists(obj_ps1_block_dis2){
            obj_ps1_block_dis2.isOn = 0; 
         }
         instance_destroy();
        }
        break;
}



