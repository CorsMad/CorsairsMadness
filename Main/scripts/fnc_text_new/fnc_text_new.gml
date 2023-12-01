// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function string_wrap(_text, _width)
{
var _text_wrapped = "";
var _space = -1;
var _char_pos = 1;
while (string_length(_text) >= _char_pos)
    {
    if (string_width(string_copy(_text, 1, _char_pos)) > _width)
        {
        if (_space != -1)
            {
            _text_wrapped += string_copy(_text, 1, _space) + "\n";
            _text = string_copy(_text, _space + 1, string_length(_text) - (_space));
            _char_pos = 1;
            _space = -1;
            }
        }
    if (string_char_at(_text,_char_pos) == " ")
        {
        _space = _char_pos;
        }
    _char_pos += 1;
    }
if (string_length(_text) > 0)
    {
    _text_wrapped += _text;
    }
return _text_wrapped;
}

function scr_skip_texticon_blink()
{
    iconspdt++;
    if iconspdt = 50 
    {
        iconspd+=1;
        iconspdt=0;
    }
    if iconspd>1 iconspd = 0;   
}

function scr_text_starter(_scr_t_max,_typist_spd,_snd)
{
    text = "";
    scr_t = 0;
    scr_t_max = _scr_t_max; //последняя строка
    
    typist = scribble_typist();
    typist.in(_typist_spd, 0); // скорость печатания и проявления
    
    
    if _snd!=undefined typist.sound(_snd,1,1,1);
    //if _snd!=undefined typist.sound_per_char(_snd,1,1);
    
    text_width = 400;
    text_x = camera_get_view_x(view_camera[0])+40;
    text_y = camera_get_view_y(view_camera[0])+8;

    iconspd = 0;
    iconspdt= 0;   
}

