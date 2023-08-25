// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#region GreenBlood

function fnc_molded_green_blood_hit(){
    var gbh1 = instance_create_depth(x,y-8,depth+0.1,obj_molded_green_blood);
    var gbh2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_green_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    gbh1.hspd = dest*choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75);
    gbh1.vspd = choose(-3,-2.75);  
    gbh2.hspd = dest*choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
    gbh2.vspd = choose(-2.5,-2.25);

}

function fnc_molded_green_blood_forward(){
    var gbf1 = instance_create_depth(x,y-16,depth+0.1,obj_molded_green_blood);
    var gbf2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_green_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    gbf1.hspd = dest*choose(6,5.75);
    gbf1.vspd = choose(-2.75,-2.5);
    gbf1.grav = choose(0.1,0.111);
        
    gbf2.hspd = dest*choose(5.5,5.25);
    gbf2.vspd = -2.25;
    gbf2.grav = choose(0.112,0.113);
}
    
function fnc_molded_green_blood_up(){
    var gbu1 = instance_create_depth(x,y-16,depth+0.1,obj_molded_green_blood);
    var gbu2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_green_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    gbu1.hspd = dest*choose(0.1,0.25);
    gbu1.vspd = choose(-6,-5.9);
    gbu1.grav = choose(0.11,0.12);
    
    gbu2.hspd = dest*choose(0.35,0.45);
    gbu2.vspd = -5.8;
    gbu2.grav = choose(0.13,0.15);
}

function fnc_molded_green_blood_down(){
    var gbd1 = instance_create_depth(x,y-16,depth+0.1,obj_molded_green_blood);
    var gbd2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_green_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    gbd1.hspd = dest*choose(2,1);
    gbd1.vspd = 1;
    gbd1.grav = choose(0.2,0.12);
    
    gbd2.hspd = dest*choose(0.5,0);
    gbd2.vspd = 1;
    gbd2.grav = choose(0.13,0.15);

}
    
#endregion

#region RandomBLood

function fnc_molded_blood_hit(argument0){
    
    var gbh1 = instance_create_depth(x,y-8,depth+0.1,obj_molded_green_blood);
    var gbh2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_green_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    switch(argument0)
    {
        case 1://желтый
            gbh1.sprite_index = spr_molded_yellow_blood;
            gbh2.sprite_index = spr_molded_yellow_blood;
            break;
        case 2://фиолет
            gbh1.sprite_index = spr_molded_purple_blood;
            gbh2.sprite_index = spr_molded_purple_blood;
            break;
        case 3: //синий
            gbh1.sprite_index = spr_molded_blue_blood;
            gbh2.sprite_index = spr_molded_blue_blood;
            break;
        case 4: //корич
            gbh1.sprite_index = spr_molded_brown_blood;
            gbh2.sprite_index = spr_molded_brown_blood;
            break;
    }
    gbh1.hspd = dest*choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75);
    gbh1.vspd = choose(-3,-2.75);  
    gbh2.hspd = dest*choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
    gbh2.vspd = choose(-2.5,-2.25);

}

function fnc_molded_blood_forward(argument0){
    var gbf1 = instance_create_depth(x,y-16,depth+0.1,obj_molded_green_blood);
    var gbf2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_green_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    switch(argument0)
    {
        case 1://желтый
            gbf1.sprite_index = spr_molded_yellow_blood;
            gbf2.sprite_index = spr_molded_yellow_blood;
            break;
        case 2://фиолет
            gbf1.sprite_index = spr_molded_purple_blood;
            gbf2.sprite_index = spr_molded_purple_blood;
            break;
        case 3: //синий
            gbf1.sprite_index = spr_molded_blue_blood;
            gbf2.sprite_index = spr_molded_blue_blood;
            break;
        case 4: //корич
            gbf1.sprite_index = spr_molded_brown_blood;
            gbf2.sprite_index = spr_molded_brown_blood;
            break;
    }
    
    gbf1.hspd = dest*choose(6,5.75);
    gbf1.vspd = choose(-2.75,-2.5);
    gbf1.grav = choose(0.1,0.111);
        
    gbf2.hspd = dest*choose(5.5,5.25);
    gbf2.vspd = -2.25;
    gbf2.grav = choose(0.112,0.113);
}
    
