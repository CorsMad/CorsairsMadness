/// @description Insert description here
// You can write your code in this editor

if (t_max-120<t && t<t_max-100) || (t_max-80<t && t<t_max-60) || (t_max-40<t && t<t_max-20)  
{
    alph = 0.5;   
} else alph = 1;

switch(isOn)
{
    case 0: draw_sprite_ext(spr_block_trigger,0,x,y,1,1,0,c_white,alph);break;
    case 1: draw_sprite_ext(spr_block_trigger,1,x,y,1,1,0,c_white,alph);break;
}

