/// @description Insert description here
// You can write your code in this editor

#region Выпускает скарабеев

if state = 0
{
    
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    if dis < 160 && trigger = 0 && instance_number(obj_scarab_nest_mini) < 5 
    {
        trigger = 1;  
        image_index = 0;
    }
    if trigger = 1
    {
        t_attack ++;
        switch(t_attack)
        {
            case 5:image_index = 1;break;   
            case 10:image_index = 2;break;   
            case 15:image_index = 3;break;   
            case 40:image_index = 4;break;   
            case 45:
                image_index = 5;
                fnc_snd_play_over(snd_enemy_portal);
                instance_create_depth(x,y,depth-1,obj_scarab_nest_creator);
                t = 0;

            break;   
            case 70:image_index = 6;break; 
            case 75:
                trigger = 0;
                t_attack = 0;
                image_index = 0;                
        }
    
    }
    
    if trigger = 0 {sprite_index = spr_scarab_nest_idle;image_speed = 1;}
    if trigger = 1 {sprite_index = spr_scarab_nest_attack;image_speed = 0;}
}

#endregion

#region Если попали стрелой
if state = 1
{
    sprite_index = spr_scarab_nest_idle;
    image_speed = 3;
    t++;
    switch(t)
    {
        case 1: 
            var el1 = instance_create_depth(x+random_range(-8,8),y+random_range(8,20),depth-1,obj_sfx_electricity2_combo);
            el1.image_alpha = 0.7;
            el1.image_speed = 2;  
            break;
        case 30:
            var el2 = instance_create_depth(x+random_range(-8,8),y+random_range(8,20),depth-1,obj_sfx_electricity2_combo);
            el2.image_alpha = 0.7;
            el2.image_speed = 2;
            break;
        case 50:
            instance_create_depth(x,y,depth-1,obj_scarab_nest_electr);
            break;
        case 60:
            t = 0;
            state = 0;
            t_attack = 0;
            break;
    }
}
#endregion

#region Take dmg

// Атака

// Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);

// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-32,-1);
	
// Топор

    fnc_take_dmg_axe(-10,-16,-1,10,-16,-1,1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)

// Получение урона

    if hit_cd > 0 
	{
		hit_cd+=1;	
	}
	if hit_cd > 15
	{
		hit_cd = 0;	
	}
	
	if hit_cd > 0 
	{
		image_blend = c_red;	
	}
	if hit_cd = 0
	{
		image_blend = c_white;	
	}
    
#endregion

#region death

if enemy_hp < 1
{
    instance_destroy()   ;
    var d = instance_create_depth(x,y,depth,obj_scarab_nest_dead);
    d.sprite_index = sprite_index;
    d.image_index = image_index;
    
}

#endregion