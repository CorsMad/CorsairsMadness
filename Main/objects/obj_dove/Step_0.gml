/// @description Insert description here
// You can write your code in this editor
#region overall
x+=hspd;
y+=vspd;
if hspd > 0 
{
    image_xscale = 1;       
}
if hspd < 0
{
    image_xscale = -1;   
}
#endregion

if state != 5
{
    #region передвижение влево
    if state = 1
    {
        sprite_index = spr_dove_walk;
        image_speed = 0.5;
        t++;
        hspd = -0.5;
        if t = 70
        {
            t = 0;
            state = 3;
            tol = 1;
        }
    }
    #endregion

    #region передвижение вправо

    if state = 2 
    {
        sprite_index = spr_dove_walk;
        image_speed = 0.5;
        t++;
        hspd = 0.5;
        if t = 70
        {
            t = 0;
            state = 3;
            tor = 1;
        }
    }
    #endregion

    #region остановка

    if state = 3
    {
        sprite_index = spr_dove_stand;
        hspd = 0;
        t++;
        if t = 90
        {
            t = 0;
            a = choose(1,2)
            {
                if a = 1
                {
                    state = 4;  
                    image_speed = 0;
                }
                if a = 2 
                {
                    if tol = 1
                    {
                        state = 2; 
                        image_speed = 0;
                        tol = 0;
                    }
                    if tor = 1
                    {
                        tor = 0;
                        image_speed = 0;
                        state = 1; 
                    }  
                }
            }       
        }
    }

    #endregion

    #region клев

    if state = 4
    {
        sprite_index = spr_dove_klev;
        image_speed = 0.5;
        hspd = 0;
        t++;
        if t = 35
        {
            t = 0;
            state = 3;
        }
    }

    #endregion
}

#region полет
if instance_exists(obj_Player) && state !=5
    {
        var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
        if dis < 64 
        {   
            state = 5;
            sprite_index = spr_dove_fly;
            image_speed = 1;
            if x >= obj_Player.x
            {
                hspd = 0.1;   
            } else hspd = -0.1;
        }
    }
if state = 5
{
    if image_speed > 0
    {
        image_speed -= 0.01;
    }
    if hspd > 0 && hspd < 6
    {
        hspd += 0.075;   
    } 
     if hspd < 0 && hspd > -6
    {
        hspd -= 0.075;   
    }
    spd += 0.0015;
    vspd -= spd;
}
#endregion