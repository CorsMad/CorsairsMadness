/// @description Insert description here
// You can write your code in this editor
fnc_lng_fgroundedf_2_r15_1();
dialogue_input();
scr_skip_texticon_blink();


#region skip

if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > scr_t_max 
    {
        fnc_msc_stop_play();
        obj_Player.isDead = 0;
        var b = instance_create_depth(80,176,0,obj_boss_jp_phase1);
        b.image_xscale = -1;
        global.Cutscene_jp2_r15 = 0;
        instance_destroy(obj_boss_jp_npc)
        instance_destroy();    
        instance_destroy();   
    } 
}

#endregion


