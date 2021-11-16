/// @description Insert description here
// You can write your code in this editor

#region Анимация

if state = 0
{
    image_speed = 0;
    sprite_index = spr_merchant_smk;
    t++;
    switch(t)
    {
        case 0:     image_index = 0;break;  
        case 10:    image_index = 1;break;
        case 20:    image_index = 2;break;
        case 100:   image_index = 3;break;
        case 110:   image_index = 4;break;
        case 250:   image_index = 5;break;
        case 260:   image_index = 6;break;
        case 400:   image_index = 0
                    t = 0;
                    state = 1;
                    image_speed = 0.5;
                    break;
    }      
}

if state = 1
{
    sprite_index = spr_merchant_slap;
    t++;
    image_speed = 0.5;
    
    if t = 300
    {
        t = 0;
        image_speed = 0;
        image_index = 0;
        state = 2;
    }
}

if state = 2
{
    t++;
    if (t = 100) 
    {
        state = 0;
        t = 0;
    }
}
#endregion

#region Дилаог
if ct_state = 0
{
    if place_meeting(x,y,obj_Player)
    {
        ct_state = 1;
        obj_Player.isDead = 2;
        obj_Player.fspd = 0;
        obj_Player.hspd = 0;
        obj_Player.spd = 0;
        obj_Player.key_left = 0;
        obj_Player.key_right = 0;
    }
}

if ct_state = 1
{
    ct_t++;
    if ct_t = 1
    {
        instance_create_depth(0,0,0,obj_text_c1_cutscene); 
        ct_state = 2;
    }
}

#endregion