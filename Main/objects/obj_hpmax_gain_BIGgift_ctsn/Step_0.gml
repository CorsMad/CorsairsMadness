/// @description Insert description here
// You can write your code in this editor

switch(state){
    case 1:
        t++;
        if t = 50 {
            obj_Player.isDead = 2.1; 
            
            
            if instance_exists(obj_npc_jake_jvillage)   fnc_msc_start_checkpoint(msc_village_jungle)
            if instance_exists(obj_npc_pew_village)     fnc_msc_start_checkpoint(msc_village_desert)
            if instance_exists(obj_npc_sully_village)   fnc_msc_start_checkpoint(msc_village_snow)
            if instance_exists(obj_npc_petro_village)   fnc_msc_start_checkpoint(msc_village_shadow)
            if instance_exists(obj_npc_bonnie_village)  fnc_msc_start_checkpoint(msc_village_lava)
            
            
            instance_destroy();
        }
        break;
       
}