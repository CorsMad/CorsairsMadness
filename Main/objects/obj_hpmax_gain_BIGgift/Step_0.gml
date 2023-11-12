/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 0:
        if image_alpha < 1 image_alpha+=0.1;
        y+=vspd;
        vspd = lerp(vspd,0,0.05);
        if vspd >= -0.1 {
            state = 0.5;   
            t = 0;
        }
        break;
    case 0.5:
        t++;
        if t = 50 {
            state = 1;  
            t = 0;
        }
        
        break;
    case 1:
        if point_distance(x, y, obj_Player.x, obj_Player.y-16) > spd
        {
            move_towards_point(obj_Player.x, obj_Player.y-16, spd);
        }

        spd = lerp(spd,5,0.01);
    
    
    
        if place_meeting(x,y,obj_Player)
    	{
            fnc_snd_play_over(snd_player_hpmana_gain);
    		global.hp_add += 1;
            global.hp_max += 1;
    		global.mana_add += 1;
            global.mana_max += 1;     
            global.hp = global.hp_max;
            global.mana = global.mana_max;
            scr_save_progress();
            if instance_exists(obj_hpmax_gain_BIGgift_ctsn){
                obj_hpmax_gain_BIGgift_ctsn.state = 1;   
            }
    		instance_destroy();	
    	}
        break;
       
}


t_p ++;
if t_p = 2
{
    t_p = 0;
    instance_create_depth(x,y,depth+1,obj_abil_boots_particles);   
}