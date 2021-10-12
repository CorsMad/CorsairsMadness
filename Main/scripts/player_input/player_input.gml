// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_input()
{
    
    if global.controlScheme = 0
    {
        key_left = keyboard_check(vk_left) || gamepad_button_check(4,gp_padl) || gamepad_button_check(0,gp_padl);
        key_right = keyboard_check(vk_right) || gamepad_button_check(4,gp_padr) || gamepad_button_check(0,gp_padr);
        key_down = keyboard_check(vk_down) || gamepad_button_check(4,gp_padd) || gamepad_button_check(0,gp_padd);
        key_down_pressed = keyboard_check_pressed(vk_down) ||  gamepad_button_check_pressed(4,gp_padd) || gamepad_button_check_pressed(0,gp_padd);
        key_up = keyboard_check(vk_up) || gamepad_button_check(4,gp_padu) || gamepad_button_check(0,gp_padu) ;
        key_jump = keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);
        key_jump_release = keyboard_check_released(ord("Z")) || gamepad_button_check_released(4,gp_face1) || gamepad_button_check_released(0,gp_face1);
        key_jump_pressed = keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);
        key_attack = keyboard_check_pressed(ord("X")) || gamepad_button_check_pressed(4,gp_face3) || gamepad_button_check_pressed(0,gp_face3);
        key_dashing = keyboard_check_pressed(ord("C")) || gamepad_button_check_pressed(4,gp_shoulderrb) || gamepad_button_check_pressed(0,gp_shoulderrb);
        key_attack_press = keyboard_check(ord("X")) || gamepad_button_check(4,gp_face3) || gamepad_button_check(0,gp_face3);
        key_item = keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(4,gp_face4) || gamepad_button_check_pressed(4,gp_shoulderlb) || gamepad_button_check_pressed(0,gp_face4) || gamepad_button_check_pressed(0,gp_shoulderlb); 
        key_item_choose = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(4,gp_shoulderl);
    }
    if global.controlScheme = 1
    {
        key_left = keyboard_check(ord("A")) || gamepad_button_check(4,gp_padl) || gamepad_button_check(0,gp_padl);
        key_right = keyboard_check(ord("D")) || gamepad_button_check(4,gp_padr) || gamepad_button_check(0,gp_padr);
        key_down = keyboard_check(ord("S")) || gamepad_button_check(4,gp_padd) || gamepad_button_check(0,gp_padd);
        key_down_pressed = keyboard_check_pressed(ord("S")) ||  gamepad_button_check_pressed(4,gp_padd) || gamepad_button_check_pressed(0,gp_padd);
        key_up = keyboard_check(ord("W")) || gamepad_button_check(4,gp_padu) || gamepad_button_check(0,gp_padu) ;
        key_jump = keyboard_check_pressed(ord("K")) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);
        key_jump_release = keyboard_check_released(ord("K")) || gamepad_button_check_released(4,gp_face1) || gamepad_button_check_released(0,gp_face1);
        key_jump_pressed = keyboard_check_pressed(ord("K")) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);
        key_attack = keyboard_check_pressed(ord("J")) || gamepad_button_check_pressed(4,gp_face3) || gamepad_button_check_pressed(0,gp_face3);
        key_attack_press = keyboard_check(ord("J")) || gamepad_button_check(4,gp_face3) || gamepad_button_check(0,gp_face3);
        key_dashing = keyboard_check_pressed(ord("L")) || gamepad_button_check_pressed(4,gp_shoulderrb) || gamepad_button_check_pressed(0,gp_shoulderrb);
        key_item = keyboard_check_pressed(ord("U")) || gamepad_button_check_pressed(4,gp_face4) || gamepad_button_check_pressed(4,gp_shoulderlb) || gamepad_button_check_pressed(0,gp_face4) || gamepad_button_check_pressed(0,gp_shoulderlb); 
        key_item_choose = keyboard_check_pressed(ord("O")) || gamepad_button_check_pressed(4,gp_shoulderl);
    }
}