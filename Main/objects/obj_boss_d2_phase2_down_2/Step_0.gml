if state = 0
{
    t++;

    if t = 50
    {
    
    t = 0;
        state = 1;
    }
}

if state = 1
{
    y+= 5;
    if  y > 240 && place_meeting(x,y+1,obj_block)
    {
        state = 2;   
        y=240;
        image_speed =0 ;
        sprite_index = spr_boss_d2_feltdown;
        image_index = 0;
        t=0;
        depth = 0;
    }
}   

if state = 2
{
    t++;
    switch(t)
    {
        case 5:image_index = 1;break;
        case 10:image_index = 2;break;
        case 15:image_index = 3;break;
        case 20:image_index = 4;break;
        case 25:image_index = 5;break;
        case 30:image_index = 6;break;
        case 35:image_index = 7;break;
        
    }
    if t = 150
    {   
        t= 0;
        state = 3;
        sprite_index = spr_boss_d2_getup;
    }
}
if state = 3 // подъем
{
    image_speed = 1;
    t++;
    if t= 60
    {
        t = 0;
        state = 4;
    }
}

if state = 4 // закапывание
{
    y+=vspd;
    vspd+=0.2;
    t++;
    image_speed = 1;
    if vspd < 0.5 sprite_index = spr_boss_d2_flyup else {depth = 101;sprite_index = spr_boss_d2_flydown;}

    if place_meeting(x,y+1,obj_block) && !instance_exists(obj_boss_d2_earth_down)
    {
        var earth = instance_create_depth(x,256-8,depth-1,obj_boss_d2_earth_down);
        earth.earth = 0;
        earth.t = 30;
    }
    
    if y> 270+32
    {
        obj_boss_d2_phase2_controller.state  = 1;
        instance_destroy();  
    }   
}


#region Take dmg

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

if instance_exists(fol)
{
    // получение урона
    	 
// Атака

    fnc_take_dmg_hitbox_fol(-10,-16,-1,10,-16,-1);
    
// Топор

    fnc_take_dmg_axe_fol(-10,-16,-1,10,-16,-1);
    
// Бомба

    fnc_take_dmg_bomb_fol(-10,-16,-1,10,-16,-1);

// Удар вниз   

    fnc_take_dmg_hitbox_down_fol(0,-32,-1);
    

// Получение урона

    fnc_enemy_no_armor_dmg();  
}

#endregion