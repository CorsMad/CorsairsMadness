/// @description Insert description here
// You can write your code in this editor
if isOn = -1
{
    if image_alpha < 1 image_alpha +=0.025;
    if image_alpha mod 0.1 = 0 instance_create_depth(x+random_range(-14,14),y+random_range(-14,-2),depth-1,obj_abil_boots_particles);
    if image_alpha >= 1 isOn = 0;
}

if isOn = 0 && (place_meeting(x,y,obj_hitbox) || place_meeting(x,y,obj_item_boomerang))
{
    fnc_snd_play_over(snd_chest_destruct);
	isOn = 1;
	image_speed = 1;
	if instance_exists(obj_pause_controller) instance_destroy(obj_pause_controller);
	fnc_msc_stop_play_slow();

}
if (image_index > image_number - 1) && isOn = 1
{
    image_speed = 0;
}
if isOn = 1 && a < 57
{
	a++;
    if a = 5
    {
        instance_create_depth(x,y-8,depth-1,obj_secret_d_e);
    }
}
