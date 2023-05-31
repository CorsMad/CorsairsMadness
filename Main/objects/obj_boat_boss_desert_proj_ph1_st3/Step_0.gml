/// @description Insert description here
// You can write your code in this editor
if (state = 0) {
    if image_alpha < 1 image_alpha+=0.1;
    if (image_index > image_number - 1) {
        sprite_index = spr_boat_boss_desert_proj_tier2_st2;
        state = 1;
        x = x-56;
        y = y-10;
        spd = 3;
        if instance_exists(obj_Player_boat) {
            var dir = point_direction(x,y,obj_Player_boat.x,obj_Player_boat.y-16);
            hspeed = lengthdir_x(spd,dir);
            vspeed = lengthdir_y(spd,dir);
        }
    }
}
if (state = 1) {
    
}
