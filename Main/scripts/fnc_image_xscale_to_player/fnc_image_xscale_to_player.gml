// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_image_xscale_to_player()
{
    if x > obj_Player.x
	{
		image_xscale = -1;	
	} else image_xscale = 1;
}