/// @description Insert description here
// You can write your code in this editor


if state = 1 {
    t++;
    switch(t){
        case 10:
        for (var i = 0; i<19; i++) {
            fnc_snd_play_over(snd_wall_explosion)
            instance_create_depth((x+16)+24*i,y+48,depth-1,obj_sfx_explosion)
            instance_create_depth((x+16)+24*i,y+24,depth-1,obj_sfx_explosion)
        }
        break;
        case 12:
            instance_create_depth(x+32,y+32,depth,obj_bossmerch_bigblock_destr,{image_index : 0});
            instance_create_depth(x+32+64,y+32,depth,obj_bossmerch_bigblock_destr,{image_index : 1});
            instance_create_depth(x+32+64+64,y+32,depth,obj_bossmerch_bigblock_destr,{image_index : 1});
            instance_create_depth(x+32+64+64+64,y+32,depth,obj_bossmerch_bigblock_destr,{image_index : 1});
            instance_create_depth(x+32+64+64+64+64,y+32,depth,obj_bossmerch_bigblock_destr,{image_index : 1});
            instance_create_depth(x+32+64+64+64+64+64,y+32,depth,obj_bossmerch_bigblock_destr,{image_index : 1});
            instance_create_depth(x+32+64+64+64+64+64+64,y+32,depth,obj_bossmerch_bigblock_destr,{image_index : 2});
            
            
            instance_destroy();	
            break;
    }
	
}