// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_image_xscale()
{
	if hspd > 0 
	{
		image_xscale = 1;	
	}
	if hspd < 0 
	{
		image_xscale = -1;	
	}
}