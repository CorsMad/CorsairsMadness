inventory = [];

t=0;
menuWidth = 3;
itemSeparation = 32;
shown = undefined;
shown_i = undefined;

itemXY = 12;





nothing = new item_create(undefined, undefined, undefined , undefined, undefined,undefined,undefined,undefined,undefined);
sword1  = new item_create("Sword1", "nice sword\nnot for downs", 10 , spr_item_icon_1, equip.HEAD);
sword2  = new item_create("CHEST", "nice armor", 20, spr_item_icon_2, equip.ARMOR);
sword3  = new item_create("Sword3", "nice helmet", 30, spr_item_icon_1, equip.HEAD);
sword4  = new item_create("Sword1", "nice sword", 10 , spr_item_icon_3, equip.WEAPON);
sword5  = new item_create("Sword2", "very nice sword", 20, spr_item_icon_2, equip.ARMOR);
sword6  = new item_create("Sword3", "super sword", 30, spr_item_icon_3, equip.WEAPON);
sword7  = new item_create("Sword1", "nice sword", 10 , spr_item_icon_1, equip.HEAD);
sword8  = new item_create("Sword2", "very nice sword", 20, spr_item_icon_2, equip.ARMOR);
sword9  = new item_create("Sword3", "super sword", 30, spr_item_icon_3, equip.WEAPON);
sword10 = new item_create("Sword1", "nice sword", 10 , spr_item_icon_1, equip.HEAD);
sword11 = new item_create("Sword2", "very nice sword", 20, spr_item_icon_2, equip.ARMOR);
sword12 = new item_create("Sword3", "super sword", 40, spr_item_icon_3, equip.WEAPON);


array_push(inventory,sword1,sword2,sword3,sword4,sword5,sword6,sword7,sword8,sword9,sword10,sword11,sword12);


a_equip[equip.HEAD] = 0;
a_equip[equip.ARMOR] = 0;
a_equip[equip.WEAPON] = 0;
