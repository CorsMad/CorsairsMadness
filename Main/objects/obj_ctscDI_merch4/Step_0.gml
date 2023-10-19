/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 0:
        break;
    case 1:
        t++;
        if t = 50{
            t = 0;
            state = 1.5;
            instance_create_depth(x,y,0,obj_txt_DI_p4_end_merch1)
        }
        break;
    case 2:
        t++;
        if t = 10 {
            t = 0;
            instance_create_depth(x,y,0,obj_txt_DI_p4_end_pew);
            state = 3;
        }
        break;
    case 3:
        #region получение урона
            if hit_cd!=0 {    
            image_speed = 0;
            hit_cd++;
            } else
            
            if hit_cd=20 hit_cd=0;
            if hit_cd>0 && hit_cd< 5 image_blend = c_red; else image_blend = c_white;
            
            if hit_cd = 2 {
                sprite_index = spr_bossmerch_phase1_death; 
                image_index = 1;
            }
            if hit_cd = 15 image_index = 0;
            #endregion
        break;
    case 4:
        t++;
        sprite_index = spr_bossmerch_phase1_idle;
        image_speed = 1;
        if t = 10{
            t = 0;
            state = 5;
            instance_create_depth(x,y,0,obj_txt_DI_p4_end_merch2);
        }
        break;
    case 6:
        t++;
        sprite_index = spr_bossmerch_phase1_idle;
        image_speed = 1;
        if t = 30{
            t = 0;
            instance_create_depth(314,103,-1,obj_ctscDI_ct_p4end);
            state = 10;
        }
        break;
    case 10: // уход
        x+=2;
        image_xscale = -1;
        sprite_index = spr_bossmerch_phase1_walk; image_speed = 1;
        if x > room_width+32 {
            instance_destroy()   
        }
        break;
}







