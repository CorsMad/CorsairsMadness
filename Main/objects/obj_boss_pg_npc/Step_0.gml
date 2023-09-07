/// @description Insert description here
// You can write your code in this editor
if state = 0
{
    if t < 220 t++;
    switch(t)
    {
        case 50: 
            fnc_msc_play(msc_jp1_c_jp2_c);
            break;
        case 218:
            instance_create_depth(x,y,-9999999999999999,obj_text_pg2_boss_cutscene);
            break;
    }
}
if state = 4
{
    t++;
    switch(t)
    {        
        case 40:
            instance_destroy(obj_boss_dp_mold_create);
            instance_create_depth(x,y,0,obj_boss_pg_phase1);
            obj_Player.isDead = 0;
            instance_destroy();           
    }
}