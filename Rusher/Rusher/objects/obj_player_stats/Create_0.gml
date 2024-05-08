/// @description Insert description here
// You can write your code in this editor

level = 0 //0;

#region урон от оружия
if obj_inventory.a_equip[equip.WEAPON] != undefined {
    var eq_w_dmg = obj_inventory.a_equip[equip.WEAPON].dmg;
    dmg = eq_w_dmg //random_range(4,6);
} else dmg = 4;
#endregion

#region крит от оружия
if obj_inventory.a_equip[equip.WEAPON] != undefined {
    var eq_w_crt = obj_inventory.a_equip[equip.WEAPON].crit;
    crit_dmg = eq_w_crt;
} else crit_dmg = 1.1;
#endregion

#region хп от брони
if obj_inventory.a_equip[equip.ARMOR] != undefined {
    var eq_a_hp = obj_inventory.a_equip[equip.ARMOR].hp;
    player_hp = 100+eq_a_hp;
    player_hp_max = 100+eq_a_hp;
} else {
    player_hp = 100;
    player_hp_max = 100;
}
#endregion

#region fire
if obj_inventory.a_equip[equip.TRINKET] != undefined {
    var eq_w_dmg = obj_inventory.a_equip[equip.TRINKET].el_fire;
    el_fire = eq_w_dmg //random_range(4,6);
} else el_fire = 1.2;
#endregion

#region ice
if obj_inventory.a_equip[equip.TRINKET] != undefined {
    var eq_w_dmg = obj_inventory.a_equip[equip.TRINKET].el_ice;
    el_ice = eq_w_dmg //random_range(4,6);
} else el_ice = 1.2;
#endregion

#region light
if obj_inventory.a_equip[equip.TRINKET] != undefined {
    var eq_w_dmg = obj_inventory.a_equip[equip.TRINKET].el_light;
    el_light = eq_w_dmg //random_range(4,6);
} else el_light = 1.2;
#endregion

#region wind
if obj_inventory.a_equip[equip.TRINKET] != undefined {
    var eq_w_dmg = obj_inventory.a_equip[equip.TRINKET].el_wind;
    el_wind = eq_w_dmg //random_range(4,6);
} else el_wind = 1.2;
#endregion

dmg_output_fire  = 0;
dmg_output_ice   = 0;
dmg_output_light = 0;
dmg_output_wind  = 0;


dmg_output_miss    = 0;
dmg_output_normal  = 0;
dmg_output_crit    = 0;

el_count_fire = 0;
el_count_ice = 0;
el_count_light = 0;
el_count_wind = 0;

normal_change = 0; // 1 - Fire, 2 - ice, 3 - light, 4 - wind



current_stats = {
	bar_range_normal : 0,	
	swing_range : 0,
	bar_range_crit : 0,	
	attack_speed : 0,
	dmg : 0,			   
	bar_range_elemental : 0,	   			   
	element_fire : 0,			   
	element_wind : 0,			   
	element_ice : 0,			   
	element_lightning : 0,		   
}

