/// @description Insert description here
// You can write your code in this editor
if instance_exists(origin)
{
if back = 0
{
	acc=lerp(acc,0,0.03);
	hspeed = lengthdir_x(acc,dir1);
	vspeed = lengthdir_y(acc,dir1);
	if acc<=1
	{
		acc = 0;
		back = 0.5;
		hspeed = 0;
		vspeed = 0;
	}
    if place_meeting(x,y,obj_hitbox_mask)
    {
        acc = 0;
		back = 1;
        t = 0;
		hspeed = 0;
		vspeed = 0;   
    }
}

if back = 0.5
{
	t++;
	if t = 20
	{
		t = 0;	
		back = 1;
	}
}

if back = 1
{
	acc=lerp(acc,6,0.2);
    var dir2 = point_direction(x,y,origin.x,origin.y-16);
    hspeed = lengthdir_x(acc,dir2);
    vspeed = lengthdir_y(acc,dir2);

    if place_meeting(x,y,origin)
    { 
        fnc_snd_play_onetime(snd_player_jump);
		origin.state = 3.5;
        instance_destroy();  
    }	
}
} else
{
	instance_destroy();	
}
