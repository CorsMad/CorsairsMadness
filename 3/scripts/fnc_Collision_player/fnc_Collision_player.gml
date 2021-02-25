// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_Collision_player(col_obj)
{
	if place_meeting(x+fspd,y,col_obj) 
{
	while(!place_meeting(x+sign(fspd),y,col_obj)) 
	{
		x += sign(fspd);
	}
	fspd = 0;
}
x+= fspd;

if place_meeting(x,y+vspd,col_obj) 
{
	
	while(!place_meeting(x,y+sign(vspd),col_obj)) 
	{
		y += sign(vspd); // *sign(vspd); //sign(vspd);
	}
	
	vspd = 0;
	
}
y+= vspd;

}