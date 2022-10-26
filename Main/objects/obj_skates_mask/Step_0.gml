/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_Player)
{
    with(obj_Player)
    {
        if place_meeting(x,y+1,obj_block) instance_destroy(obj_skates_mask);   
    }
}

/*
if place_meeting(x,y+2,obj_skate_block) && instance_exists(obj_Player)
{
    skate = true;
    y = obj_skate_block.bbox_top;
    obj_Player.isSkating = 1;
} 

if skate = true && !place_meeting(x,y,obj_skate_block)
{
    obj_Player.vspd = -5;   
}


if !place_meeting(x,y,obj_skate_block) && instance_exists(obj_Player)
{
    skate = false;
    obj_Player.isSkating = 0;
}

if skate = true && instance_exists(obj_Player)
{
    if obj_Player.dir = 1 x+=2 else x-=2;   
}
