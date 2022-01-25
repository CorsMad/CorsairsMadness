// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function kb_gp_input_check()
{
    if keyboard_check(vk_anykey)
    {
        isKeyboard = 1;    // 1
    }

    if  gamepad_button_check(0,gp_padr) || gamepad_button_check(4,gp_padr) ||
        gamepad_button_check(0,gp_padl) || gamepad_button_check(4,gp_padr) ||
        gamepad_button_check(0,gp_face1) || gamepad_button_check(4,gp_face1)
    {
        isKeyboard = 0;    // 0
    }

}