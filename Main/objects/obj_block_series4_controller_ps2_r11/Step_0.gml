/// @description Insert description here
// You can write your code in this editor

if pos < 3
{
    if timer!=0 
        timer++;
    if timer = 200
    {
        if instance_exists(timer_pl) instance_destroy(timer_pl);
        timer = 0;
        pos = 0;
        s1.state = 2
        s2.state = 2
        s3.state = 2
    }
}

switch(pos)
{
    case 0:
        if  s1.state = 1 {
            pos = 1;
            timer = 1;
            if instance_exists(obj_Player)
            {
                timer_pl = instance_create_depth(obj_Player.x,obj_Player.y,obj_Player.depth,obj_block_series_timer)
            }
        }
        if  s2.state = 1 || s3.state = 1  
        {
            s1.state = 2;   
            s2.state = 2;   
            s3.state = 2;   
            pos = 0;
            timer = 0;
            instance_destroy(timer_pl);
        }
        break;
    case 1:
        if s2.state = 1 pos = 2;
        if s3.state = 1  
        {
            s1.state = 2;   
            s2.state = 2;   
            s3.state = 2;   
            pos = 0;
            timer = 0;
            instance_destroy(timer_pl);
        }
        break;
    case 2:
        if s3.state = 1 {
            pos = 3;
            s1.state = 3;
            s2.state = 3;
            s3.state = 3;
        }
        instance_destroy(timer_pl);
        break;
    case 3:
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



