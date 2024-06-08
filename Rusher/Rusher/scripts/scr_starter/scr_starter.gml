/// ИНИЦИАЛИЗАЦИЯ ПЕРЕМЕННЫХ И ПАРАМЕТРОВ


function init(){
	// Инициализация предметов
	enum equip {
		TRINKET,
		ARMOR,
		WEAPON
	}
	instance_create_depth(0,0,0,obj_debug);  
	instance_create_depth(0,0,0,obj_container_global);  
    randomize();
}

#region ФУНКЦИИ СОЗДАНИЯ ВСЕХ ПРЕДМЕТОВ
// СОЗДАНИЕ ПРЕДМЕТОВ
function item_create(_name, _color, _dmg, _crit, _hp, _eldmg, _sprite, _place, _tier) constructor
{ 
    name = _name;		// Название
	color = _color;		// Цвет названия
    dmg  = _dmg;		// Доп. урон
	crit = _crit;		// Доп. крит. 1 - по умолчанию
	hp = _hp;			// Доп. хп
	eldmg = _eldmg;		// Доп. элемент. урон
	sprite = _sprite;	// Спрайт предмета
	place = _place;		// Место - equip.ARMOR, equip.TRINKET, equip.WEAPON
	tier = _tier;		// Тир предмета, 1 - самый крутой, 10 - худший
	
}

function item_create_w(_name,_color,_dmg,_crit,_sprite,_price,_tier) constructor // ОРУЖИЕ
{
    name = _name;		// Название
	color = _color;		// Цвет названия
    dmg  = _dmg;		// Доп. урон
	crit = _crit;		// Доп. крит. 1 - по умолчанию
	sprite = _sprite;	// Спрайт предмета
	place = equip.WEAPON;		// Место - equip.ARMOR, equip.TRINKET, equip.WEAPON
    price = _price;
	tier = _tier;		// Тир предмета, 1 - самый крутой, 10 - худший
}
function item_create_a(_name,_color,_hp,_sprite,_price,_tier) constructor // БРОНЯ
{
    name = _name;		// Название
	color = _color;		// Цвет названия
	hp = _hp;			// Доп. хп
	sprite = _sprite;	// Спрайт предмета
	place =  equip.ARMOR;		// Место - equip.ARMOR, equip.TRINKET, equip.WEAPON
    price = _price;
	tier = _tier;		// Тир предмета, 1 - самый крутой, 10 - худший
}
function item_create_t(_name,_color,_el_fire,_el_ice,_el_light,_el_wind,_sprite,_price,_tier) constructor // ТРИНК
{
    name = _name;		// Название
	color = _color;		// Цвет названия
	el_fire = _el_fire;
	el_ice = _el_ice;
	el_light = _el_light;
	el_wind = _el_wind;
	sprite = _sprite;	// Спрайт предмета
	place =  equip.TRINKET;		// Место - equip.ARMOR, equip.TRINKET, equip.WEAPON
    price = _price;
	tier = _tier;		// Тир предмета, 1 - самый крутой, 10 - худший
}






#region Оружие

function scr_sword1() {  
    return(new item_create_w("Sword1",   c_white  , 5  ,1.5,spr_info_sword1,       25,10)); 
}

function scr_sword2() {
    return(new item_create_w("Sword2",   c_yellow , 8  ,1.2,spr_info_sword2,       40,10));
}

function scr_sword3() {
    return(new item_create_w("Sword3",   c_white  , 10 ,1.1,spr_info_sword3,       25 ,10));
}
#endregion

#region Броня

#endregion

#region Тринкеты
#endregion


#endregion