function scr_key_sprite(_key_pressed){
    
    switch(_key_pressed)
    {
        case 9   :  image_index =   0; break;//= 'Tab'
        case 8   :  image_index =   1; break;//= 'Backspace'
        case 160 :  image_index =   2; break;//= 'Left Shift'
        case 162 :  image_index =   3; break;//= 'Left Control'
        case 164 :  image_index =   4; break;//= 'Left Alt'
        case 165 :  image_index =   5; break;//= 'Right Alt'
        case 92  :  image_index =   6; break;//=      'Right Wimage_indexows Key'
        case 163 :  image_index =   7; break;//= 'Right Control'
        case 161 :  image_index =   8; break;//= 'Right Shift'
                     
        case 12  :  image_index =   9; break;//= 'Num 5' // This is actual Num 5 but when Numlock is off, even Wiki says it "Does Nothing"
        case 13  :  image_index =   10; break;//= 'Enter'
                            
        case 16  :  image_index =   11; break;//= 'Shift'
        case 17  :  image_index =   12; break;//= 'Control'
        case 18  :  image_index =   13; break;//= 'Alt'
        case 19  :  image_index =   14; break;//= 'Pause'
        case 20  :  image_index =   15; break;//= 'Capslock'
                            
        case 32  :  image_index =   16; break;//= 'Space'
        case 33  :  image_index =   17; break;//= 'Page up'
        case 34  :  image_index =   18; break;//= 'Page down'
        case 35  :  image_index =   19; break;//= 'End'
        case 36  :  image_index =   20; break;//= 'Home'        
                            
        case 37  :  image_index =   22; break;//= 'Left'
        case 38  :  image_index =   23; break;//= 'Up'
        case 39  :  image_index =   24; break;//= 'Right'
        case 40  :  image_index =   25; break;//= 'Down'
                            
        case 45  :  image_index =   26; break;//= 'Insert'
        case 46  :  image_index =   27; break;//= 'Delete'
                            
        case 48  :  image_index =   28; break;//= '0'
        case 49  :  image_index =   29; break;//= '1'
        case 50  :  image_index =   30; break;//= '2'
        case 51  :  image_index =   31; break;//= '3'
        case 52  :  image_index =   32; break;//= '4'
        case 53  :  image_index =   33; break;//= '5'
        case 54  :  image_index =   34; break;//= '6'
        case 55  :  image_index =   35; break;//= '7'
        case 56  :  image_index =   36; break;//= '8'
        case 57  :  image_index =   37; break;//= '9'
                            
        case 65  :  image_index =   38; break;//= 'A'
        case 66  :  image_index =   39; break;//= 'B'
        case 67  :  image_index =   40; break;//= 'C'
        case 68  :  image_index =   41; break;//= 'D'
        case 69  :  image_index =   42; break;//= 'E'
        case 70  :  image_index =   43; break;//= 'F'
        case 71  :  image_index =   44; break;//= 'G'
        case 72  :  image_index =   45; break;//= 'H'
        case 73  :  image_index =   46; break;//= 'I'
        case 74  :  image_index =   47; break;//= 'J'
        case 75  :  image_index =   48; break;//= 'K'
        case 76  :  image_index =   49; break;//= 'L'
        case 77  :  image_index =   50; break;//= 'M'
        case 78  :  image_index =   51; break;//= 'N'
        case 79  :  image_index =   52; break;//= 'O'
        case 80  :  image_index =   53; break;//= 'P'
        case 81  :  image_index =   54; break;//= 'Q'
        case 82  :  image_index =   55; break;//= 'R'
        case 83  :  image_index =   56; break;//= 'S'
        case 84  :  image_index =   57; break;//= 'T'
        case 85  :  image_index =   58; break;//= 'U'
        case 86  :  image_index =   59; break;//= 'V'
        case 87  :  image_index =   60; break;//= 'W'
        case 88  :  image_index =   61; break;//= 'X'
        case 89  :  image_index =   62; break;//= 'Y'
        case 90  :  image_index =   63; break;//= 'Z'
        case 91  :  image_index =   64; break;//= 'Wimage_indexows Key'
                          
        case 93  :  image_index =   65; break;//= 'Context Menu'
                           
        case 96  :  image_index =   66; break;//= 'Num 0'
        case 97  :  image_index =   67; break;//= 'Num 1'
        case 98  :  image_index =   68; break;//= 'Num 2'
        case 99  :  image_index =   69; break;//= 'Num 3'
        case 100 :  image_index =   70; break;//= 'Num 4'
        case 101 :  image_index =   71; break;//= 'Num 5'
        case 102 :  image_index =   72; break;//= 'Num 6'
        case 103 :  image_index =   73; break;//= 'Num 7'
        case 104 :  image_index =   74; break;//= 'Num 8'
        case 105 :  image_index =   75; break;//= 'Num 9'
                            
        case 106 :  image_index =   76; break;//= 'Num *'
        case 107 :  image_index =   77; break;//= 'Num +'
        case 109 :  image_index =   78; break;//= 'Num -'
        case 110 :  image_index =   79; break;//= 'Num .'
        case 111 :  image_index =   80; break;//= 'Num /'
                            
        case 112 :  image_index =   81; break;//= 'F1'
        case 113 :  image_index =   82; break;//= 'F2'
        case 114 :  image_index =   83; break;//= 'F3'
        case 115 :  image_index =   84; break;//= 'F4' // was left black
        case 116 :  image_index =   85; break;//= 'F5' // was left black
        case 117 :  image_index =   86; break;//= 'F6' // was left black
        case 118 :  image_index =   87; break;//= 'F7'
        case 119 :  image_index =   88; break;//= 'F8'
        case 120 :  image_index =   89; break;//= 'F9' // was left black
        case 121 :  image_index =   90; break;//= 'F10'
        case 122 :  image_index =   91; break;//= 'F11'
        case 123 :  image_index =   92; break;//= 'F12' // was left black
                            
        case 144 :  image_index =   93; break;//= 'NUMLOCK'
                            
        case 186 :  image_index =   97; break;//= ';'
        case 187 :  image_index =   98; break;//= '='
        case 188 :  image_index =   99; break;//= ','
        case 189 :  image_index =   100;break;//= '-'
        case 190 :  image_index =   101;break;//= '.'
        case 191 :  image_index =   102;break;//= '/'
        case 192 :  image_index =   103;break;//= "'" // actually `
                           
        case 219 :  image_index =   104;break;//= '['
        case 220 :  image_index =   105;break;//= '\'
        case 221 :  image_index =   106;break;//= ']'
        case 222 :  image_index =   107;break;//= "\#" // actually # but that needs to be escaped
                
        case 223 :  image_index =   108;break;//= "`" // actually ` but that needs to be escaped   
    }    
    return(image_index);
}
    
function scr_text_graphics(){
    draw_rectangle_color(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+80,c_black,c_black,c_black,c_black,false);    
    for(var kl = 0;kl < 500 ;kl += 8)
    {
        draw_sprite(spr_text_bord,0,camera_get_view_x(view_camera[0])+kl,camera_get_view_y(view_camera[0])+81);   
    }
}