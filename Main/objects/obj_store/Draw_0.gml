/// @description Insert description here
// You can write your code in this editor

#region визуал

draw_sprite(spr_shop,submenu,240,135);

#endregion



#region Отрисовка текстов

draw_set_halign(fa_left);
draw_set_font(fnt_pixel);
var gap = 14;

for (var i = 0; i < array_length_2d(menu, submenu); ++i) {
    draw_set_color(c_white);
    if i == index 
    {
        draw_set_color(c_red);
    }
    
    draw_text(105,52 + gap*i, menu[submenu, i]);
}
#endregion


#region отрисовка Выбора

switch(submenu)
    {
        case 1:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,168);
                    break;            
            }      
            break;

        case 2:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120+32,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120+32,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120+32,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120+32,168);
                    break;   
            }
            break;
            
        case 3:
            switch(index)
            {
                case 0:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,72);
                    break;
                case 1:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,104);
                    break;
                case 2:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,136);
                    break;
                case 3:   
                    draw_sprite(spr_shop_selector,0,120+32*dindex,168);
                    break;            
            }      
            break;
        case 4:
            switch(index)
            {
                case 0:
                    draw_sprite(spr_shop_selector_wide,0,152,72);
                    break;
                case 1:
                    draw_sprite(spr_shop_selector_wide,0,152,104);
                    break;
            }
            
    }

#endregion

#region Отрисовка описаний

#region Описание человек


#region Названия 
#endregion

draw_set_halign(fa_left);
draw_set_valign(fa_center);

switch(submenu)
{
    case 1:
        switch(index)
        {
            case 0:
                draw_set_halign(fa_center);
                draw_text(272,58,"anchor");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(272,58,"grenade");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(272,58,"shockball");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(272,58,"parrot");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;

            
        }
        break;
        
    case 2:
        draw_set_halign(fa_center);
        switch(index)
        {
            case 0:
                draw_text(296,58,"double strike");   
                break;
            case 1:
                draw_text(296,58,"lunge"); 
                break;
            case 2:
                draw_text(296,58,"toss-up"); 
                break;
            case 3:
                draw_text(296,58,"top-down strike"); 
                break;
        }
        break;
    case 3:
        switch(index)
        {
            case 0:
                draw_set_halign(fa_center);
                draw_text(272,58,"Quick Hands");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(272,58,"Double pistol");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(272,58,"blunderbuss");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(272,58,"parrot cage");   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;   
        }
        break;  
    case 4:
        for (var m = 0; m < 6; ++m) {  // MAX HP
                    draw_sprite(spr_hud_heart,0,216+16*m,65)
                }
        for (var n = 0; n < 5; ++n) {  // MAX MANA
                    draw_sprite(spr_hud_mana,0,216+16*n,97)
                }
}

#region ранг
#endregion

draw_set_halign(fa_left);
draw_set_valign(fa_left);
switch(submenu)
{
    case 1:  
        if index != 4 draw_text(218,70,dHMenu[index,dindex]);
        break; 
    case 2:
        if index != 4 draw_text(218,70,dPMenu[index,0]);
        break;
    case 3:
        if index != 4 draw_text(218,70,dBMenu[index,dindex]);
        break;
}
#endregion

#endregion

#region отрисовка стоимости

draw_set_halign(fa_center);
draw_set_font(fnt_pixel);
draw_set_color(c_white);
draw_text(344,159.5,string(itemprice));
#endregion

#region Отрисовка золота, эссенции и зеленых 

draw_set_halign(fa_left);
draw_set_font(fnt_pixel);
draw_set_color(c_white);
draw_text(236,159.5,"315310"); //золото
draw_text(236,183.5,"315310"); //зеленые
draw_text(236,207.5,"315310"); //эссенция

#endregion