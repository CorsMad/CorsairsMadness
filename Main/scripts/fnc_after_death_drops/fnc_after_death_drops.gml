// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fnc_hp_after_kill(argument0,argument1)
{
    var rnd = irandom(101)
    if global.hp > 1 && global.hp < global.hp_max
        if rnd <= argument0
        {
             instance_create_depth(x,y-18,depth-1,obj_hp1_gain_gift_mold);  
        }
    if global.hp = 1
    {
        if rnd <= argument1
        {
            instance_create_depth(x,y-18,depth-1,obj_hp1_gain_gift_mold);  
        }   
    }
}

function fnc_drop_mana_gold_after_death(rndmananum1,rndmananum2)
{
    var rndmana = irandom(101)
    #region mana
    if global.mana > 0
    {
        if global.mana >= global.mana_max-1 && global.mana < global.mana_max
        {
            if rndmana <= rndmananum1
            {
                var manag1 = instance_create_depth(x,y,depth-1,obj_mana1_gain_gift);
                if instance_exists(obj_Player) 
                {
                    if obj_Player.x > x manag1.hspd = -4; else manag1.hspd = 4; 
                }
            }           
        } else if global.mana < global.mana_max-1 && global.mana > 0
        {
            if rndmana <= rndmananum2
            {
                var manag2 = instance_create_depth(x,y,depth-1,obj_mana1_gain_gift);   
                if instance_exists(obj_Player) 
                {
                    if obj_Player.x > x manag2.hspd = -4; else manag2.hspd = 4; 
                }
            }
        }
    } 
    #endregion
    
    #region gold
    var rndgold = irandom(101);
    
    if rndgold <= 50
    {
        instance_create_depth(x,y,depth-1,choose(obj_money_drop1,obj_money_drop10,obj_money_drop5));
    }  
    #endregion   
}