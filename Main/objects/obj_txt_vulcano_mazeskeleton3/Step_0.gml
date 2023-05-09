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
        obj_npc_vulcano_mazeskeleton.talk = 0;
        obj_npc_vulcano_mazeskeleton.talkNumber =3;
        
        //GIVE GOLD
        var k = instance_create_depth(x,y-16,-1,obj_money20);
		k.hspd = random_range(-20,20)/20; 
		k.vspd = -5 
        var l = instance_create_depth(x,y-16,-1,obj_money20);
		l.hspd = random_range(-20,20)/20;
        l.vspd = -6 

        obj_Player.isDead = 2.1;          
        instance_destroy();   
    } 
}

#endregion
