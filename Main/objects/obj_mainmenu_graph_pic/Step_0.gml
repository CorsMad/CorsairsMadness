/// @description Insert description here
// You can write your code in this editor

if state = 1
{
    image_speed = 1;
    if image_index >= image_number - 1
    {
      image_speed = 0;
      state = 2;
      instance_create_depth(0,0,-2,obj_mainmenu_graph_title);
    }
}


if state = 10
{
    y = lerp(y,-38,0.05);   
}
