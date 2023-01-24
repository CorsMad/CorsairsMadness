/// @description Insert description here
// You can write your code in this editor
fnc_lng_tip_bluesphere();
if isOn = 1
{
    if alpha < 1 alpha +=0.05;   
}

if isOn = 0
{
    if alpha > 0 alpha -=0.05;
    if alpha <= 0 instance_destroy();
}

