/// @description Insert description here
// You can write your code in this editor

#region скорость анимации

if hspd >= -1
{
    image_speed = 0.5;   
}
if hspd < -1 && hspd > -1.5
{
    image_speed = 1;   
}
if hspd < -2
{
    image_speed = 1.5;   
}


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
	t++;
	if t = 10
	{
		state = 2;
		t = 0;
	}
}

if state = 2	// перемещение
{
	t++;
	if t> 10
	{
		t = 11;	
		if instance_exists(obj_Player_boat)
		{
			if (y > obj_Player_boat.y+8) && (y < obj_Player_boat.y+32)
			{
				vspd =-0.5;
			}
			if y >= obj_Player_boat.y+32
			{
				vspd =-1;
			}
			
			if (y < obj_Player_boat.y-8) && (y > obj_Player_boat.y-32)
			{
				vspd =0.5;
			}
			if y <= obj_Player_boat.y-32
			{
				vspd =1;
			} 
			
			if  obj_Player_boat.y-8 > y > obj_Player_boat+8
			{
				vspd = 0;
			}	
			
			
			
			/*
			if y = obj_Player_boat.y
			{
				vspd = 0;	
			}
			if y > obj_Player_boat.y
			{
				vspd = -0.75;
			}
			if y < obj_Player_boat.y
			{
				vspd = 0.75;
			}
			*/
		}
	}
	if hspd > -4
	{
		hspd -=0.025;
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
    instance_destroy();   
}

#endregion