/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_abil_flute_aoe)
{
   flute_rise = 1; 
} 

if !place_meeting(x,y,obj_abil_flute_aoe)
{
    flute_rise = -1;   
}

//ANIM
#region

if state = 0
{
    image_speed = 1;
    if trigger_attack = 0
    {
        sprite_index = spr_evilsprout_idle;
        image_speed = 1;
    }
    
    if trigger_attack!=0
    {
        image_speed = 0;
        switch(t)
        {
            case 1:   image_index = 0;sprite_index = spr_evilsprout_attack;break;
            case 10:  image_index = 1;break;
            case 15:  image_index = 2;break;
            case 20:  image_index = 3;break;
            case 30:  image_index = 4;break;
            case 50:  image_index = 5;break;
            case 85:  image_index = 6;break;
            case 100: image_index = 7;break;
        }
    }
}

if state = 1
{
    sprite_index = spr_evilsprout_open;
    image_speed = 0;
    if flute_rise = 1
    {
        if t_flute_rise < 10 t_flute_rise ++; 
        switch(t_flute_rise)
        {
            case 1: image_index = 0;break;   
            case 4: image_index = 1;break;   
            case 6: image_index = 2;break;   
            case 8: image_index = 3;break;   
            case 10: image_index = 3;break;   
        }
    }
    
    if flute_rise = -1
    {
        if t_flute < 30
        {
                 
            if t_flute_rise > -10 t_flute_rise --; 
            

            switch(t_flute_rise)
            {
                case -1: image_index = 3;break;   
                case -4: image_index = 2;break;   
                case -6: image_index = 1;break; 
                case -8: image_index = 0;break;   
                case -10:image_index = 0;break;   
            }
        }
    }
}


#endregion



#region под землей
if state = 0
{
    t_flute_rise = 0;
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    if dis < 200 && trigger_attack = 0
    {
        trigger_attack = 1;
    }
    
    if trigger_attack = 1
    {
        t++;
        if t = 90 
        {
            // выстрел 
            var m1 = instance_create_depth(x,y-12,depth-1,obj_evilsprout_missle);
            var m2 = instance_create_depth(x,y-12,depth-1,obj_evilsprout_missle);
            //var m3 = instance_create_depth(x,y-12,depth-1,obj_evilsprout_missle);
            var m4 = instance_create_depth(x,y-12,depth-1,obj_evilsprout_missle);
            var m5 = instance_create_depth(x,y-12,depth-1,obj_evilsprout_missle);
            m1.hspd = -3;
            m1.vspd = -2;
            m2.hspd = -1;
            m2.vspd = -3.5;
            /*
            m3.hspd = 0;
            m3.vspd = -4;
            */
            m4.hspd = 3;
            m4.vspd = -2;
            m5.hspd = 1;
            m5.vspd = -3.5;
        }
        if t = 160 
            {
                if dis < 200 t = 0 else
                {
                    trigger_attack = 0;t = 0;image_index = 0;
                }
            }
    }
    
}
#endregion

#region вырост

if instance_exists(obj_abil_flute_aoe)
{
    if (place_meeting(x,y,obj_abil_flute_aoe) && obj_abil_flute_aoe.image_alpha = 1 && t_flute < 120) t_flute++; 
}
if (!place_meeting(x,y,obj_abil_flute_aoe) && t_flute > 0) t_flute--;

if t_flute = 60 
{  
    var mask1 = instance_create_depth(x,y,depth,obj_evilsprout_mask_1hp);
    mask1.own = id;
    state = 1; 
    
    t = 0;
    trigger_attack = 0;
    t_attack = 0;
}
if t_flute = 0
{
    state = 0;   
}
#endregion

#region #takedmg

if state != 1
{
    // Атака

        fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
    // Топор

        fnc_take_dmg_axe(-10,0,-1,10,0,-1);
    
    // Удар вниз   

        fnc_take_dmg_hitbox_down(0,-16,-1);

    // Получение урона

        fnc_enemy_no_armor_dmg();

}
#endregion

#region смерть
if enemy_hp < 1
{
    instance_destroy();  
    var d = instance_create_depth(x,y,depth,obj_evilsprout_death);
    d.sprite_index = sprite_index;
    d.image_index = image_index;
}

#endregion