/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
vspd += 0.2;
if hspd!=0
{
	image_xscale = 1.25*sign(hspd);
}


if place_meeting(x,y,obj_enemy_parent_no_armor) && a = 0
{
	a = 1;
	mask_index = spr_blank;
	var b = instance_create_depth(x,y,-1,obj_sfx_dust_expl_small);
	b.image_angle = random(360);
}


if a !=0 
{
	a++;
	if a = 3
	{	
		instance_destroy();
	}
}