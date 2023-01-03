/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);

if !place_meeting(x,y+1,obj_block)
{
    vspd +=0.2;   
} else vspd = 0;

t++;

if t mod 10 = 0 && t > 10 && t < 100 && place_meeting(x,y+1,obj_block)
{
    if image_index = 2 image_index = 3 else image_index = 2;
}

if (t mod 10 = 0) && t < 100
{
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
    case 105:
        image_index = 1;
        break;
    case 110:
        image_index = 0;
        break;
    case 115:
        instance_destroy();
        var d = instance_create_depth(x,y,depth,obj_boss_jp_phase2);
        d.image_xscale = image_xscale;
        break;
}