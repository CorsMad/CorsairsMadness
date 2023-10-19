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
	if instance_exists(obj_boss_d2_phase2_controller) obj_boss_d2_phase2_controller.state+=0.5;
	if instance_exists(obj_boss_de_phase2_controller) obj_boss_de_phase2_controller.state+=0.5;
    
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

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,0);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,0);

// Eball

	fnc_take_dmg_eball(0,-16,-1,0);

fnc_take_dmg_parrot_laser(0,-16,-1,0)

// Получение урона

    fnc_enemy_no_armor_dmg();  
}

#endregion