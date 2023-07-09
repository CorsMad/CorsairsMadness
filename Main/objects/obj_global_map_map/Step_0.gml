/// @description Insert description here
// You can write your code in this editor
image_xscale = x_sc;
image_yscale = y_sc;


switch(start)
{
    case 0:
        x_sc = lerp(x_sc,1,0.05);
        y_sc = lerp(y_sc,1,0.05);
        break;
    case 1:
        sc_spd+=0.0001;
        x_sc+=sc_spd;
        y_sc+=sc_spd;

        break;
}