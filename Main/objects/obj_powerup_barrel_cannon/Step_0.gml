/// @description Insert description here
// You can write your code in this editor
depth = -y;
if isDead = 0
{
    y = y + cos(a)/5;
	a+= 0.05;
    x+=hspd;
}

if isDead = 1
{
    b++;
    switch(b)
    {
        case 1: instance_create_depth(x+4,y-20,depth-1,obj_sfx_dust_expl_big);
                instance_create_depth(x,y-24,depth-1,obj_boat_power_cannon);
                break;
        case 4: instance_create_depth(x+8,y-18,depth-2,obj_sfx_explosion);break;
        case 5: instance_destroy();break;
    }
}



#region Vystrel
    var pistolhit = instance_place(x,y,obj_player_boat_pistol_projectile);
    if (pistolhit !=noone)
    {
        pistolhit.a = 1;
        isDead = 1;  
    } 
    var cannonhit = instance_place(x,y,obj_player_boat_cannon_projectile);
    if (cannonhit !=noone)
    {
        cannonhit.a = 1;
        isDead = 1;  
    } 
    
    
    
#endregion


fnc_boat_destroyer();