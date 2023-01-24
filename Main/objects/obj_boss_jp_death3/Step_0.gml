/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);

t++;

vspd = lerp(vspd,0,0.1);

if t > 80 && t < 240 && t mod 10 = 0
{
    if image_index = 3 image_index = 4 else image_index = 3;   
}

t_blood++;
if t_blood >= 80 && t_blood < 260
{
    if t mod 10 = 0
    {
        fnc_snd_play_onetime(snd_follower_blood);
        var gbh1 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+choose(-1,1),obj_molded_dark_blood);
        var gbh2 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+choose(-1,1),obj_molded_dark_blood);
        var gbh3 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+choose(-1,1),obj_molded_dark_blood);
        var gbh4 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+choose(-1,1),obj_molded_dark_blood);
        
        gbh1.hspd = -1*choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75);
        gbh1.vspd = choose(-3,-2.75);  
        gbh2.hspd = -1*choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
        gbh2.vspd = choose(-2.5,-2.25);
        gbh3.hspd = -1*choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75);
        gbh3.vspd = choose(-3,-2.75);  
        gbh4.hspd = -1*choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
        gbh4.vspd = choose(-2.5,-2.25);
    
        var gbh5 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+choose(-1,1),obj_molded_dark_blood);
        var gbh6 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+choose(-1,1),obj_molded_dark_blood);
        var gbh7 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+choose(-1,1),obj_molded_dark_blood);
        var gbh8 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+choose(-1,1),obj_molded_dark_blood);
        
        gbh5.hspd = choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75);
        gbh5.vspd = choose(-3,-2.75);  
        gbh6.hspd = choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
        gbh6.vspd = choose(-2.5,-2.25);
        gbh7.hspd = choose(0.2,0.25,0.3,0.35,0.7,0.75,0.7,0.75);
        gbh7.vspd = choose(-3,-2.75);  
        gbh8.hspd = choose(0.85,0.9,1,1.25,1.65,1.7,1.75,1.8);
        gbh8.vspd = choose(-2.5,-2.25);
        
        
        var gbu1 = instance_create_depth(x-8*sign(image_xscale),y-32,depth+choose(-1,1),obj_molded_dark_blood);
        var gbu2 = instance_create_depth(x-8*sign(image_xscale),y-36,depth+choose(-1,1),obj_molded_dark_blood);
        var gbu3 = instance_create_depth(x-8*sign(image_xscale),y-36,depth+choose(-1,1),obj_molded_dark_blood);
        var gbu4 = instance_create_depth(x-8*sign(image_xscale),y-36,depth+choose(-1,1),obj_molded_dark_blood);
 
        gbu1.hspd = -1*choose(0.1,0.25);
        gbu1.vspd = choose(-6,-5.9);
        gbu1.grav = choose(0.11,0.12);
    
        gbu2.hspd = -1*choose(0.35,0.45);
        gbu2.vspd = -5.8;
        gbu2.grav = choose(0.13,0.15);
    
        gbu3.hspd = 1*choose(0.1,0.25);
        gbu3.vspd = choose(-6,-5.9);
        gbu3.grav = choose(0.11,0.12);
    
        gbu4.hspd = 1*choose(0.35,0.45);
        gbu4.vspd = -5.8;
        gbu4.grav = choose(0.13,0.15);
        
    }
}

switch(t)
{
    case 50:
        image_index = 2;
        break;
    case 250: 
        image_index = 5;
        break;
    case 280:
        sprite_index = spr_follower_grounded_transform_2;
        image_index = 0;
        fnc_snd_play_onetime(snd_transform);
        break;
    case 285:
        image_index = 1;
        break;
    case 290:
        image_index = 2;
        break;
    case 295:
        image_index = 3;
        break;
    case 300:
        image_index = 4;
        break;
    case 305:
        image_index = 5;
        fnc_msc_play(msc_jp1_c_jp2_c);
        break;
    case 360:
        instance_destroy();
        var j = instance_create_depth(x-18*sign(image_xscale),y-18,depth,obj_npc_jake_temple);
        j.image_xscale = image_xscale;
    
}