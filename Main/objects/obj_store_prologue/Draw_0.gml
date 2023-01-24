/// @description Insert description here
// You can write your code in this editor
draw_rectangle(camera_get_view_x(view_camera[0]),0,camera_get_view_x(view_camera[0])+480,camera_get_view_y(view_camera[0])+30,false);
#region визуал

draw_sprite(spr_shop_prologue,submenu,240,135);

#endregion

if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);


#region Отрисовка описаний


#region название магазина
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text(room_width/2,16,store);

#endregion

#region Отрисовка текстов

draw_set_halign(fa_left);
//draw_set_font(fnt_pixel);



var gap = 14;

for (var i = 0; i < array_length_2d(menu, submenu); ++i) {

    draw_set_color(c_white);
    
    if i == index 
    {
        if index = 1 draw_set_color(c_grey) else draw_set_color(c_red);

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
                draw_text(272,58,nameh_anchor);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_grenade);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_shockball);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(272,58,nameh_parrot);   
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
                draw_text(296,58,namep_double_strike);   
                break;
            case 1:
                draw_text(296,58,namep_lunge); 
                break;
            case 2:
                draw_text(296,58,namep_toss_up); 
                break;
            case 3:
                draw_text(296,58,namep_top_down); 
                break;
        }
        break;
    case 3:
        switch(index)
        {
            case 0:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_qhands);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 1:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_dpistol);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 2:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_blunderbuss);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;
            case 3:
                draw_set_halign(fa_center);
                draw_text(272,58,nameb_parrotc);   
                draw_set_halign(fa_left);
                draw_text(342,58,"lvl " + string(dindex+1));   
                break;   
        }
        break;  
    case 4:
        for (var m = 0; m < global.hp_max; ++m) {  // MAX HP
                    draw_sprite(spr_hud_heart,0,216+16*m,65)
                }
        for (var n = 0; n < global.mana_max; ++n) {  // MAX MANA
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
        if index != 4 
        {
            draw_text(218,70,dHMenu[index,dindex]);
            
            if index = 0 // Использование предмета
            {
                switch(isKeyboard)
                {
                    case 0: 
                        draw_text(218,130,name_use);
                        draw_sprite_ext(spr_gp_icon,3,250,135,1,1,0,c_white,1);                    
                        draw_text(272,130,name_or);
                        draw_sprite_ext(spr_gp_icon,9,292,135,1,1,0,c_white,1);                    
                        break;
                    case 1: 
                        draw_text(218,130,name_use);
                        draw_sprite_ext(spr_key_icon,scr_key_sprite(global.dash_key),250,135,1,1,0,c_white,1); 
                        break;
                }
            }
            
        }
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
//draw_set_font(fnt_pixel);
draw_set_color(c_white);

if global.gold < itemprice draw_set_color(c_red) else draw_set_color(c_white)
if itemprice != 0 draw_text(344,159.5,string(itemprice)) else draw_text(344,159.5,"");

#endregion

#region отрисовка апгрейдов

switch(submenu)
{
    case 1: // Якорь
        if global.purch_anch1 = 1 draw_sprite(spr_shop_solditem,0,120,72);    
        if global.purch_anch2 = 1 draw_sprite(spr_shop_solditem,0,152,72);    
        if global.purch_anch3 = 1 draw_sprite(spr_shop_solditem,0,184,72);    
        
        if global.shop_axe_can_upgrade1 = 0 draw_sprite(spr_shop_icons_anchor,0,152,72);
        if global.shop_axe_can_upgrade2 = 0 draw_sprite(spr_shop_icons_anchor,1,184,72);
        break;
    case 3: // Якорь
        if global.purch_dualpistols1 = 1 draw_sprite(spr_shop_solditem,0,120,104);    
        if global.purch_dualpistols2 = 1 draw_sprite(spr_shop_solditem,0,152,104);    
        if global.purch_dualpistols3 = 1 draw_sprite(spr_shop_solditem,0,184,104);    
        
        if global.shop_dualpistols_can_upgrade1 = 0 draw_sprite(spr_shop_icons_dualpistols,0,152,104);
        if global.shop_dualpistols_can_upgrade2 = 0 draw_sprite(spr_shop_icons_dualpistols,1,184,104);
        break;
}

#endregion

#region Отрисовка золота, эссенции и зеленых 

draw_set_halign(fa_left);
//draw_set_font(fnt_pixel);
draw_set_color(c_white);
draw_text(236,159.5,string(global.gold)); //золото
draw_text(236,183.5,string(global.secrets)); //зеленые
draw_text(236,207.5,string(global.darkessence)); //эссенция

#endregion

#region Отрисовка подтверждения

if buy_confirm = 1 
{
    draw_sprite(spr_shop_purchaseconfirm,buy_confirm_yesno,240,135);
    draw_set_halign(fa_center);
    if global.language = 1 draw_set_font(fnt_pixel_ru) else draw_set_font(fnt_pixel);
    draw_text(240,116,confirm);
    draw_text(240-37,142,confirmy);
    draw_text(240+37,142,confirmn);
    
}

#endregion