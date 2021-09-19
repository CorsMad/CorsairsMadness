/// @description Insert description here
// You can write your code in this editor
Key_action = keyboard_check(vk_space);

if place_meeting(x,y,oPlayer)
{
    if Key_action
    {
        oPlayer.x = targetX;
        oPlayer.y = targetY;
        room_goto(target);   
    }
}