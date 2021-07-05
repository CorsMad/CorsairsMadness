/// @description Insert description here
// You can write your code in this editor

//  draw_text(10, 100, obj_Player.silverkey_counts);

//  draw_text(144, 48, obj_menu.vol);
if instance_exists(obj_firing_molded)
{
    draw_text(144, 96,   obj_firing_molded.t);
    draw_text(obj_firing_molded.x, obj_firing_molded.y-100,obj_firing_molded.state);
}
