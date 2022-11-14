/// @description Insert description here
// You can write your code in this editor

#region визуал

draw_sprite(spr_confirm_loadout,submenu,240,135);

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
        case 0:
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

#region Отрисовка иконок

switch(submenu)
{
    case 0:    
        #region 1
            //топор

            if global.purch_anch1 = 1 draw_sprite(spr_icons_confirm,1,120,72); else draw_sprite(spr_icons_confirm,0,120,72);
            if global.purch_anch2 = 1 draw_sprite(spr_icons_confirm,2,152,72); else draw_sprite(spr_icons_confirm,0,152,72);
            if global.purch_anch3 = 1 draw_sprite(spr_icons_confirm,3,184,72); else draw_sprite(spr_icons_confirm,0,184,72);


            // Бомба

            draw_sprite(spr_icons_confirm,0,120,104);
            draw_sprite(spr_icons_confirm,0,152,104);
            draw_sprite(spr_icons_confirm,0,184,104);


            // Электрич шар

            draw_sprite(spr_icons_confirm,0,120,136);
            draw_sprite(spr_icons_confirm,0,152,136);
            draw_sprite(spr_icons_confirm,0,184,136);

            // Попугай

            draw_sprite(spr_icons_confirm,0,120,168);
            draw_sprite(spr_icons_confirm,0,152,168);
            draw_sprite(spr_icons_confirm,0,184,168);

            #endregion
        break;
    
    case 1:
         #region 2
         
            //быстрота
            
            draw_sprite(spr_icons_confirm,0,120,72);
            draw_sprite(spr_icons_confirm,0,152,72);
            draw_sprite(spr_icons_confirm,0,184,72);
            
            // 2 Пистолета

            if global.purch_dualpistols1 = 1 draw_sprite(spr_icons_confirm,4,120,104); else draw_sprite(spr_icons_confirm,0,120,104);
            if global.purch_dualpistols2 = 1 draw_sprite(spr_icons_confirm,5,152,104); else draw_sprite(spr_icons_confirm,0,152,104);
            if global.purch_dualpistols3 = 1 draw_sprite(spr_icons_confirm,6,184,104); else draw_sprite(spr_icons_confirm,0,184,104);

            // Электрич шар

            draw_sprite(spr_icons_confirm,0,120,136);
            draw_sprite(spr_icons_confirm,0,152,136);
            draw_sprite(spr_icons_confirm,0,184,136);

            // Попугай

            draw_sprite(spr_icons_confirm,0,120,168);
            draw_sprite(spr_icons_confirm,0,152,168);
            draw_sprite(spr_icons_confirm,0,184,168);

            #endregion
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
    case 0:
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
    case 1:
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
    case 0:  
        if index < 4 draw_text(218,70,dHMenu[index,dindex]);
        break; 
    case 1:
        if index < 4 draw_text(218,70,dBMenu[index,dindex]);
        break;
}
#endregion

#endregion

#region Отрисовка Подтверждения предметов

switch(submenu)
{
    case 0:
        switch(ChoosedItem)
        {
            case 11:
                draw_sprite(spr_shop_solditem,0,120,72);
                break;
            case 12:
                draw_sprite(spr_shop_solditem,0,152,72);
                break;
            case 13:
                draw_sprite(spr_shop_solditem,0,184,72);
                break;
        }
        break;
    case 1:
        switch(ChoosedItemBoat)
        {
            case 21:
                draw_sprite(spr_shop_solditem,0,120,104);
                break;
            case 22:
                draw_sprite(spr_shop_solditem,0,152,104);
                break;
            case 23:
                draw_sprite(spr_shop_solditem,0,184,104);
                break;
        }
        break;
}

#endregion