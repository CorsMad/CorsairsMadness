/// @description Insert description here
// You can write your code in this editor
player_input();

if key_right_press state = 1
if key_left_press state = 0;

if key_attack || key_jump
{
    if state = 0
    {
        obj_Player_boat.state = 11.1;
        obj_Player_boat.TargetRoom = J2b_r1;
        instance_destroy();
    }
    if state = 1
    {
        obj_Player_boat.state = 12.1;
        obj_Player_boat.TargetRoom = J2p_r1;
        instance_destroy();
    }
}
