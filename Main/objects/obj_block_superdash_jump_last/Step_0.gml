/// @description Insert description here
// You can write your code in this editor
image_alpha = 1;
switch(on)
{
    case 1:
    sprite_index = spr_block_superdash_up;
    mask_index = spr_block_superdash_mask;
	image_speed = 0.5;
    if place_meeting(x,y,obj_Player)
    {
        if obj_Player.isDead = 12
        {
            fnc_snd_play_over(snd_lava_block_destr)
            //obj_Player.doublejumpspd = obj_Player.image_xscale*spd;        
            obj_Player.isDead = 800;
            obj_Player.superdash_power = 0;
            //obj_Player.isRecoil = 1;
            obj_Player.superdash_timer_count = 0;
            obj_Player.vspd = boost;
            obj_Player.y = y+24;
            obj_Player.x = room_width/2;
            on = 0;
			var fx = instance_create_depth(x,y,depth-1,obj_sfx3);
			fx.image_xscale = 2;
			fx.image_yscale = 2;
        }
    }
        break;
    case 0:
        image_speed = 0;
        mask_index = noone;
		
		switch(t){
			case 1:
				sprite_index = spr_block_superdash_up_d;
				image_index = 0;
				break;
			case 3:image_index = 1;break;
		}
		
		if t > 3 {
			if t mod 20 = 0 {
					if image_index = 1 image_index = 2 else image_index = 1;	
			}
		}
		t++;
        if t > 150 t = 100 
		
        if t >=100 && !place_meeting(x,y,obj_Player)
        {
            t = 0;
            on = 0.5;
        }  
        break;
	case 0.5:
		t++;
		if t = 1 image_index = 1;
		if t = 3 image_index = 0;
		if t = 5 {
			t = 0;
			on = 1;
		}
		break;
}

