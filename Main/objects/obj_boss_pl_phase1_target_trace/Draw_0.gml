/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_Player) && instance_exists(origin_t) && instance_exists(target_t)
{
    var origin = origin_t;
    var x_orig = origin_t.x;
    var y_orig = origin_t.y-24;
    
    var target = target_t;
    var x_dest = target_t.x;
    var y_dest = target_t.y;
    
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
                            1,1,0,c_white,1);
        }      
} 