/// @description Insert description here
// You can write your code in this editor
// Orbital motion
Angle -= Speed;
if(Angle >= 360) Angle += 360;

// Update position

x = lengthdir_x(Orbit, Angle) + Center_X;
y = lengthdir_y(Orbit, Angle) + Center_Y;


a+=1;
/*
if a = 220 
{    
    instance_destroy();
}

if image_alpha <= 1 
{
    mask_index = spr_blank;
    image_alpha += 0.25;
} else mask_index = spr_GUI_defence_spawner;