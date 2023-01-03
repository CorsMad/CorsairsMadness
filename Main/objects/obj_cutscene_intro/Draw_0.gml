/// @description Insert description here
// You can write your code in this editor
/*
if page = 5 && t > 700
{
    draw_sprite_ext(spr_cutscene_intro,6,0,0,1,1,0,c_white,alpha2);
}
*/

//draw_sprite_ext(spr_cutscene_intro,page-1,0,0,1,1,0,c_white,alpha);

// ТЕКСТ
//draw_set_alpha(alpha);
draw_set_halign(fa_center);
draw_set_font(fnt_pixel);
draw_set_color(c_white);
draw_set_alpha(alpha);
draw_text(room_width/2,room_height/2+32,text);

//SKIP

if skip != 0
{
    draw_set_halign(fa_right);
    draw_set_font(fnt_pixel);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_text(448,238,skip_txt);
}


#region Отрисовка картинок
switch(page)
{
    case 1:
        pic_num = spr_cutscene_1;
        
        switch(t)
        {
            case 130:  pic_img = 1;break;
            case 145:  pic_img = 2;break;
            case 160:  pic_img = 3;break;
            case 185:  pic_img = 4;break;
            case 200:  pic_img = 5;break;
            case 765:  pic_img = 4;break;
            case 780:  pic_img = 3;break;
            case 795:  pic_img = 2;break;
            case 810:  pic_img = 1;break;
            case 835:  pic_img = 0;break;
        }
        draw_sprite_ext(pic_num,pic_img,0,0,1,1,0,c_white,1);
        break;
    case 2:
        pic_num = spr_cutscene_2;
        
        switch(t)
        {
            case 30:  pic_img = 1;break;
            case 45:  pic_img = 2;break;
            case 60:  pic_img = 3;break;
            case 85:  pic_img = 4;break;
            case 100:  pic_img = 5;break;
            case 465:  pic_img = 4;break;
            case 480:  pic_img = 3;break;
            case 495:  pic_img = 2;break;
            case 510:  pic_img = 1;break;
            case 535:  pic_img = 0;break;
        }
        draw_sprite_ext(pic_num,pic_img,0,0,1,1,0,c_white,1);
        break;
    case 3:
        pic_num = spr_cutscene_3;
        
        switch(t)
        {
            case 30:   pic_img = 1;break;
            case 45:   pic_img = 2;break;
            case 60:   pic_img = 3;break;
            case 85:   pic_img = 4;break;
            case 100:  pic_img = 5;break;
            case 765:  pic_img = 4;break;
            case 780:  pic_img = 3;break;
            case 795:  pic_img = 2;break;
            case 810:  pic_img = 1;break;
            case 835:  pic_img = 0;break;
        }
        draw_sprite_ext(pic_num,pic_img,0,0,1,1,0,c_white,1);
        break;
    case 4:
        pic_num = spr_cutscene_4;
        
        switch(t)
        {
            case 30:   pic_img = 1;break;
            case 45:   pic_img = 2;break;
            case 60:   pic_img = 3;break;
            case 85:   pic_img = 4;break;
            case 100:  pic_img = 5;break;
            case 565:  pic_img = 4;break;
            case 580:  pic_img = 3;break;
            case 595:  pic_img = 2;break;
            case 610:  pic_img = 1;break;
            case 635:  pic_img = 0;break;
        }
        draw_sprite_ext(pic_num,pic_img,0,0,1,1,0,c_white,1);
        break;
}

#endregion