function fnc_molded_blood_up(argument0){
    var gbu1 = instance_create_depth(x,y-16,depth+0.1,obj_molded_green_blood);
    var gbu2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_green_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    switch(argument0)
    {
        case 1://желтый
            gbu1.sprite_index = spr_molded_yellow_blood;
            gbu2.sprite_index = spr_molded_yellow_blood;
            break;
        case 2://фиолет
            gbu1.sprite_index = spr_molded_purple_blood;
            gbu2.sprite_index = spr_molded_purple_blood;
            break;
        case 3: //синий
            gbu1.sprite_index = spr_molded_blue_blood;
            gbu2.sprite_index = spr_molded_blue_blood;
            break;
        case 4: //корич
            gbu1.sprite_index = spr_molded_brown_blood;
            gbu2.sprite_index = spr_molded_brown_blood;
            break;
    }
    
    gbu1.hspd = dest*choose(0.1,0.25);
    gbu1.vspd = choose(-6,-5.9);
    gbu1.grav = choose(0.11,0.12);
    
    gbu2.hspd = dest*choose(0.35,0.45);
    gbu2.vspd = -5.8;
    gbu2.grav = choose(0.13,0.15);
}

function fnc_molded_blood_down(argument0){
    var gbd1 = instance_create_depth(x,y-16,depth+0.1,obj_molded_green_blood);
    var gbd2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_green_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    switch(argument0)
    {
        case 1://желтый
            gbd1.sprite_index = spr_molded_yellow_blood;
            gbd2.sprite_index = spr_molded_yellow_blood;
            break;
        case 2://фиолет
            gbd1.sprite_index = spr_molded_purple_blood;
            gbd2.sprite_index = spr_molded_purple_blood;
            break;
        case 3: //синий
            gbd1.sprite_index = spr_molded_blue_blood;
            gbd2.sprite_index = spr_molded_blue_blood;
            break;
        case 4: //корич
            gbd1.sprite_index = spr_molded_brown_blood;
            gbd2.sprite_index = spr_molded_brown_blood;
            break;
    }
    
    gbd1.hspd = dest*choose(2,1);
    gbd1.vspd = 1;
    gbd1.grav = choose(0.2,0.12);
    
    gbd2.hspd = dest*choose(0.5,0);
    gbd2.vspd = 1;
    gbd2.grav = choose(0.13,0.15);

}
    
#endregion



#region MoldBlood

function fnc_molded_dark_blood_hit(){
    var gbh1 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);
    var gbh2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);
    var gbh3 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);
    var gbh4 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    gbh1.hspd = dest*choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75);
    gbh1.vspd = choose(-3,-2.75);  
    gbh2.hspd = dest*choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
    gbh2.vspd = choose(-2.5,-2.25);
    gbh3.hspd = dest*choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75);
    gbh3.vspd = choose(-3,-2.75);  
    gbh4.hspd = dest*choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
    gbh4.vspd = choose(-2.5,-2.25);

}

function fnc_molded_dark_blood_forward(){
    var gbf1 = instance_create_depth(x,y-16,depth+0.1,obj_molded_dark_blood);
    var gbf2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);
    var gbf3 = instance_create_depth(x,y-16,depth+0.1,obj_molded_dark_blood);
    var gbf4 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    gbf1.hspd = dest*choose(6,5.75);
    gbf1.vspd = choose(-2.75,-2.5);
    gbf1.grav = choose(0.1,0.111);
        
    gbf2.hspd = dest*choose(5.5,5.25);
    gbf2.vspd = -2.25;
    gbf2.grav = choose(0.112,0.113);
    
    gbf3.hspd = dest*choose(6,5.75);
    gbf3.vspd = choose(-2.75,-2.5);
    gbf3.grav = choose(0.1,0.111);
        
    gbf4.hspd = dest*choose(5.5,5.25);
    gbf4.vspd = -2.25;
    gbf4.grav = choose(0.112,0.113);
}
    
