/// @description Insert description here
// You can write your code in this editor
if (isOn = 1) {
    if y > max_height {vspd = -0.5;} else vspd = 0;      
}
y+=vspd;
if place_meeting(x,y,obj_Player)
{
    obj_Player.hp-=100;   
}