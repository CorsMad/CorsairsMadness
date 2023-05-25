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
        case 50: image_index = 1;break;   
        case 100: image_index = 2;break;   
        case 150: 
            instance_create_depth(x,y,-1,obj_boss_s2_phase2);
            instance_destroy();            
            break;   
    }
}