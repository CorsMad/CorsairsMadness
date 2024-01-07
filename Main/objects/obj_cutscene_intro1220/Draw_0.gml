/// @description Insert description here
// You can write your code in this editor

#region skip
	draw_set_alpha(alpha_skip);

	draw_set_halign(fa_center);
	draw_set_color(c_white)	
	draw_text_scribble(422,234,skip_txt);
	
	//draw_set_halign(fa_left) 
	draw_sprite_ext(spr_skip_frame,0,377,250,1,1,0,c_white,alpha_skip);
	draw_sprite_stretched_ext(spr_skip_line,0,377+5,255,(skip_t/skip_t_max)*80,8,c_white,alpha_skip);
#endregion

switch(page)
{
    case 1:  
    if t >= 250
    {
        var scribble_text = scribble(text)
        scribble_text.align(fa_center,fa_top);
        scribble_text.blend(c_white,t_alpha);
        scribble_text.wrap(text_width);
        scribble_text.draw(text_x,text_y,typist); 
    }    
    break;
    
    case 2:  
    if t >= 150
    {
        var scribble_text = scribble(text)
        scribble_text.align(fa_center,fa_top);
        scribble_text.blend(c_white,t_alpha);
        scribble_text.wrap(text_width);
        scribble_text.draw(text_x,text_y,typist); 
    }    
    break;
    
    case 3:  
    if t >= 150
    {
        var scribble_text = scribble(text)
        scribble_text.align(fa_center,fa_top);
        scribble_text.blend(c_white,t_alpha);
        scribble_text.wrap(text_width);
        scribble_text.draw(text_x,text_y,typist); 
    }    
    break;
    
    case 4:  
    if t >= 150
    {
        var scribble_text = scribble(text)
        scribble_text.align(fa_center,fa_top);
        scribble_text.blend(c_white,t_alpha);
        scribble_text.wrap(text_width);
        scribble_text.draw(text_x,text_y,typist); 
    }    
    break;
    
    case 5:  
    if t >= 150
    {
        var scribble_text = scribble(text)
        scribble_text.align(fa_center,fa_top);
        scribble_text.blend(c_white,t_alpha);
        scribble_text.wrap(text_width);
        scribble_text.draw(text_x,text_y,typist); 
    }    
    break;
    
    case 6:  
    if t >= 150
    {
        var scribble_text = scribble(text)
        scribble_text.align(fa_center,fa_top);
        scribble_text.blend(c_white,t_alpha);
        scribble_text.wrap(text_width);
        scribble_text.draw(text_x,text_y,typist); 
    }    
    break;
}

//draw_text(room_width/2,room_height/2+32,text);

//SKIP

#region Отрисовка картинок
switch(page)
{
    case 1:
        pic_num = spr_cutscene_1;
        
        switch(t)
        {
            case 160:  pic_img = 1;break;
            case 170:  pic_img = 2;break;
            case 180:  pic_img = 3;break;
            case 190:  pic_img = 4;break;
            case 200:  pic_img = 5;break;
            case 795:  pic_img = 4;break;
            case 805:  pic_img = 3;break;
            case 815:  pic_img = 2;break;
            case 825:  pic_img = 1;break;
            case 835:  pic_img = 0;break;
        }
        draw_sprite_ext(pic_num,pic_img,0,0,1,1,0,c_white,1);
        break;
    case 2:
        pic_num = spr_cutscene_2;
        
        switch(t)
        {
            case 60:   pic_img = 1;break;
            case 70:   pic_img = 2;break;
            case 80:   pic_img = 3;break;
            case 90:   pic_img = 4;break;
            case 100:  pic_img = 5;break;
            case 495:  pic_img = 4;break;
            case 505:  pic_img = 3;break;
            case 515:  pic_img = 2;break;
            case 525:  pic_img = 1;break;
            case 535:  pic_img = 0;break;
        }
        draw_sprite_ext(pic_num,pic_img,0,0,1,1,0,c_white,1);
        break;
    case 3:
        pic_num = spr_cutscene_3;
        
        switch(t)
        {
            case 60:   pic_img = 1;break;
            case 70:   pic_img = 2;break;
            case 80:   pic_img = 3;break;
            case 90:   pic_img = 4;break;
            case 100:  pic_img = 5;break;
            case 795:  pic_img = 4;break;
            case 805:  pic_img = 3;break;
            case 815:  pic_img = 2;break;
            case 825:  pic_img = 1;break;
            case 835:  pic_img = 0;break;
        }
        draw_sprite_ext(pic_num,pic_img,0,0,1,1,0,c_white,1);
        break;
    case 4:
        pic_num = spr_cutscene_4;
        
        switch(t)
        {
            case 60:   pic_img = 1;break;
            case 70:   pic_img = 2;break;
            case 80:   pic_img = 3;break;
            case 90:   pic_img = 4;break;
            case 100:  pic_img = 5;break;
            case 595:  pic_img = 4;break;
            case 605:  pic_img = 3;break;
            case 615:  pic_img = 2;break;
            case 625:  pic_img = 1;break;
            case 635:  pic_img = 0;break;
        }
        draw_sprite_ext(pic_num,pic_img,0,0,1,1,0,c_white,1);
        break;

    case 5:
        pic_num = spr_cutscene_5;
        
        switch(t)
        {
            case 60:    pic_img = 1;break;
            case 70:    pic_img = 2;break;
            case 80:    pic_img = 3;break;
            case 90:    pic_img = 4;break;
            case 100:   pic_img = 5;break;
            case 1035:  pic_img = 4;break;
            case 1045:  pic_img = 3;break;
            case 1055:  pic_img = 2;break;
            case 1065:  pic_img = 1;break;
            case 1075:  pic_img = 0;break;
        }
        draw_sprite_ext(pic_num,pic_img,0,0,1,1,0,c_white,1);
        draw_sprite_ext(spr_cutscene_51,0,0,0,1,1,0,c_white,alpha_5);
        break;
    case 6:
        pic_num = spr_cutscene_6;
        
        switch(t)
        {
            case 60:   pic_img = 1;break;
            case 70:   pic_img = 2;break;
            case 80:   pic_img = 3;break;
            case 90:   pic_img = 4;break;
            case 100:  pic_img = 5;break;
            case 595:  pic_img = 4;break;
            case 605:  pic_img = 3;break;
            case 615:  pic_img = 2;break;
            case 625:  pic_img = 1;break;
            case 635:  pic_img = 0;break;
        }
        draw_sprite_ext(pic_num,pic_img,0,0,1,1,0,c_white,1);
        break;
}

#endregion