function fnc_molded_dark_blood_up(){
    var gbu1 = instance_create_depth(x,y-16,depth+0.1,obj_molded_dark_blood);
    var gbu2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);
    var gbu3 = instance_create_depth(x,y-16,depth+0.1,obj_molded_dark_blood);
    var gbu4 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    gbu1.hspd = dest*choose(0.1,0.25);
    gbu1.vspd = choose(-6,-5.9);
    gbu1.grav = choose(0.11,0.12);
    
    gbu2.hspd = dest*choose(0.35,0.45);
    gbu2.vspd = -5.8;
    gbu2.grav = choose(0.13,0.15);
    
    gbu3.hspd = dest*choose(0.1,0.25);
    gbu3.vspd = choose(-6,-5.9);
    gbu3.grav = choose(0.11,0.12);
    
    gbu4.hspd = dest*choose(0.35,0.45);
    gbu4.vspd = -5.8;
    gbu4.grav = choose(0.13,0.15);
}

function fnc_molded_dark_blood_down(){
    var gbd1 = instance_create_depth(x,y-16,depth+0.1,obj_molded_dark_blood);
    var gbd2 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);
    var gbd3 = instance_create_depth(x,y-16,depth+0.1,obj_molded_dark_blood);
    var gbd4 = instance_create_depth(x,y-8,depth+0.1,obj_molded_dark_blood);

    if obj_Player.x >= x
    {
        var dest = -1;
    } else var dest = 1;
    
    gbd1.hspd = dest*choose(2,1);
    gbd1.vspd = 1;
    gbd1.grav = choose(0.2,0.12);
    
    gbd2.hspd = dest*choose(0.5,0);
    gbd2.vspd = 1;
    gbd2.grav = choose(0.13,0.15);
    
    gbd3.hspd = dest*choose(2,1);
    gbd3.vspd = 1;
    gbd3.grav = choose(0.2,0.12);
    
    gbd4.hspd = dest*choose(0.5,0);
    gbd4.vspd = 1;
    gbd4.grav = choose(0.13,0.15);

}

#endregion


#region Dark Essence

