/// @description Insert description here
// You can write your code in this editor

#region коллиз

    if place_meeting(x+hspd, y, obj_skeleton_limiter)
	{
		hspd = -hspd;	
	}
    
	if place_meeting(x+hspd*2, y, obj_block)
		{
		while (!place_meeting(x+sign(hspd), y, obj_block )) 
        	{
        		x+= sign(hspd);
        	}
            
            //hspd = hspd*0; 
	
		hspd = -hspd;
	    } 
	x += hspd;

	if place_meeting(x, y+vspd, obj_block) 
	{
	    while (!place_meeting(x,y+sign(vspd), obj_block )) 
		{
	        y+= sign(vspd);
	    }
	    vspd = 0;
	}
	y += vspd;

	if !place_meeting(x,y+vspd, obj_block)
	{
		vspd +=0.2;	
	}
	if place_meeting(x,y, obj_skeleton_jump_block)
	{
		vspd = -4;	
	}   
    if place_meeting(x,y+1,obj_block) grounded = 1 else grounded = 0
  
#endregion

#region Animation

if state = 0
{
    sprite_index = spr_werewolf_idle;
    image_speed = 1;
}

if state = 1
{
    if hspd > 0 image_xscale = -1;
    if hspd < 0 image_xscale = 1;
    if grounded = 0 
    {
        sprite_index = spr_werewolf_jump;  
        if vspd > 0 image_index = 1; else image_index = 0;
        image_speed = 0;
    } else 
    {
        sprite_index = spr_werewolf_run;
        if abs(hspd) = 2
        {
            image_speed = 1;
        } else image_speed = 1.25;
    }
}

if state = 2
{
    sprite_index = spr_werewolf_mad;
    image_speed = 0;
    image_index = 0;
}

if state = 3 
{
    sprite_index = spr_werewolf_mad;
    image_speed = 0.5;
}


#endregion

#region на месте
if state = 0
{
    if instance_exists(obj_Player)
    {
        if abs(obj_Player.x - x) < 200 
        {
            turn = 1;            
        }
        if turn=1 turn_t++;
        if turn_t = 50
        {
            if obj_Player.x < x hspd= -2; else hspd = 2;
            state = 1;   
        }
    }
}

#endregion

#region преследует

if state = 1
{
    
    if instance_exists(obj_Player) 
    {
        if (grounded = 1 && collision_line(x,y-16,x+hspd*24,y-16,obj_block,false,false)) vspd = -5;
    }
}
#endregion

#region бешенство

// переход в бешенство

if instance_exists(obj_abil_flute_aoe)
{
    if (place_meeting(x,y,obj_abil_flute_aoe) && obj_abil_flute_aoe.image_alpha = 1 && t_madness < 80) t_madness++; 
}
if (!place_meeting(x,y,obj_abil_flute_aoe) && t_madness > 0) t_madness--;


if t_madness > 30
{
    if snd!= 1 {fnc_snd_play_onetime(snd_enemy_get_flute) ;snd = 1}
    madness = 1;
    state = 3;
    
    fnc_achiev_get("ACH25");
}

if (!place_meeting(x,y,obj_abil_flute_aoe) && t_madness > 0) t_madness--;

if state = 3
{
    hspd = lerp(hspd,0,0.05);
    if t_madness = 0
    {  
        snd = 0;
        hspd = choose(-3,3);
        madness = 0;
        state = 1;
    }
}

#endregion

#region получение урона/отскок
if state = 2
{
    if place_meeting(x,y+1,obj_block)
    {
        t++;
        hspd = 0;
        vspd = 0;
        if t = 20
        {
            t = 0;
            state = 1;   
            hspd = choose(-2,2);
        }
    }
}
#endregion

#region #takedmg

if hit_cd = 1	
{
    snd = 0;
    state = 2;
    vspd = -3;
    t = 0;
    if obj_Player.x < x 
    {
        hspd = 1
    } else hspd = -1; 
}


if state = 0 || state = 1 || (state = 2 && t > 5) || state = 3
{
    
         // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)

    // Получение урона

        fnc_enemy_no_armor_dmg();  
        if hit_cd = 2	
        {
            madness = 0
            t_madness = 0;
            state = 2;
            vspd = -3;
            t = 0;
            if obj_Player.x < x 
            {
                hspd = 1
            } else hspd = -1; 
        }       
}
    
#endregion

#region Смерть

if enemy_hp <=0 
{
    var d = instance_create_depth(x,y,depth,obj_werewolf_death);
    d.image_xscale = image_xscale;
    instance_destroy();   
}

if y > room_height+32 instance_destroy();
#endregion

