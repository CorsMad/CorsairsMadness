function fnc_superattack_gain_attack_dash(){
    if instance_exists(obj_combometer){
        with(obj_combometer){
            if  comboMeter < 1 {obj_Player.superattack+=1.25;}
            if  (comboMeter >= 1 && comboMeter < 2) {obj_Player.superattack+=1.5;}
            if  (comboMeter >= 2 && comboMeter < 3) {obj_Player.superattack+=1.75;}
            if  (comboMeter >= 3 && comboMeter < 4) {obj_Player.superattack+=2;}
            if  (comboMeter >= 4) {obj_Player.superattack+=3;}
        }      
    }
}

function fnc_superattack_gain_specattack(){
    if instance_exists(obj_combometer){
        with(obj_combometer){
            if  comboMeter < 1 {obj_Player.superattack+=3.5;}
            if  (comboMeter >= 1 && comboMeter < 2) {obj_Player.superattack+=4.5;}
            if  (comboMeter >= 2 && comboMeter < 3) {obj_Player.superattack+=6;}
            if  (comboMeter >= 3 && comboMeter < 4) {obj_Player.superattack+=8;}
            if  (comboMeter >= 4 ) {obj_Player.superattack+=10;}
        }      
    }
}