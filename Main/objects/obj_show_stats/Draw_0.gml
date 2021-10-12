/// @description Insert description here
// You can write your code in this editor

//  draw_text(10, 100, obj_Player.silverkey_counts);

//  draw_text(144, 48, obj_menu.vol);
if instance_exists(obj_firing_molded)
{
    draw_text(144, 96,   obj_firing_molded.t);
    draw_text(obj_firing_molded.x, obj_firing_molded.y-100,obj_firing_molded.state);
}

if instance_exists(obj_maze1_1)
{
    draw_text(144, 96, obj_maze1_1.isOn);
    draw_text(256, 96, obj_maze1_1.image_angle);
}
if instance_exists(obj_maze1_2)
{
    draw_text(144, 110, obj_maze1_2.isOn);
    draw_text(256, 110, obj_maze1_2.image_angle);
}
if instance_exists(obj_maze1_3)
{
    draw_text(144, 120, obj_maze1_3.isOn);
    draw_text(256, 120, obj_maze1_3.image_angle);
}
if instance_exists(obj_maze1_4)
{
    draw_text(144, 130, obj_maze1_4.isOn);
    draw_text(256, 130, obj_maze1_4.image_angle);
}
