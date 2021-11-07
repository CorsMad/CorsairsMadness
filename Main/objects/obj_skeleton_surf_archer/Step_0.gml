/// @description Insert description here
// You can write your code in this editor
depth = -y;
#region скорость анимации

#endregion

#region перемещение

x+=hspd;
y+=vspd;

if state = 0    // Появление
{
	hspd = lerp(hspd,0,0.05);
	if hspd >= -0.05
	{
		hspd = 0;
		state = 1;
	}	
}	

if state = 1	// Выжидание
{
    vspd = 0;
	t++;
	if t = 10
	{
        
		state = 2;
		t = 0;
        image_index = 0;
        sprite_index = spr_skeleton_surf_archer_fire;
	}
}

if state = 2	// Выстрел
{
    vspd = 0;
	image_speed = 1;
    if image_index = 3
    {
        var arr = instance_create_depth(x-10,y-30,depth,obj_skeleton_surf_archer_arrow);   
        arr.hspd = -6;
    }
    if (image_index > image_number - 1) 
    {
        sprite_index = spr_skeleton_surf_archer_move;
        image_index = 5;
        state = 3;
    }
}

if state = 3    // Выжидание
{   
    image_speed = 1;
    t++;
	if t = 10
	{
		state = 4;
		t = 0;
        image_index = 0;
        sprite_index = spr_skeleton_surf_archer_move;
	}  
}

if state = 4    // перемещение
{
    t++;
    if t = 100
    {
        state = 1;
        t = 0;
        vspd = 0;
    }
    if instance_exists(obj_Player_boat)
		{
            if  obj_Player_boat.y = y
			{
				vspd = 0;
			} else 
            {
            
    			if y > obj_Player_boat.y
                {
                    vspd = -0.5; 
                }
            
                if y < obj_Player_boat.y
                {
                    vspd = 0.5;   
                }
            }
			
			
        }
}
#endregion

#region Получение урона

fnc_boat_destroyer();

fnc_boat_take_dmg_pistol(0,-16,-1,0,-16,-1);

fnc_enemy_no_armor_dmg();

if enemy_hp<=0
{
    instance_create_depth(x,y,depth,obj_skeleton_surf_dead);
    instance_create_depth(x,y-16,depth,obj_money_boat_5);
    instance_destroy();   
}

#endregion

#region Взамиодействие с игроком

if instance_exists(obj_Player_boat)
{
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        obj_Player_boat.hit_cd = 1; 
        global.hp-=1;
        enemy_hp = 0;
    } 
}

#endregion