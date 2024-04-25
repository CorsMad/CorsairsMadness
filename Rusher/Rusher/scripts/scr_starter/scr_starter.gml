/// ИНИЦИАЛИЗАЦИЯ ПЕРЕМЕННЫХ И ПАРАМЕТРОВ


function init(){
	// Инициализация предметов
	enum equip {
		HEAD,
		ARMOR,
		WEAPON
	}
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

#region Оружие
sword1  = new item_create("Sword1", "nice sword\nnot for downs", 10 , spr_item_icon_1, equip.HEAD);
sword1  = new item_create("Sword1", "nice sword\nnot for downs", 10 , spr_item_icon_1, equip.HEAD);
sword1  = new item_create("Sword1", "nice sword\nnot for downs", 10 , spr_item_icon_1, equip.HEAD);
sword1  = new item_create("Sword1", "nice sword\nnot for downs", 10 , spr_item_icon_1, equip.HEAD);
sword1  = new item_create("Sword1", "nice sword\nnot for downs", 10 , spr_item_icon_1, equip.HEAD);
sword1  = new item_create("Sword1", "nice sword\nnot for downs", 10 , spr_item_icon_1, equip.HEAD);
#endregion

#region Броня
#endregion

#region Тринкеты
#endregion


#endregion

