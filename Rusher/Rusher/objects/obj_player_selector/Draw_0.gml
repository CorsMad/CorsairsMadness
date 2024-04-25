/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_icon_fire      ,      0,x1,y1);
draw_sprite(spr_icon_ice       ,      0,x2,y2);
draw_sprite(spr_icon_light     ,      0,x3,y3);
draw_sprite(spr_icon_wind      ,      0,x4,y4);

draw_set_color(c_black);

if effect_sellect[0] = 1 draw_set_alpha(0) else draw_set_alpha(0.7)
draw_rectangle(x1,y1,x1+wide,y1+wide,0);
if effect_sellect[1] = 1 draw_set_alpha(0) else draw_set_alpha(0.7)
draw_rectangle(x2,y2,x2+wide,y2+wide,0);
if effect_sellect[2] = 1 draw_set_alpha(0) else draw_set_alpha(0.7)
draw_rectangle(x3,y3,x3+wide,y3+wide,0);
if effect_sellect[3] = 1 draw_set_alpha(0) else draw_set_alpha(0.7)
draw_rectangle(x4,y4,x4+wide,y4+wide,0);

draw_set_alpha(1)