// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_input()
{
    key_left = keyboard_check(ord("A"));
    key_right = keyboard_check(ord("D"));
    key_down = keyboard_check(ord("S"));
    key_down_pressed = keyboard_check_pressed(ord("S"));
    key_up = keyboard_check(ord("W"));
    key_jump = keyboard_check_pressed(ord("K"));
    key_jump_release = keyboard_check_released(ord("K"));
    key_jump_pressed = keyboard_check_pressed(ord("K"));
    key_attack = keyboard_check_pressed(ord("J"));
    key_dashing = keyboard_check_pressed(ord("L"));
    key_item = keyboard_check_pressed(ord("U"));
    key_item_choose = keyboard_check_pressed(ord("O"));
}