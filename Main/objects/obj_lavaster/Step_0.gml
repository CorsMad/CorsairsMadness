/// @description Insert description here
// You can write your code in this editor

#region Ожидание

if state = 0
{
    if instance_exists(obj_Player)
    {
        if abs(obj_Player.x - x) < range 
        {
            fnc_snd_play_onetime(snd_lavaster_appear);
            state = 1;   
        }
    }
}

#endregion

#region Взлет

if state = 1
{
	if instance_exists(obj_Player){
		if obj_Player.x < x image_xscale = 1 else image_xscale = -1;	
	}
	
     if ((t mod 5 = 0) && t < 65) {
		 for (var lav = 0; lav < 6; lav++) {
		     instance_create_depth(x+random_range(-22,22),y+random_range(-12,16),depth-1,obj_lavaster_lava);
		 }		 		 
	 }
     y = lerp(y,heigh,0.05);
     t++;
     
     if t = 65 image_index = 1;
	 if t = 70 image_index = 2;
	 if t = 80 {
		sprite_index = spr_lavastern_attack2;
		image_speed = 1;	 
	 }
     if t = 100
     {
        t = 101;
        state = 2;
        if instance_exists(obj_Player) 
        {
            dir = point_direction(x,y,obj_Player.x,obj_Player.y-16);
            
			//if hspeed > 0 image_xscale = -1 else image_xscale = 1;
        }
        
		
     }
}

#endregion

#region Полет в игрока
if state = 2 {
	hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
	t_trace_part++;
	if t_trace_part = 5 {
		t_trace_part = 0;
		instance_create_depth(x,y,depth+1,obj_lavaster_trace,{image_xscale : image_xscale});
	}
	if spd < 2 spd+=0.05;	
}
#endregion

#region Отлет

if state = 3 
{
    vspd += 0.2;
    y+=vspd;
    x+=hspd;
    
    if place_meeting(x,y,obj_block)
    {
        instance_destroy(); 
        instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small)
        var d1 = instance_create_depth(x,y,depth,obj_lavaster_death);
        var d2 = instance_create_depth(x,y,depth,obj_lavaster_death);
        var d3 = instance_create_depth(x,y,depth,obj_lavaster_death);
        d1.image_index = 0;
        d2.image_index = 1;
        d3.image_index = 2;
        d1.hspd = -2;
        d1.vspd = -2;
        d2.hspd = random_range(-1,1);
        d2.vspd = -3;
        d3.hspd = 2;
        d3.vspd = -2;
    }
}

if state > 1 {
	if y > room_height+64 instance_destroy();	
	if y < -64 instance_destroy();	
}
#endregion

#region #takedmg

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

#endregion

#region Смерть
if enemy_hp < 1 
{
    fnc_snd_play_onetime(snd_chest_destruct);
    instance_destroy();
    instance_create_depth(x,y,depth-1,obj_sfx_dust_expl_small)
    var d1 = instance_create_depth(x,y,depth,obj_lavastern_death);
    var d2 = instance_create_depth(x,y,depth,obj_lavastern_death);
    var d3 = instance_create_depth(x,y,depth,obj_lavastern_death);
    var d4 = instance_create_depth(x,y,depth,obj_lavastern_death);
    d1.image_index = 0;
    d2.image_index = 1;
    d3.image_index = 2;
    d4.image_index = 3;
    d1.hspd = -2;
    d1.vspd = -2;
    d2.hspd = random_range(-1,1);
    d2.vspd = -3;
    d4.hspd = random_range(-1,1);
    d4.vspd = -3;
    d3.hspd = 2;
    d3.vspd = -2;
}
#endregion