function fnc_molded_dark_essence_none(){
    if instance_exists(obj_combometer)
    {
        switch(obj_combometer.sprite_index)
        {
            case -1:    
                    #region  draw
                var den5_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                var den5_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                var den5_3 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                var den5_4 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                var den10_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                var den10_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                var den10_3 = instance_create_depth(x,y,depth+1,obj_dark_essence);
    
                den5_1.hspd = -4;
                den5_1.vspd = -1;
                den5_1.val = 5;
    
                den5_2.hspd = 4;
                den5_2.vspd = -1;
                den5_2.val = 5;
    
                den5_3.hspd = -2;
                den5_3.vspd = 2;
                den5_3.val = 5;
    
                den5_4.hspd = 2;
                den5_4.vspd = 2;
                den5_4.val = 5;
    
                den10_1.hspd = -2.5;
                den10_1.vspd = -2;
                den10_1.val = 10;
    
                den10_2.hspd = 0;
                den10_2.vspd = -3;
                den10_2.val = 10;
    
                den10_3.hspd = 2.5;
                den10_3.vspd = -2;
                den10_3.val = 10;
            #endregion
                    break;
            case spr_combo_c:
                    #region  draw
                    var den5_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_3 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_4 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_5 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_6 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    
                    var den10_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_3 = instance_create_depth(x,y,depth+1,obj_dark_essence);
    
                    den5_1.hspd = -4;
                    den5_1.vspd = -1;
                    den5_1.val = 5;
    
                    den5_2.hspd = 4;
                    den5_2.vspd = -1;
                    den5_2.val = 5;
    
                    den5_3.hspd = -3.5;
                    den5_3.vspd = 0.5;
                    den5_3.val = 5;
    
                    den5_4.hspd = 3.5;
                    den5_4.vspd = 0.5;
                    den5_4.val = 5;
                    
                    den5_5.hspd = -3;
                    den5_5.vspd = 1.25;
                    den5_5.val = 5;
                    
                    den5_6.hspd = 3;
                    den5_6.vspd = 1.25;
                    den5_6.val = 5;
    
                    den10_1.hspd = -2.5;
                    den10_1.vspd = -2;
                    den10_1.val = 10;
    
                    den10_2.hspd = 0;
                    den10_2.vspd = -3;
                    den10_2.val = 10;
    
                    den10_3.hspd = 2.5;
                    den10_3.vspd = -2;
                    den10_3.val = 10;
                    #endregion
                    break;
            case spr_combo_b:
                    #region  draw
                    var den5_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_3 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_4 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    
                    var den10_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_3 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_4 = instance_create_depth(x,y,depth+1,obj_dark_essence);
    
                    den5_1.hspd = -2;
                    den5_1.vspd = -3;
                    den5_1.val = 5;
    
                    den5_2.hspd = 2;
                    den5_2.vspd = 3;
                    den5_2.val = 5;
    
                    den5_3.hspd = -2;
                    den5_3.vspd = -3;
                    den5_3.val = 5;
    
                    den5_4.hspd = 2;
                    den5_4.vspd = -3;
                    den5_4.val = 5;
                        
                    den10_1.hspd = -4;
                    den10_1.vspd = -1;
                    den10_1.val = 10;
    
                    den10_2.hspd = 4;
                    den10_2.vspd = -1;
                    den10_2.val = 10;
    
                    den10_3.hspd = -4;
                    den10_3.vspd = 1;
                    den10_3.val = 10;
                    
                    den10_4.hspd = 4;
                    den10_4.vspd = 1;
                    den10_4.val = 10;
                    
                    #endregion
                    break;
            case spr_combo_a:
                    #region  draw
                    var den5_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_3 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_4 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_5 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    
                    var den10_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_3 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_4 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    
                    var den20_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                        
                    den5_1.hspd = -4;
                    den5_1.vspd = 0.5;
                    den5_1.val = 5;
    
                    den5_2.hspd = 4;
                    den5_2.vspd = 0.5;
                    den5_2.val = 5;
    
                    den5_3.hspd = -2;
                    den5_3.vspd = 1.5;
                    den5_3.val = 5;
    
                    den5_4.hspd = 2;
                    den5_4.vspd = 1.5;
                    den5_4.val = 5;
                        
                    den5_5.hspd = 0;
                    den5_5.vspd = 0.5;
                    den5_5.val = 5;
                    
                    den10_1.hspd = -4;
                    den10_1.vspd = -1;
                    den10_1.val = 10;
    
                    den10_2.hspd = 4;
                    den10_2.vspd = -1;
                    den10_2.val = 10;
    
                    den10_3.hspd = -2;
                    den10_3.vspd = -1.5;
                    den10_3.val = 10;
                    
                    den10_4.hspd = 2;
                    den10_4.vspd = -1.5;
                    den10_4.val = 10;
                    
                    den20_1.hspd = 0;
                    den20_1.vspd = -2.5;
                    den20_1.val = 20;
                    
                    #endregion
                    break;
            case spr_combo_s:
                    #region  draw
                    var den5_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_3 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_4 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den5_5 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    
                    var den10_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_3 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den10_4 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    
                    var den20_1 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                    var den20_2 = instance_create_depth(x,y,depth+1,obj_dark_essence);
                        
                    den5_1.hspd = -4;
                    den5_1.vspd = 0.5;
                    den5_1.val = 5;
    
                    den5_2.hspd = 4;
                    den5_2.vspd = 0.5;
                    den5_2.val = 5;
    
                    den5_3.hspd = -2;
                    den5_3.vspd = 1.5;
                    den5_3.val = 5;
    
                    den5_4.hspd = 2;
                    den5_4.vspd = 1.5;
                    den5_4.val = 5;
                        
                    den5_5.hspd = 0;
                    den5_5.vspd = 0.5;
                    den5_5.val = 5;
                    
                    den10_1.hspd = -4;
                    den10_1.vspd = -1;
                    den10_1.val = 10;
    
                    den10_2.hspd = 4;
                    den10_2.vspd = -1;
                    den10_2.val = 10;
    
                    den10_3.hspd = -2;
                    den10_3.vspd = -1.5;
                    den10_3.val = 10;
                    
                    den10_4.hspd = 2;
                    den10_4.vspd = -1.5;
                    den10_4.val = 10;
                    
                    den20_1.hspd = -0.75;
                    den20_1.vspd = -2.5;
                    den20_1.val = 20;
                    
                    den20_2.hspd = 0.75;
                    den20_2.vspd = -2.5;
                    den20_2.val = 20;
                    
                    #endregion
                    break;
        } 
    }  
}

#endregion