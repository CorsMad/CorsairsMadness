/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);

t++;
if !place_meeting(x,y+1,obj_block)
{
    vspd+=0.2;   
}

if (t mod 10 = 0) && t < 100
{
        fnc_snd_play_onetime(snd_follower_blood);
    
        var gbh1 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+1,obj_molded_dark_blood);
        var gbh2 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+1,obj_molded_dark_blood);
        var gbh3 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+1,obj_molded_dark_blood);
        var gbh4 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+1,obj_molded_dark_blood);
        
        gbh1.hspd = choose(-1,1)*choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75,);
        gbh1.vspd = choose(-3,-2.75);  
        gbh2.hspd = choose(-1,1)*choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
        gbh2.vspd = choose(-2.5,-2.25);
        gbh3.hspd = choose(-1,1)*choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75);
        gbh3.vspd = choose(-3,-2.75);  
        gbh4.hspd = choose(-1,1)*choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
        gbh4.vspd = choose(-2.5,-2.25);   
}

switch(t)
{
    case 1: 
        scr_snowboss_lantern_destroy();

        break;
    case 3:
        
    case 4:
        scr_snowboss_lantern_create(240,144);
    case 115:
        instance_destroy();
        var d = instance_create_depth(x,y,depth,obj_boss_ps_phase3);
        d.image_xscale = image_xscale;
        break;
}