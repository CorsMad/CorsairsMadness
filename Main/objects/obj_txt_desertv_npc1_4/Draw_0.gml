/// @description Insert description here
// You can write your code in this editor
//draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
scr_text_graphics();
draw_sprite(spr_text_icons,10,camera_get_view_x(view_camera[0])+6,camera_get_view_y(view_camera[0])+9);


var scribble_text = scribble(text)
scribble_text.draw(text_x,text_y,typist);
scribble_text.wrap(text_width);

switch(scr_t)
{
    case 0: text = text1;break;
    case 1: text = text2;break;
    case 2: text = text3;break;
    case 3: text = text4;break;
}
