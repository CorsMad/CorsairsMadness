if (state = 0) { // отлет
    x+=hspd;
    y+=vspd;
    hspd = lerp(hspd,0,0.1);
    vspd+=0.2;
    if hspd < 0.1
    {
        state = 1;   
        t = 0; 
    }
    
       
}

if (state = 1) { // Формирование
    t++;
    image_angle = 0;
    switch(t)
    {   
        case 1: fnc_snd_play_onetime(snd_transform); break;
        case 50: fnc_snd_play_onetime(snd_transform);image_index = 1;break;   
        case 100: fnc_snd_play_onetime(snd_transform);image_index = 2;break;   
        case 150: 
            instance_create_depth(x,y,10,obj_boss_se2_phase2);
            instance_destroy();            
            break;   
    }
}