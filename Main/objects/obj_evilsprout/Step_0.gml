/// @description Insert description here
// You can write your code in this editor


#region под землей
if state = 0
{
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    if dis < 200 && trigger_attack = 0
    {
        trigger_attack = 1;
    }
    
    if trigger_attack = 1
    {
        t++;
        if t = 90 
        {
            // выстрел 
            var m1 = instance_create_depth(x,y-12,depth-1,obj_evilsprout_missle);
            var m2 = instance_create_depth(x,y-12,depth-1,obj_evilsprout_missle);
            //var m3 = instance_create_depth(x,y-12,depth-1,obj_evilsprout_missle);
            var m4 = instance_create_depth(x,y-12,depth-1,obj_evilsprout_missle);
            var m5 = instance_create_depth(x,y-12,depth-1,obj_evilsprout_missle);
            m1.hspd = -3;
            m1.vspd = -2;
            m2.hspd = -1;
            m2.vspd = -3.5;
            /*
            m3.hspd = 0;
            m3.vspd = -4;
            */
            m4.hspd = 3;
            m4.vspd = -2;
            m5.hspd = 1;
            m5.vspd = -3.5;
        }
        if t = 160 {trigger_attack = 0;t = 0;}
    }
    
}
#endregion

#region вырост

if instance_exists(obj_abil_flute_aoe)
{
    if (place_meeting(x,y,obj_abil_flute_aoe) && obj_abil_flute_aoe.image_alpha = 1 && t_flute < 120) t_flute++; 
}
if (!place_meeting(x,y,obj_abil_flute_aoe) && t_flute > 0) t_flute--;

if t_flute = 60 
{  
    instance_create_depth(x,y,depth,obj_evilsprout_mask_1hp);
    state = 1; 
    
    t = 0;
    trigger_attack = 0;
    t_attack = 0;
}
if t_flute = 0
{
    state = 0;   
}
#endregion

#region #takedmg

if state!= 1
{
    // Атака

        fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
    // Топор

        fnc_take_dmg_axe(-10,0,-1,10,0,-1);
    
    // Удар вниз   

        fnc_take_dmg_hitbox_down(0,-16,-1);

    // Получение урона

        fnc_enemy_no_armor_dmg();

}
#endregion

#region смерть
if enemy_hp < 1
{
    instance_destroy();   
}

#endregion