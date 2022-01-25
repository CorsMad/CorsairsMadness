// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function player_input()
{ 
    key_left_press = keyboard_check_pressed(global.left_key) || gamepad_button_check_pressed(4,gp_padl) || gamepad_button_check_pressed(0,gp_padl);
    key_right_press = keyboard_check_pressed(global.right_key) || gamepad_button_check_pressed(4,gp_padr) || gamepad_button_check_pressed(0,gp_padr);
    key_up_press = keyboard_check_pressed(global.up_key) || gamepad_button_check_pressed(4,gp_padu) || gamepad_button_check_pressed(0,gp_padu);
          
    key_left = keyboard_check(global.left_key) || gamepad_button_check(4,gp_padl) || gamepad_button_check(0,gp_padl);
    key_right = keyboard_check(global.right_key) || gamepad_button_check(4,gp_padr) || gamepad_button_check(0,gp_padr);
    key_down = keyboard_check(global.down_key) || gamepad_button_check(4,gp_padd) || gamepad_button_check(0,gp_padd);
    key_down_pressed = keyboard_check_pressed(global.down_key) ||  gamepad_button_check_pressed(4,gp_padd) || gamepad_button_check_pressed(0,gp_padd);
    key_up = keyboard_check(global.up_key) || gamepad_button_check(4,gp_padu) || gamepad_button_check(0,gp_padu) ;
    key_jump = keyboard_check_pressed(global.jump_key) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);
    key_jump_release = keyboard_check_released(global.jump_key) || gamepad_button_check_released(4,gp_face1) || gamepad_button_check_released(0,gp_face1);
    key_jump_pressed = keyboard_check_pressed(global.jump_key) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);
    key_attack = keyboard_check_pressed(global.attack_key) || gamepad_button_check_pressed(4,gp_face3) || gamepad_button_check_pressed(0,gp_face3);
    key_dashing = keyboard_check_pressed(global.dash_key) || gamepad_button_check_pressed(4,gp_shoulderrb) || gamepad_button_check_pressed(0,gp_shoulderrb);
    key_attack_press = keyboard_check(global.attack_key) || gamepad_button_check(4,gp_face3) || gamepad_button_check(0,gp_face3);
    key_item = keyboard_check_pressed(global.item_key) || gamepad_button_check_pressed(4,gp_face4) || gamepad_button_check_pressed(4,gp_shoulderlb) || gamepad_button_check_pressed(0,gp_face4) || gamepad_button_check_pressed(0,gp_shoulderlb); 
    key_item_choose = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(4,gp_shoulderl);  
    key_back = gamepad_button_check_pressed(4,gp_face2) || gamepad_button_check_pressed(0,gp_face2);
}

function menu_input()
{
    key_left_press = /*keyboard_check_pressed(ord("A")) ||*/ keyboard_check_pressed(vk_left) || gamepad_button_check_pressed(4,gp_padl) || gamepad_button_check_pressed(0,gp_padl);
    key_right_press = /*keyboard_check_pressed(ord("D")) ||*/ keyboard_check_pressed(vk_right) || gamepad_button_check_pressed(4,gp_padr) || gamepad_button_check_pressed(0,gp_padr);
    key_up_press = /*keyboard_check_pressed(ord("W")) ||*/ keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(4,gp_padu) || gamepad_button_check_pressed(0,gp_padu);
    key_down_pressed = /*keyboard_check_pressed(ord("S")) ||*/ keyboard_check_pressed(vk_down) ||  gamepad_button_check_pressed(4,gp_padd) || gamepad_button_check_pressed(0,gp_padd);    
        
        
    key_left = /*keyboard_check(ord("A")) ||*/ keyboard_check(vk_left) || gamepad_button_check(4,gp_padl) || gamepad_button_check(0,gp_padl);
    key_right = /*keyboard_check(ord("D")) ||*/ keyboard_check(vk_right) || gamepad_button_check(4,gp_padr) || gamepad_button_check(0,gp_padr);
    key_down = /*keyboard_check(ord("S")) ||*/ keyboard_check(vk_down) || gamepad_button_check(4,gp_padd) || gamepad_button_check(0,gp_padd);
    key_up = /*keyboard_check(ord("W")) ||*/ keyboard_check(vk_up) || gamepad_button_check(4,gp_padu) || gamepad_button_check(0,gp_padu) ;
    key_jump = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("K")) || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);
    key_jump_release = keyboard_check_released(ord("K")) || gamepad_button_check_released(4,gp_face1) || gamepad_button_check_released(0,gp_face1);
    key_jump_pressed = keyboard_check_pressed(vk_enter) /*|| keyboard_check_pressed(global.jump_key)*/ || gamepad_button_check_pressed(4,gp_face1) || gamepad_button_check_pressed(0,gp_face1);
    key_attack = keyboard_check_pressed(global.attack_key) || gamepad_button_check_pressed(4,gp_face3) || gamepad_button_check_pressed(0,gp_face3);
    key_dashing = keyboard_check_pressed(global.dash_key) || gamepad_button_check_pressed(4,gp_shoulderrb) || gamepad_button_check_pressed(0,gp_shoulderrb);
    key_attack_press = keyboard_check(global.attack_key) || gamepad_button_check(4,gp_face3) || gamepad_button_check(0,gp_face3);
    key_item = keyboard_check_pressed(global.item_key) || gamepad_button_check_pressed(4,gp_face4) || gamepad_button_check_pressed(4,gp_shoulderlb) || gamepad_button_check_pressed(0,gp_face4) || gamepad_button_check_pressed(0,gp_shoulderlb); 
    key_item_choose = keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(4,gp_shoulderl);
    key_back_pressed = keyboard_check_pressed(ord("L")) || keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(4,gp_shoulderrb) || gamepad_button_check_pressed(0,gp_shoulderrb);
}