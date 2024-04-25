/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_miss);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(xx-1,yy,string(number),10,10,  2,2,rot,  c_black,c_black,c_black,c_black,alpha);
draw_text_ext_transformed_color(xx+1,yy,string(number),10,10,  2,2,rot,  c_black,c_black,c_black,c_black,alpha);
draw_text_ext_transformed_color(xx,yy-1,string(number),10,10,  2,2,rot,  c_black,c_black,c_black,c_black,alpha);
draw_text_ext_transformed_color(xx,yy+1,string(number),10,10,  2,2,rot,  c_black,c_black,c_black,c_black,alpha);
draw_text_ext_transformed_color(xx+1,yy+1,string(number),10,10,2,2,rot,c_black,c_black,c_black,c_black,alpha);
draw_text_ext_transformed_color(xx-1,yy-1,string(number),10,10,2,2,rot,c_black,c_black,c_black,c_black,alpha);
draw_text_ext_transformed_color(xx+1,yy-1,string(number),10,10,2,2,rot,c_black,c_black,c_black,c_black,alpha);
draw_text_ext_transformed_color(xx-1,yy+1,string(number),10,10,2,2,rot,c_black,c_black,c_black,c_black,alpha);

draw_text_ext_transformed_color(xx,yy,string(number),10,10,2,2,rot,c_red,c_red,c_red,c_red,alpha);