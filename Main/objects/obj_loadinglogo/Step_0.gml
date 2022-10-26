/// @description Insert description here
// You can write your code in this editor

if image_index = 15 
{
    t++;   
}

if t > 100
{
    image_alpha -= 0.05;    
}

if image_alpha <= 0 
{
    room_goto(MainMenu);   
}