/// @description Insert description here
// You can write your code in this editor
if t < 902
{
    t++;
}

if t > 901
{
    if keyboard_check(vk_enter) || gamepad_button_check(4,gp_face1) || gamepad_button_check(0,gp_face1)
    {
        game_restart();
    }
}