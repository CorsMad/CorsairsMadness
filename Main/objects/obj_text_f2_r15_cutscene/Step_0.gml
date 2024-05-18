/// @description Insert description here
// You can write your code in this editor

dialogue_input();
scr_skip_texticon_blink();


#region skip

if key_skip
{
    scr_text_skip();
    
    if scr_t > scr_t_max 
    {
        fnc_msc_stop_play();
        obj_Player.isDead = 0;
        var b = instance_create_depth(384,256,0,obj_boss_jp_phase1);
        b.image_xscale = -1;
        global.Cutscene_jp2_r15 = 0;
        instance_destroy(obj_boss_jp_npc)
        instance_destroy();     
    } 
}

#endregion


