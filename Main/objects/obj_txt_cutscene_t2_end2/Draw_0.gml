/// @description Insert description here
// You can write your code in this editor

scr_text_graphics();
draw_sprite(spr_text_icons,2,6,9);


var scribble_text = scribble(text)
scribble_text.draw(text_x,text_y,typist);
scribble_text.wrap(text_width);

switch(scr_t)
{
    case 0: text = eng1;break;            
    case 1: text = eng2;break;                           
    case 2: text = eng3;break;            
    case 3: text = eng4;break;
    case 4: text = eng5;break;            
    case 5: text = eng6;break;
    case 6: text = eng7;break;            
    case 7: text = eng8;break;
    case 8: text = eng9;break;                
}
