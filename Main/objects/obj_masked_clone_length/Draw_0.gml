/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player) && instance_exists(obj_masked_clone)
{
    var origin = obj_masked_clone;
    var x_orig = origin.x;
    var y_orig = origin.y-16;
    
    var target = obj_Player;
    var x_dest = target.x;
    var y_dest = target.y-16;
    
    x = x_orig;
    y = y_orig;
    
    var angle = point_direction(x_orig,y_orig,x_dest,y_dest);
    var width = sprite_width;
    
    for(var i = 0;
        distance_to_point(x_dest,y_dest) > (i * width);
        i++)
        {
            draw_sprite_ext(sprite_index, image_index,
                            x + lengthdir_x(i*width,angle),
                            y + lengthdir_y(i*width,angle),
                            1,1,angle,c_white,1);
        }      
}