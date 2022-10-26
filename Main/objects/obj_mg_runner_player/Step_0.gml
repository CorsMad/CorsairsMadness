/// @description Insert description here
// You can write your code in this editor

var key_down = keyboard_check_pressed(vk_down);
var key_up = keyboard_check_pressed(vk_up);
var key_left = keyboard_check_pressed(vk_left);
var key_right = keyboard_check_pressed(vk_right);
var key_press = keyboard_check_pressed(vk_enter) ||keyboard_check_pressed(vk_space);
var key_attack = keyboard_check_pressed(ord("X"));

fnc_Collision(obj_block)

#region управление

if key_press && place_meeting(x,y+1,obj_block)
{
    vspd = -6;
}
if !place_meeting(x,y+1,obj_block)
{
    vspd +=0.2;   
}

#endregion