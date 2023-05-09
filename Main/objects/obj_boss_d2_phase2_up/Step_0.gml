if state = 0
{
    t++;

    if t = 50
    {
        state = 1;
    }
}

if state = 1
{
    y-= 5;
}   
if y <= -32
{
    obj_boss_d2_phase2_controller.state+=0.5;
    instance_destroy();   
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