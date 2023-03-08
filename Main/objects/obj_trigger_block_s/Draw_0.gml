/// @description Insert description here
// You can write your code in this editor

if (280<t && t<300) || (320<t && t<340) || (360<t && t<380)  
{
    alph = 0.5;   
} else alph = 1;

switch(isOn)
{
    case 0: draw_sprite_ext(spr_block_trigger,0,x,y,1,1,0,c_white,alph);break;
    case 1: draw_sprite_ext(spr_block_trigger,1,x,y,1,1,0,c_white,alph);break;
}

