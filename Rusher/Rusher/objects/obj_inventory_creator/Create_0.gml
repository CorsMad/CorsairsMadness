/// @description Insert description here
// You can write your code in this editor

// Указать предметы в инветаре push_array


//sword1   = new item_create_w("Sword1",   c_white  , 5  ,1.5,spr_info_sword1,       25,10);
sword2   = new item_create_w("Sword2",   c_yellow , 8  ,1.2,spr_info_sword2,       40,10);
sword3   = new item_create_w("Sword3",   c_white  , 10 ,1.1,spr_info_sword3,       25 ,10);
armor1   = new item_create_a("Armor1",   c_white  , 10 ,spr_info_sword4,           30 ,10);
armor2   = new item_create_a("Armor2",   c_red    , 15 ,spr_info_sword5,           35 ,10);
trinket1 = new item_create_t("Trinket1", c_orange , 1.3,1.3,1,2,spr_info_sword6,   35 ,10);
trinket2 = new item_create_t("Trinket2", c_orange , 1.3,1.4,1.6,1,spr_info_sword2, 500000000 ,10);


trinket16 = new item_create_t("Trinket16", c_orange , 2,2,2,2,spr_info_sword1,50,10);
trinket17 = new item_create_t("Trinket17", c_orange , 3,2,2,2,spr_info_sword4,50,10);


//sword1    = new item_create("Sword1",   c_white  , 5  ,1.5, 0, 1,spr_info_sword1, equip.WEAPON, 10);
//sword2    = new item_create("Sword2",   c_yellow , 8  ,1.2, 0, 1,spr_info_sword2, equip.WEAPON, 10);
//sword3    = new item_create("Sword3",   c_white  , 10 ,1.1, 0, 1,spr_info_sword3, equip.WEAPON, 10);
//armor1    = new item_create("Armor1",   c_white  , 0  ,1  , 10,1,spr_info_sword4, equip.ARMOR,  10);
//armor2    = new item_create("Armor2",   c_red    , 0  ,1  , 15,1,spr_info_sword5, equip.ARMOR,  10);
//trinket1  = new item_create("Trinket1", c_orange , 0  ,1  , 0, 1.3,spr_info_sword6, equip.TRINKET,10);




//oleg = [sword1,sword2,sword3]
oleg = [scr_sword1()]
oleg2 = [armor1,armor2]
oleg3 = [trinket1,trinket2]


// инвентарь
var weap = instance_create_depth(0,0,0,obj_inventory);
for (var i = 0; i < array_length(oleg); i++) {
    array_push(weap.shop_w,oleg[i])
}
for (var k = 0; k < array_length(oleg2); k++) {
    array_push(weap.shop_a,oleg2[k])
}
for (var l = 0; l < array_length(oleg3); l++) {
    array_push(weap.shop_t,oleg3[l])
}


//for (var m = 0; m < array_length(oleg4); m++) {
//    array_push(weap.shop_t,oleg4[m])
//}


// магаз


