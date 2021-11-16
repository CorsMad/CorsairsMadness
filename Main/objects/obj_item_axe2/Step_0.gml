/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
vspd += 0.2;
if hspd!=0
{
	image_xscale = 1.25*sign(hspd);
}

if a = 1
{
	
}

/*
if place_meeting(x,y,obj_enemy_parent_no_armor) && a = 0 //&& obj_enemy_parent_no_armor.enemy_hp > 0
{
	a = 1;
}
*/

#region boss1hit
    if place_meeting(x,y,obj_boss1_phase1) && a = 0 //&& obj_boss1_phase1.enemy_hp > 0
    {
    	a = 1;
    	var b = instance_create_depth(x,y,-1,obj_sfx_dust_expl_small);
    	b.image_angle = random(360);
    }
    if place_meeting(x,y,obj_boss1_phase2) && a = 0 //&& obj_boss1_phase2.enemy_hp > 0
    {
    	a = 1;
    	var b = instance_create_depth(x,y,-1,obj_sfx_dust_expl_small);
    	b.image_angle = random(360);
    }
    if place_meeting(x,y,obj_boss1_phase3) && a = 0 //&& obj_boss1_phase3.enemy_hp > 0
    {
    	a = 1;
    	var b = instance_create_depth(x,y,-1,obj_sfx_dust_expl_small);
    	b.image_angle = random(360);
    }
#endregion

if a = 2 
{
	mask_index = spr_blank;	
	instance_destroy();
}


if y > room_height+16
{
	instance_destroy();	
}