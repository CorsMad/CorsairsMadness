/// @description Insert description here
// You can write your code in this editor

dialogue_input();
scr_skip_texticon_blink();

#region skip

if key_skip
{
    if typist.get_state() != 1 {typist.skip();} else scr_t++;
    
    if scr_t > scr_t_max 
    {
        obj_Player.isDead = 2.1;      
		global.Cutscene_di_lastboss = 0;
        instance_destroy();   
        instance_destroy(obj_bossmerch_cutscene);  
		var b = instance_create_depth(32,688,0,obj_bossmerch_phase1);
		b.state = 5; 
    } 
}

#endregion
