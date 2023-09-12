/// @description Insert description here
// You can write your code in this editor
/*
  0 - появление
  1 - перемещение в игрока
  2 - ожидание + выстрел
  3 - ожидание
  4 - перемещение в игрока
*/
if instance_exists(water)
{
    if image_index <=1 water.image_alpha = 0 else water.image_alpha = 1;   
}
if image_alpha <1 image_alpha+=0.1;

t_anim++;
if t_anim = 10
{
    if image_index = 0 {
        var b = instance_create_depth(x+random_range(-16,16),y+random_range(-4,4),depth-1,obj_sfx1);
        b.vspeed = -0.1;
        b.hspeed = random_range(-0.2,0.2);
        b.image_xscale = 0.5;
        b.image_yscale = 0.5;  
    }  
}

if t_anim = 20
{
    if image_index = 0 {
    var c = instance_create_depth(x+random_range(-16,16),y+random_range(-4,4),depth-1,obj_sfx1);
        c.vspeed = -0.1;
        c.hspeed = random_range(-0.2,0.2);
        c.image_xscale = 0.5;
        c.image_yscale = 0.5;
    }
    t_anim = 0;   
}


if instance_exists(obj_Player_boat)
{
    if y > obj_Player_boat.y depth = obj_Player_boat.depth-1 else depth = obj_Player_boat.depth+1;   
}

switch(state)
{
    case 0:
        #region появление
            t++;
            if t = 50
            {
                t = 0;
                state = 1;
            }
        #endregion        
        break;
    case 1:
        #region перемещение в игрока
        if spd < 3 spd+=0.01;
        if instance_exists(obj_Player_boat)
        {
            if point_distance(x, y, obj_Player_boat.x, obj_Player_boat.y) > spd
            {
                move_towards_point(obj_Player_boat.x, obj_Player_boat.y, spd);
            } else 
            {
                speed = 0;
                spd = 0;
                state = 2;
            }
        }
        #endregion
        break;
    case 2:
        #region ожидание
        t++;
        switch(t)
        {
            case 40:image_index = 1;break;
            case 45:image_index = 2;break;
            case 50:
                image_index = 3;
                instance_create_depth(x,y,depth,obj_boat_boss_shadow_underwater_tent_proj);                                
                break;
            case 55:image_index = 4;break;
            case 60:image_index = 5;break;
            case 65:image_index = 6;break;
            case 70:image_index = 7;break;
            case 130:image_index = 8;break;
            case 135:image_index = 9;break;
            case 140:image_index = 10;break;
            case 145:image_index = 0;state = 3;break;
        }
             
        #endregion
        break;
    case 4:
        #region перемещение в игрока
        if spd < 3 spd+=0.05;
        if instance_exists(obj_Player_boat)
        {
            if point_distance(x, y, obj_Player_boat.x, obj_Player_boat.y) > spd
            {
                move_towards_point(obj_Player_boat.x, obj_Player_boat.y, spd);
            } else 
            {
                speed = 0;
                state = 5;
                t = 0;
                spd = 0;
            }
        }
        #endregion
        break;
    case 5:
        #region ожидание
        t++;
        switch(t)
        {
            case 40:image_index = 1;break;
            case 45:image_index = 2;break;
            case 50:
                image_index = 3;
                instance_create_depth(x,y,depth,obj_boat_boss_shadow_underwater_tent_proj);
                break;
            case 55:image_index = 4;break;
            case 60:image_index = 5;break;
            case 65:image_index = 6;break;
            case 70:image_index = 7;break;
            case 135:image_index = 8;break;
            case 140:image_index = 9;break;
            case 145:image_index = 10;break;
            case 149:;state = 6;break;
        }
        #endregion
        break;
    case 7:
        instance_destroy();
        if instance_exists(obj_boat_boss_shadow_1)
        {
            obj_boat_boss_shadow_1.phase = 2;  
        }
        break;
}


#region Взамиодействие с игроком

if instance_exists(obj_Player_boat) && (image_index>1 && image_index<10)
{
    if place_meeting(x,y,obj_player_boat_hitbox) && obj_Player_boat.hit_cd = 0
    {
        obj_Player_boat.hit_cd = 1;
		global.hp-=1;
    } 
}

#endregion