inventory_w = [];
inventory_a = [];
inventory_t = [];
shop_w = [];
shop_a = [];
shop_t = [];
depth = -10000;
t=0;
menuWidth = 3;
itemSeparation = 40;
shown = undefined;
shown_i = undefined;

itemXY = 16;


invOn = 0;
shpOn = 0;
gold = 0;

inven_shop = 0 // 0 - инв, 1 - маг
page = 0 // 0 - оружие / 1 - броня / 2 - тринкет

nothing = new item_create(undefined, undefined, undefined , undefined, undefined,undefined,undefined,undefined,undefined);
//sword1  = new item_create("Sword1", "c_white", 10 ,1,0,0,spr_info_sword1, equip.WEAPON,10);
//sword2  = new item_create("Sword2", "c_white", 20 ,1,0,0,spr_info_sword2, equip.WEAPON,10);
//sword3  = new item_create("Sword3", "c_white", 30 ,1,0,0,spr_info_sword3, equip.WEAPON,10);
//sword4  = new item_create("Sword4", "c_white", 40 ,1,0,0,spr_info_sword4, equip.WEAPON,10);
//sword5  = new item_create("Sword5", "c_white", 50 ,1,0,0,spr_info_sword5, equip.WEAPON,10);
//sword6  = new item_create("Sword6", "c_white", 60 ,1,0,0,spr_info_sword6, equip.WEAPON,10);
//
//
//
//
//array_push(inventory,sword1,sword2,sword3,sword4,sword5,sword6);

a_equip[equip.TRINKET] = undefined;
a_equip[equip.ARMOR]   = undefined;
a_equip[equip.WEAPON]  = undefined;

wheel = 0;
// функция показа вкладок инвентаря
function fnc_show_inventory(argument0) {
    for (var i = 0; i < array_length(argument0); i++) {
	var itemX = 48+(i mod menuWidth) * itemSeparation
	var itemY = 80+(i div menuWidth) * itemSeparation + wheel;
	
	
	draw_set_alpha(1);
	
    if argument0[i] != undefined draw_sprite(argument0[i].sprite,0,itemX,itemY)	
	
	// проверка наведения мыши
	if point_in_rectangle(mouse_x,mouse_y,itemX -itemXY,itemY-itemXY,itemX +itemXY,itemY+itemXY) {
		draw_set_alpha(0.25);
		draw_set_color(c_blue);
		draw_rectangle(itemX-itemXY,itemY-itemXY,itemX +itemXY,itemY+itemXY,false);
		
    		if mouse_check_button_pressed(mb_left){
    			shown = argument0[i]
    			shown_i = i;
    		}
		
		// нарисовать описание
		draw_set_alpha(1);			
		draw_set_color(c_white)
		
	        }  
        }    
}
    
	