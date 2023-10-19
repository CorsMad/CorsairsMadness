/// @description Insert description here
// You can write your code in this editor

if state!=0  fnc_Collision(obj_block)  

switch(state){
    case 0:
    t++;
    if t mod 2 = 0 image_angle-=90;
        x+=5;
        if x >=384 {
            state = 1;
            vspd = -5;
            hspd = -2;
            t = 0;
            fnc_snd_play_onetime(snd_follower_landing);
            obj_ctscDI_merch2.hit_cd = 1;
            if instance_exists(obj_ctscDI_jake_part) obj_ctscDI_jake_part.state = 1;
        }
        break;
    case 1:
    t++;
    if (t mod 2 = 0  && t < 20) image_angle-=90;
    if t = 20 {
        image_angle = 0;
        sprite_index = spr_npc_jake_jumpland;
        image_index = 0;
        
    }
        
        vspd+=0.2;
        if place_meeting(x,y+1,obj_block){
            vspd = 0;
            t = 0;
            hspd = 0;
            fnc_snd_play_onetime(snd_player_landing);
            state = 2;
            image_index = 1;
        }
        break;
    case 2:
        t++;
        if t = 20 {
            sprite_index = spr_npc_jake_idle;
            image_speed = 1;
        }
            
        if t = 50{
            t = 0;
            state = 3;
            instance_create_depth(x,y,0,obj_txt_DI_p2_end_jake2);
        }
        break;
    case 4:
        t++;
        if t = 40{
            t = 0;
            state = 5;
            obj_ctscDI_merch2.state = 4;   
        }
        break;
}