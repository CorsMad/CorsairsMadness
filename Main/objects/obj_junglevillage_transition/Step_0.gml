/// @description Insert description here
// You can write your code in this editor

alpha+=0.05;
if alpha >= 1
{
    room_goto(TargetRoom);
    obj_Player.x = TargetX;
    obj_Player.y = TargetY;
    obj_Player.isDead = 0;
    instance_destroy();
}

