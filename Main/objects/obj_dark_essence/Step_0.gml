/// @description Insert description here
// You can write your code in this editor

#region Спрайты
switch(val)
{
    case 5: image_index = 0;break;
    case 10: image_index = 1;break;
    case 20: image_index = 2;break;
}

#endregion

if to_player = 0
{
	x += hspd;
	y += vspd;
	vspd = lerp(vspd,0,0.05);
	hspd = lerp(hspd,0,0.05);
	timer++;
	if timer = 40 
	{
		to_player = 1;
		hspd = 0;
		vspd = 0;
	}
}

if to_player = 1
{
	var dir = point_direction(x,y,obj_Player.x,obj_Player.y-32);
	spd+=0.5;
	hspeed = lengthdir_x(spd,dir);
    vspeed = lengthdir_y(spd,dir);
	if place_meeting(x,y,obj_Player)
	{
        /*
        fnc_snd_play_over(snd_player_hpmana_gain);
		if (global.hp < global.hp_max) && (global.hp > 0)
		{
			global.hp +=1;
		}
        */
        switch(val)
        {
            case 5: 
                global.darkessence+=5;
                break;

            case 10:
                global.darkessence+=10;
                break;

            case 20:
                global.darkessence+=20;
                break;
        }
		instance_destroy();	
	}
}
