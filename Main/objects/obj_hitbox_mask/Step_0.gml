/// @description Insert description here
// You can write your code in this editor
a+=1;
if a = 10 
{
	instance_destroy();	
}

if place_meeting(x,y,obj_enemy_parent_combo) && getCombo = 0
{
    obj_Player.comboTimer = 28;
    obj_Player.comboMeter +=1;
    getCombo = 1;
    if instance_exists(obj_combometer)
    {
        with(obj_combometer)
        {
            if comboMeter < 1 
            {
                if comboMeter < 0.6 {comboMeter +=0.4;}
                if comboMeter >=0.6 {comboMeter =0.99;}
            }
            if comboMeter >=1 && comboMeter < 2
            {
                if comboMeter < 1.6 {comboMeter+=0.4;}
                if comboMeter >=1.6 {comboMeter= 1.99;}
            }
            if comboMeter >=2 && comboMeter < 3
            {
                if comboMeter < 2.6 {comboMeter+=0.4;}
                if comboMeter >=2.6 {comboMeter= 2.99;}
            }
            if comboMeter >=3 && comboMeter < 4
            {
                if comboMeter < 3.6 {comboMeter+=0.4;}
                if comboMeter >=3.6 {comboMeter= 3.99;}
            }
            if comboMeter >=4 && comboMeter < 5.6
            {
                comboMeter+=0.4;  
            }
        }
    }
}