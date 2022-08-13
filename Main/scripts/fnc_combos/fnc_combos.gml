// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_combo_finisher_add(){
    if instance_exists(obj_combometer)
    {
        objectName = object_get_name(object_index);
        if string(obj_combometer.damage_name) != string(objectName)
        {
            obj_combometer.damage_name = objectName;
            obj_combometer.comboMeter +=1;   
        }   else 
            {
                if obj_combometer.comboMeter < 1 {obj_combometer.comboMeter =0.99;}
                if (obj_combometer.comboMeter >=1 && obj_combometer.comboMeter < 2) {obj_combometer.comboMeter= 1.99;}         
                if (obj_combometer.comboMeter >=2 && obj_combometer.comboMeter < 3) {obj_combometer.comboMeter= 2.99;}
                if (obj_combometer.comboMeter >=3 && obj_combometer.comboMeter < 4) {obj_combometer.comboMeter= 3.99;}
                if obj_combometer.comboMeter >=4 {obj_combometer.comboMeter= 5;}
        }
        
    }
}