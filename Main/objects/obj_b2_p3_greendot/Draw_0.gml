/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_bossj2_phase3)
{
    if (obj_bossj2_phase3.state = 4 && obj_bossj2_phase3.t > 60) || (obj_bossj2_phase3.state = 5 && obj_bossj2_phase3.t < 30)
    {
        if alpha < 0.5 alpha +=0.1;
        var x_orig = obj_bossj2_phase3.x;
        var y_orig = obj_bossj2_phase3.y;

        var target = obj_Player;
        var x_dest = target.x;
        var y_dest = target.y-32;

        x = x_orig;
        y = y_orig;

        var angle = point_direction(x_orig,y_orig,x_dest,y_dest);
        var width = sprite_width;

        for (var i = 0;
            distance_to_point(x_dest,y_dest) > (i*width);
            i++)
            {
                draw_sprite_ext(sprite_index,image_index,
                                x + lengthdir_x(i*width,angle),
                                y + lengthdir_y(i*width,angle),
                                1,1, angle, image_blend, alpha )                        
            }
    } else
    {
        if alpha > 0 alpha -=0.1;   
    }
}

