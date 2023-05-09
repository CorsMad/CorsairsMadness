/// @description Insert description here
// You can write your code in this editor

/*

state 0 - ничего
state 1 - Появление глаза
state 2 - появление точки для нанесения урона

*/

#region Anim

if state = 0
{
    image_speed = 1;   
}

if state = 1
{
     image_speed = 0;
     switch(t)
     {
        case 1:     image_index = 1;break;
        case 5:     image_index = 2;break;
        case 10:    image_index = 3;break;
        case 15:    image_index = 4;break;
        case 135:     image_index = 3;break;
        case 140:     image_index = 2;break;
        case 145:    image_index = 2;break;
        case 149:    image_index = 0;break;
     }
}

if state = 2
{
    image_speed =0 ;
    switch(t)
    {
        case 1:     image_index = 1;break;
        case 5:     image_index = 2;break;
        case 10:    image_index = 3;break;
        case 335:   image_index = 4;break;
        case 340:   image_index = 5;break;
        case 345:   image_index = 6;break;
        case 349:   image_index = 0;break;   
    }
}



#endregion


if state = 0
{
    sprite_index = spr_boss1_d1_idle;
    t++;
    if t = 500
    {
        t = 0;
        if instance_exists(obj_boss_d1_2_eye1)
        {
            obj_boss_d1_2_eye1.isOn = 1;   
        }
        state = 1;
        sprite_index = spr_boss1_d1_openeye;
        image_index = 0;
    }    
}

if (state = 1) 
{
    t++;
    if t = 150
    {
        if instance_exists(obj_boss_d1_2_eye1)
        {
            obj_boss_d1_2_eye1.isOn = 0;   
        }
        t = 0;
        state = 0;
        sprite_index = spr_boss1_d1_idle;
        image_index = 0;
    }
}

if (state = 2) 
{
    t++;
    if t = 2
    {
        if instance_exists(obj_boss_d1_2_weakspot1)
        {
            obj_boss_d1_2_weakspot1.isOn = 1;
        }
    }    
    
    if t = 350
    {
        t = 0;
        state = 0;
        sprite_index = spr_boss1_d1_idle;
        image_index = 0;
        t_sander = 0;
    }
}


#region появление сандеров

if state!= 2 t_sander++;
if t_sander = 150
{
    switch(t_sander_choose)
    {
        case 0: instance_create_depth(440,186,depth-1,obj_boss_d1_sander);break;
        case 1: instance_create_depth(380,146,depth-1,obj_boss_d1_sander);break;
        case 2: instance_create_depth(430,142,depth-1,obj_boss_d1_sander);break;
        case 3: instance_create_depth(420,160,depth-1,obj_boss_d1_sander);break;
    }
    t_sander_choose = irandom(3);
    t_sander =0 ;
}
#endregion


#region Песок
t_sand++;
    if t_sand = 5
    {
        instance_create_depth(x+450+random_range(-14,14),y+187+random_range(0,24),depth+1,obj_boss1_d1_sand);
        instance_create_depth(x+435+random_range(-14,14),y+187+random_range(0,24),depth+1,obj_boss1_d1_sand);
        instance_create_depth(x+405+random_range(-14,14),y+187+random_range(0,24),depth+1,obj_boss1_d1_sand);
        t_sand = 0;
    }
#endregion

#region СМмерть

if enemy_hp <= 0
{
    instance_create_depth(x,y,depth,obj_boss_d1_2_death);
    instance_destroy(obj_boss_d1_sander);
    instance_destroy(obj_sander_projectile);
    instance_destroy();   
}
#endregion

#region red
if red !=0
{
    image_blend = c_red;
    red++;
    if red = 5
    {
        red = 0;   
    }
} else image_blend = c_white
#endregion

