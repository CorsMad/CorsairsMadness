/// @description Insert description here
// You can write your code in this editor

image_xscale = x_sc;
image_yscale = y_sc;

if start = 1
{
    x_sc = lerp(x_sc,1,0.05);  
    y_sc = lerp(y_sc,1,0.05); 
    if image_alpha > 0.4 image_alpha -=0.01;
}

if start = 0
{
    sc_spd+=0.0002;
    x_sc+=sc_spd;  
    y_sc+=sc_spd; 
    if image_alpha < 1 image_alpha +=0.005;  
    if image_alpha = 1
    {
        t++;
        if t= 100
        {
            room_goto(DesertVillageArrive) ;  
        }
    }
}