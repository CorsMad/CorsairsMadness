/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player) 
{
	global.gold += 20;
    global.Collectables_array[MyID,0]=1;
	instance_create_depth(x,y,1,obj_sfx3);
	fnc_snd_play_coin()
	instance_destroy();
}

if global.Collectables_array[MyID,0] == 1 
{
    instance_destroy();   
}