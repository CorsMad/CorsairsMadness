/// @description Insert description here
// You can write your code in this editor


switch(state){
    case 0:
        x+=hspd;
        y+=vspd;
        vspd+=0.2;
        t++;
        if t = t_max {
            hspd = 0;
            vspd = 0;
            state = 1;
            fnc_snd_play_over(snd_player_landing);
        }
        break;
    case 2:
        var b = instance_create_depth(x,y,-1,obj_sfx_explosion_bomb);
        fnc_snd_play_over(snd_item_bomb_explosion);
        b.image_xscale = 2;
        b.image_yscale = 2;
        instance_destroy();
        break;
}







