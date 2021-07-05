/// @description Insert description here
// You can write your code in this editor
y+=vspd;
if !place_meeting(x,y+vspd,obj_block)
{
    vspd+=0.2;
} else vspd = 0;

if isOn = 1
{
    if place_meeting(x,y+1,obj_block)
    {
        isOn = 0;
        image_speed = 1;
    }
}


if isOn = 0
{
    t++;
    if (image_index > image_number - 1) 
    {
        image_speed = 0;
    }   
}

if t = 100
{
    instance_destroy();   
}
/*
var sprite_bbox_top = sprite_get_bbox_top(mask_index) - sprite_get_yoffset(mask_index);
var sprite_bbox_bottom = sprite_get_bbox_bottom(mask_index) - sprite_get_yoffset(mask_index);
if place_meeting(x,y+sign(vspd),obj_block) {
    var wall = instance_place(x,y+sign(vspd),obj_block);
   
    if vspd > 0 { //top
        y = (wall.bbox_top-1)-sprite_bbox_bottom;
    } else { //bottom
        y = (wall.bbox_top+1)-sprite_bbox_top;
    }
    vspd = 0;
}


