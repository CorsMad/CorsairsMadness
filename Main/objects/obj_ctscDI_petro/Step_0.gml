/// @description Insert description here
// You can write your code in this editor
if state = 2 fnc_Collision(obj_block);

switch(state){
    case 0:
        x+=hspd;
        if x >= 340{
            x = 340;
            state = 0.5;
            sprite_index = spr_npc_petro_di_attack;
            image_speed = 0;
            image_index = 0;
        }
        break;
    case 0.5:
        t++;
        
        if t mod 4 = 0 && t > 20 && t < 90 {
             instance_create_depth(x+random_range(60,70),y-random_range(30,34),depth-2,obj_sfx_weapon_slash);
             if image_index = 1 image_index = 2 else image_index = 1;
        }
        
        switch(t){
            case 90: sprite_index = spr_npc_petro_di_attackup; image_index = 0; break;  //удар 
            case 130:
                image_index = 1;
                state = 1;
                hspd = 0;
                vspd=-4;
                t = 0;
                break;
        }
        break;
    case 1:
        y+=vspd;
        
        t++;
        if t mod 5 = 0 {
            instance_create_depth(x+32,y-48,depth-1,obj_sfx_sparkle_1);
            instance_create_depth(x+random_range(30,34),y-random_range(46,50),depth-1,obj_sfx_weapon_slash);
        }
        
        if y<=100{
            image_index = 2;
            state = 2;
            instance_create_depth(x+32,y-48,depth-1,obj_sfx_explosion);
            hspd = -2;
        }
        break;
    case 2:
        vspd+=0.2;
        if vspd > 1 {
            sprite_index = spr_npc_petro_di_jump;
            image_index = 0;
        }
        if place_meeting(x,y+1,obj_block){
            vspd = 0;
            image_index = 1;
            state = 3;
            t = 0;
            instance_create_depth(x,y,0,obj_txt_DI_p8_end_merch2);
        }
        break;
    case 3:
        if t < 12 t++;
        if t > 10 {
            sprite_index = spr_npc_petro_idle;
            image_speed = 1;
        }
        break;
        
}







