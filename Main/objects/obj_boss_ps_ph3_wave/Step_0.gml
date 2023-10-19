/// @description Insert description here
// You can write your code in this editor
x+=hspd*acc;
acc+=0.05;

image_xscale = -sign(hspd);
if place_meeting(x+sign(hspd),y,obj_block) || !place_meeting(x,y+1,obj_block)
{
    var d = instance_create_depth(x,y,depth,obj_boss_ps_ph3_wave_death);
    d.image_xscale = image_xscale;
    instance_destroy();
}
t++;
switch(t)
{
    case 2:image_index = 0;break;   
    case 4:
        sprite_index = spr_boss_sp_wave;
        image_speed = 1;
        break;   
    case 8:t=6;break;
}




