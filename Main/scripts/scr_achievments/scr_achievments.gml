function fnc_achiev_get(argument0){
   if !steam_get_achievement(argument0) steam_set_achievement(argument0);    
}



function fnc_achiev_all(){
 if steam_get_achievement("ACH1")  && steam_get_achievement("ACH2")  &&
    steam_get_achievement("ACH3")  && steam_get_achievement("ACH4")  &&
    steam_get_achievement("ACH5")  && steam_get_achievement("ACH6")  &&
    steam_get_achievement("ACH7")  && steam_get_achievement("ACH8")  &&
    steam_get_achievement("ACH9")  && steam_get_achievement("ACH10") &&
    steam_get_achievement("ACH11") && steam_get_achievement("ACH12") &&
    steam_get_achievement("ACH13") && steam_get_achievement("ACH14") &&
    steam_get_achievement("ACH15") && steam_get_achievement("ACH16") &&
    steam_get_achievement("ACH17") && steam_get_achievement("ACH18") &&
    steam_get_achievement("ACH19") && steam_get_achievement("ACH20") &&
    steam_get_achievement("ACH21") && steam_get_achievement("ACH22") &&
    steam_get_achievement("ACH23") && steam_get_achievement("ACH24") &&
    steam_get_achievement("ACH25") && steam_get_achievement("ACH26") &&
    steam_get_achievement("ACH27") && steam_get_achievement("ACH28") &&
    steam_get_achievement("ACH29") && steam_get_achievement("ACH30") &&
    steam_get_achievement("ACH31") && steam_get_achievement("ACH32") &&
    steam_get_achievement("ACH33") && steam_get_achievement("ACH34") &&
    steam_get_achievement("ACH35") {
        fnc_achiev_get("ACH36");
    }
}
    
function fnc_achiev_teamsaved(){
  if steam_get_achievement("ACH8") && steam_get_achievement("ACH9") &&
     steam_get_achievement("ACH10") && steam_get_achievement("ACH11") &&
     steam_get_achievement("ACH12") {
          fnc_achiev_get("ACH13") 
     }
}
    
#region Монеты

function fnc_achiev_coin_jungle(){
    var s1 = global.secrets_j1_r16;
    var s2 = global.secrets_j1_r5;
    var s3 = global.secrets_j1_s1;
    var s4 = global.secrets_j2_s1;
    var s5 = global.secrets_j2_endurance;
    var s6 = global.secrets_J2b_s1;
    var s7 = global.secrets_j2p_r4;
    
    if s1+s2+s3+s4+s5+s6+s7 = 7 {
         if !steam_get_achievement("ACH3") steam_set_achievement("ACH3");   
    }
}

function fnc_achiev_coin_desert(){
    var s1 = global.secrets_d1_s1       ;
    var s2 = global.secrets_d1_s2       ;
    var s3 = global.secrets_d1_s3       ;
    var s4 = global.secrets_d2_r5       ;
    var s5 = global.secrets_d2b_s1      ;
    var s6 = global.secrets_d2p_r4      ;
    var s7 = global.secrets_d_endurance ;
    
    if s1+s2+s3+s4+s5+s6+s7 = 7 {
         if !steam_get_achievement("ACH4") steam_set_achievement("ACH4");   
    }
}
    
function fnc_achiev_coin_snow(){
    var s1 = global.secrets_s1_r13       ;
    var s2 = global.secrets_s1_r7        ;
    var s3 = global.secrets_s1_s1        ;
    var s4 = global.secrets_s2_s1        ;
    var s5 = global.secrets_s2b_r5       ;
    var s6 = global.secrets_s2p_s        ;
    var s7 = global.secrets_sn_endurance ;
    
    if s1+s2+s3+s4+s5+s6+s7 = 7 {
         if !steam_get_achievement("ACH5") steam_set_achievement("ACH5");   
    }
}    
    
function fnc_achiev_coin_shadow(){
    var s1 = global.secrets_g_endurance ;
    var s2 = global.secrets_g1_r12      ;
    var s3 = global.secrets_g1_s1       ;
    var s4 = global.secrets_g1_s2       ;
    var s5 = global.secrets_g2_r6       ;
    var s6 = global.secrets_g2b_s       ;
    var s7 = global.secrets_g2p_r6      ;
    
    if s1+s2+s3+s4+s5+s6+s7 = 7 {
         if !steam_get_achievement("ACH6") steam_set_achievement("ACH6");   
    }
}       
    
function fnc_achiev_coin_lava(){
    var s1 = global.secrets_l_endurance;
    var s2 = global.secrets_l1_r3      ;
    var s3 = global.secrets_lava1_s1   ;
    var s4 = global.secrets_lava1_s2   ;
    var s5 = global.secrets_l2_r3      ;
    var s6 = global.secrets_l2b_r5     ;
    var s7 = global.secrets_l2p_s      ;
    
    if s1+s2+s3+s4+s5+s6+s7 = 7 {
         if !steam_get_achievement("ACH7") steam_set_achievement("ACH7");   
    }
}  

#endregion

#region Магазин

function fnc_achiev_store_human(){
    if global.purch_anch3 && global.purch_bomb3 && global.purch_eparrot3 && global.purch_sparkle3 {
        fnc_achiev_get("ACH14");
    }
}

function fnc_achiev_store_boat(){
    if global.purch_blunderbuss3 && global.purch_dualpistols3 && global.purch_parrotcage3 && global.purch_rapidfire3 {
        fnc_achiev_get("ACH15");
    }   
}

function fnc_achiev_store_possessed(){
    if global.superattack1 = 2 && global.superattack2 && global.superattack3 {
         fnc_achiev_get("ACH16");  
    }
}

function fnc_achiev_store_all(){
    if steam_get_achievement("ACH14") && steam_get_achievement("ACH15") &&
    steam_get_achievement("ACH16") {
         fnc_achiev_get("ACH17");  
    }
}

#endregion
