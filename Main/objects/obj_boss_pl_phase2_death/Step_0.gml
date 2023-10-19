/// @description Insert description here
// You can write your code in this editor
fnc_Collision(obj_block);
if !place_meeting(x,y+1,obj_block)
{
    vspd+=0.2;   
}
t++;

if t mod 10 = 0 && t > 10 && t < 100 && place_meeting(x,y+1,obj_block)
{
    if image_index = 2 image_index = 3 else image_index = 2;
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
	case 120:
		sprite_index = spr_boss_lp_idle;
		image_speed = 1;
		break;
    case 150:
        sprite_index = spr_boss_lp_appear;
		image_index = 7
		image_speed = 0;
        break;
	case 155: image_index = 6; break;
	case 160: image_index = 5; break;
	case 165: image_index = 4; break;
	case 170: image_index = 3; break;
	case 175: image_index = 2; break;
	case 180: image_index = 1;fnc_snd_play_over(snd_spikes_trap_activation); break;
	case 185: image_index = 0; break;
    case 190:
        instance_destroy();
        if obj_Player.x > room_width/2
        {
            var d = instance_create_depth(144,208,depth,obj_boss_pl_phase3); 
            d.image_xscale = image_xscale;   
        } else {
            var d = instance_create_depth(816,208,depth,obj_boss_pl_phase3); 
            d.image_xscale = image_xscale;
        }
        
        
        break;
}