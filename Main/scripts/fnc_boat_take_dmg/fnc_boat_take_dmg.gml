// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_boat_take_dmg(){

}

function fnc_boat_take_dmg_pistol(x1,y1,d1,x2,y2,d2)
{
    var pistolhit = instance_place(x,y,obj_player_boat_pistol_projectile);
    if (pistolhit !=noone) && (hit_cd = 0)
    {
         if obj_Player_boat.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
        pistolhit.a = 1;
        hit_cd = 1;
		enemy_hp -= 1;
       
    }
    
    var cannonhit = instance_place(x,y,obj_player_boat_cannon_projectile);
    if (cannonhit !=noone) && (hit_cd = 0)
    {
         if obj_Player_boat.x < x 
		{
			instance_create_depth(x+x1,y+y1,d1,obj_sfx_weapon_slash);
		} else instance_create_depth(x+x2,y+y2,d2,obj_sfx_weapon_slash);
        cannonhit.a = 1;
        hit_cd = 1;
		enemy_hp -= 4;
       
    }
    
}

function fnc_boat_take_dmg_obstacle()
{
    var pistolhit = instance_place(x,y,obj_player_boat_pistol_projectile);
    if (pistolhit !=noone) && (hit_cd = 0)
    {
         if obj_Player_boat.x < x 
		{
			instance_create_depth(pistolhit.x,pistolhit.y,-1000,obj_sfx_weapon_slash);
		} 
        pistolhit.a = 1;
        hit_cd = 1;
		enemy_hp -= 1;  
    }
    var cannonhit = instance_place(x,y,obj_player_boat_cannon_projectile);
    if (cannonhit !=noone) && (hit_cd = 0)
    {
         if obj_Player_boat.x < x 
		{
			instance_create_depth(cannonhit.x,cannonhit.y,-1000,obj_sfx_weapon_slash);
		} 
        cannonhit.a = 1;
        hit_cd = 1;
		enemy_hp -= 4;
       
    }
}