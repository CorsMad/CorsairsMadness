/// @description Insert description here
// You can write your code in this editor
if (state = 0) {
    if image_alpha < 1 image_alpha+=0.1;
    if (image_index > image_number - 1) {
        sprite_index = spr_boat_boss_desert_proj_tier1;
        state = 1;
        x = x-56;
        y = y-10;
    }
}
if (state = 1) {
    x-=3;
}