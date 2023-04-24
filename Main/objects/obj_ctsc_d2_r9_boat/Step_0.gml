/// @description Insert description here
// You can write your code in this editor
x+= hspd;
y+= vspd;

if state = 1
{
    t++;
    hspd +=0.05;
    image_index = 1;     
    switch(t)
    {
        case 1:     vspd = 2;
                    audio_play_sound(snd_player_landing,0,0);
                    break;
        case 5:     vspd = 0;
                    
                    break;

    }
    
    if t > 5 && hspd < 3
    {
        y = lerp(y,272,0.02);
        
    }
    if x > 500
    {
        fnc_msc_stop_play_slow();   
    }
    if x > 600 
    {
        room_goto(D2_r9_to_boat);
        global.boatCheckpoint = 0;
        instance_destroy();
    }
}
