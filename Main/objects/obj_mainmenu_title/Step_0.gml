/// @description Insert description here
// You can write your code in this editor
//if audio_group_is_loaded(SFXvolume) && audio_group_is_loaded(MusicVolume)
{
    t++;
}
if t = 100 
{
	isOn = 1;	
}

if isOn = 1 && t < 220
{
	y = lerp(y,0,0.05);
}

if isOn = 1 && t = 220
{
	y = 0;	
	instance_create_depth(64,200,-1,obj_mainmenu_controller);
}