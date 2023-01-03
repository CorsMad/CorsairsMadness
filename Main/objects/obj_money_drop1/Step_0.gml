/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);
vspd+=0.2;
if place_meeting(x,y+1,obj_block)
{
	hspd = 0;
	vspd = 0;
}
#region Pickup
	if pt < 15
	{
		pt++;
	}	
	if place_meeting(x,y,obj_Player) && pt > 14
	{
        global.gold += 1;
		instance_create_depth(x,y-4,depth,obj_sfx3);
		fnc_snd_play_coin()
		instance_destroy();
	}
#endregion