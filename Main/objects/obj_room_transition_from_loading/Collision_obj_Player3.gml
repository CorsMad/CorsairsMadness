/// @description Insert description here
// You can write your code in this editor



if instance_exists(obj_Player)
{
    if obj_Player.state = 0
    {
        room_goto(global.TargetRoom);
        obj_Player.x = global.TargetX;
        obj_Player.y = global.TargetY;
    }
    if obj_Player.state = 1
    {
        room_goto(global.fTargetRoom);
        obj_Player.x = global.fTargetX;
        obj_Player.y = global.fTargetY;
    }
}

