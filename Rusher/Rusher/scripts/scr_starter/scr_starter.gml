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

function item_create_w(_name,_color,_dmg,_crit,_sprite,_tier) constructor // ОРУЖИЕ
{
    name = _name;		// Название
	color = _color;		// Цвет названия
    dmg  = _dmg;		// Доп. урон
	crit = _crit;		// Доп. крит. 1 - по умолчанию
	sprite = _sprite;	// Спрайт предмета
	place = equip.WEAPON;		// Место - equip.ARMOR, equip.TRINKET, equip.WEAPON
	tier = _tier;		// Тир предмета, 1 - самый крутой, 10 - худший
}
function item_create_a(_name,_color,_hp,_sprite,_tier) constructor // БРОНЯ
{
    name = _name;		// Название
	color = _color;		// Цвет названия
	hp = _hp;			// Доп. хп
	sprite = _sprite;	// Спрайт предмета
	place =  equip.ARMOR;		// Место - equip.ARMOR, equip.TRINKET, equip.WEAPON
	tier = _tier;		// Тир предмета, 1 - самый крутой, 10 - худший
}
function item_create_t(_name,_color,_el_fire,_el_ice,_el_light,_el_wind,_sprite,_tier) constructor // ТРИНК
{
    name = _name;		// Название
	color = _color;		// Цвет названия
	el_fire = _el_fire;
	el_ice = _el_ice;
	el_light = _el_light;
	el_wind = _el_wind;
	sprite = _sprite;	// Спрайт предмета
	place =  equip.TRINKET;		// Место - equip.ARMOR, equip.TRINKET, equip.WEAPON
	tier = _tier;		// Тир предмета, 1 - самый крутой, 10 - худший
}






#region Оружие
// sword1  = new item_create("Sword1", "c_gray",   10 , spr_item_icon_1, equip.WEAPON);
// sword2  = new item_create("Sword2", "c_gray",   10 , spr_item_icon_1, equip.WEAPON);
// sword3  = new item_create("Sword3", "c_green",  10 , spr_item_icon_1, equip.WEAPON);
// sword4  = new item_create("Sword4", "c_green",  10 , spr_item_icon_1, equip.WEAPON);
// sword5  = new item_create("Sword5", "c_red",    10 , spr_item_icon_1, equip.WEAPON);
// sword6  = new item_create("Sword6", "c_purple", 10 , spr_item_icon_1, equip.WEAPON);
#endregion

#region Броня
#endregion

#region Тринкеты
#endregion


#endregion

