/// @description Insert description here
// You can write your code in this editor

t++;
if t = 50 isOn = 1;

if isOn = 1 
{
    if alpha < 1 alpha +=0.1;   
}

if t = 200 isOn = 2;

if isOn = 2
{
    alpha -=0.1;
    if alpha <= 0 instance_destroy();
}