/// @description Insert description here
// You can write your code in this editor
x += hspd;
y += vspd;
depth = -y
if state = 0
{
    vspd+=0.05;
    if vspd > 2 && y >= ycr
    {
        vspd = 0;
        state = 1;
    }
}

if state = 1
{
    hspd = -2;
    if instance_exists(obj_Player_boat) && (abs(x - obj_Player_boat.x) < 150)
    {
        state = 2; 
        hspd = 0;
        vspd = 0;
    }
}

if state = 2
{
    var dir = point_direction(x,y,obj_Player_boat.x,obj_Player_boat.y-32);
	spd+=0.5;
	hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
	if place_meeting(x,y,obj_player_boat_hitbox)
	{
        if obj_Player_boat.state != 9
        {
            global.gold += 5;
            fnc_snd_play_coin()
        }
		instance_create_depth(x,y,-1000,obj_sfx3);
		
		instance_destroy();	
	} 
}

fnc_boat_destroyer();