/// @description Insert description here
// You can write your code in this editor


#region таймер комбо
if comboMeter > 0 { comboMeter -=0.01;}
if comboMeter >=5 {fastB = 1;}
if comboMeter > 6 {comboMeter = 6;}
if (fastB = 1 && comboMeter <= 4.01) {fastB = 0;comboMeter = 0;}

#endregion

#region Спрайты 

if sprite_index = spr_combo_s
{
    t1++;
    t2++;
    if t1 = 20
    {
        t1 = 0;
        instance_create_depth(x+random_range(-12,12),y+random_range(8,8),depth+0.1,obj_sfx_sparkle_1);
    }
    if t2 = 60
    {
        instance_create_depth(x+random_range(-12,12),y+random_range(-8,8),depth+0.1,choose(obj_sfx_electricity2,obj_sfx_electricity1));
        t2 = 0;
    }
} else {t2 = 0;t1 =0;}

if sprite_index = spr_combo_a
{
    t3++;
    if t3 = 60
    {
        instance_create_depth(x+random_range(-12,12),y+random_range(-8,8),depth+0.1,choose(obj_sfx_electricity2,obj_sfx_electricity1));   
        t3 = 0;
    }
} else t3 = 0;

if  comboMeter < 1 {sprite_index = -1;}
if  (comboMeter >= 1 && comboMeter < 2) {sprite_index = spr_combo_c;}
if  (comboMeter >= 2 && comboMeter < 3) {sprite_index = spr_combo_b;}
if  (comboMeter >= 3 && comboMeter < 4) {sprite_index = spr_combo_a;}
if  (comboMeter >= 4 && comboMeter < 5) {sprite_index = spr_combo_s;}


#endregion