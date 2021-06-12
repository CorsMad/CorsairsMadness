/// @description Insert description here
// You can write your code in this editor

//  draw_text(10, 100, obj_Player.silverkey_counts);

//  draw_text(144, 48, obj_menu.vol);
if instance_exists(obj_flying_molded)
{
    draw_text(144, 96,   obj_flying_molded.hit_cd);
    draw_text(144, 128,  obj_flying_molded.combo_timer);
}
