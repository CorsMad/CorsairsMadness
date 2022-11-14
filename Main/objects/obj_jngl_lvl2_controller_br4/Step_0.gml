/// @description Insert description here
// You can write your code in this editor

t++;
if t = 100
{
    t = 0;
    if where = 0
    {
        var i = instance_create_depth(room_width+32,obj_Player.y+32,-1,obj_bird_horizontal_waving_l);
        i.spd = -2;
    }
    if where = 1
    {
        var i = instance_create_depth(-32,obj_Player.y+32,-1,obj_bird_horizontal_waving_r);
        i.spd = 2;
    }
}

if where = 0 && obj_Player.x > 576 instance_destroy();
if where = 1 && obj_Player.x < 160 instance_destroy();