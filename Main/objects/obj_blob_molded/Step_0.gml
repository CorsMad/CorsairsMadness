/// @description Insert description here
// You can write your code in this editor
y+=vspd;

if vspd < 3 && sprite_index = spr_blob_molded_fly
{
    vspd +=0.2;   
}

if place_meeting(x,y+1,obj_block)
{
    sprite_index = spr_blob_molded_destroy; 
    vspd = 0;
}

if sprite_index = spr_blob_molded_destroy
{
    image_speed = 1.5;
    if (image_index > image_number - 1)
    {
        instance_destroy();
    }   
}

if y > room_height+32
{
    instance_destroy();       
}



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


