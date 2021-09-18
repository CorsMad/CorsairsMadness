/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_Player)
{
	instance_create_depth(x,y,0,obj_silver_key_projectile);
	instance_create_depth(x,y,-1,obj_sfx3);
	obj_Player.silverkey_counts +=1;
	instance_destroy();	
    fnc_snd_play_over(snd_take_key);
}

a++;
if a = 60
{
	image_speed = 1;	
}
if (image_index > image_number - 1) {
    image_speed = 0;
	image_index = 0;
	a = 0;
}
y = y + cos(b)/2;
	b+= 0.05;