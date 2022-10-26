/// @description Insert description here
// You can write your code in this editor

player_input();

if key_right_press image_index = 1;
if key_left_press image_index = 0;

switch(image_index)
{
    case 0:
        if key_attack_press room_goto(Tutor_1_transition_to_boat);  
        break;
    case 1:
        if key_attack_press instance_destroy();  
        break;
}
