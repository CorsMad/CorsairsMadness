/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);
image_xscale = -sign(hspd);

if place_meeting(x+hspd,y,obj_block)
{
    hspd = -hspd;   
}
t_live++;
if t_live >= 250 
{
    var d = instance_create_depth(x,y,depth,obj_boss_ps_ph1_wave_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}
t++;
switch(t)
{
    case 2:image_index = 1;break;   
    case 4:image_index = 0;break;   
    case 6:
        sprite_index = spr_molded_purple_shielder_wave;
        image_speed = 1;
        break;   
    case 10:t=8;break;
}




