/// @description Insert description here
// You can write your code in this editor
if instance_exists(fol){

switch(state){
	case 0: // появление+атака+уход
        #region anim
        t++;
        switch(t){
            case 1: sprite_index = spr_bossmerch_phase3_appear;image_index =0 ;break;   
            case 5: image_index =1 ;break;   
            case 10: image_index =2 ;break;   
            case 15: image_index =3 ;break;   
            case 20: sprite_index = spr_bossmerch_phase2_head_idle;image_speed = 1;break;   
            case 330: sprite_index = spr_bossmerch_phase3_appear;fnc_snd_play_onetime(snd_di_boss_appear)image_index = 3;image_speed = 0;break;
            case 335: image_index = 2;break;
            case 340: image_index = 1;break;
            case 345: image_index = 0;break;
        }
        
        
        #endregion
		
		if t = 30  instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_bossmerch_phase1_proj1_1);
		if t = 50  instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_bossmerch_phase1_proj1_1);
		if t = 70  instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_bossmerch_phase1_proj1_1);
		if t = 90  instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_bossmerch_phase1_proj1_1);
		if t = 110 instance_create_depth(x+random_range(-8,8),y+random_range(-8,8),depth-1,obj_bossmerch_phase1_proj1_1);
		if t = 350 {
			instance_destroy();
			fol.state = next_state;
			fol.t = 0;
		}
		break;
	case 1: // атака вправо
		t++;
        
		switch(t){
            case 5:  sprite_index = spr_bossmerch_phase3_appear_side;image_index = 1;break;
            case 10: image_index = 2;break;
            case 15: image_index = 3;break;
            case 20: sprite_index = spr_bossmerch_phase3_side_idle;image_speed = 1;break;
			case 50:	
            
				for (var i = 0; i < 6; i += 1)
				{
				    var proj1 = instance_create_depth(x,y,depth-1,obj_bossmerch_phase3_proj1);
						proj1.spd = 2;	
						proj1.direction = 270 + 18*i;
				}					
				break;
            case 200: sprite_index = spr_bossmerch_phase3_appear_side;fnc_snd_play_onetime(snd_di_boss_appear)image_index = 3;image_speed = 0;break;
            case 205: image_index = 2;break;
            case 210: image_index = 1;break;
            case 215: image_index = 0;break;
			case 220:
				instance_destroy();
				fol.state = next_state;
				fol.t = 0;
				break;
		}
		break;
	case 2: // атака влево
		t++;
		switch(t){
            case 5:  sprite_index = spr_bossmerch_phase3_appear_side;image_index = 1;image_xscale = -1;break;
            case 10: image_index = 2;break;
            case 15: image_index = 3;break;
            case 20: sprite_index = spr_bossmerch_phase3_side_idle;image_speed = 1;break;
			case 50:	
				for (var i = 0; i < 6; i += 1)
				{
				    var proj1 = instance_create_depth(x,y,depth-1,obj_bossmerch_phase3_proj1);
                    proj1.spd = 2;
                    proj1.direction = 270 - 18*i
				}					
				break;
			case 200: sprite_index = spr_bossmerch_phase3_appear_side;image_index = 3;fnc_snd_play_onetime(snd_di_boss_appear)image_speed = 0;break;
            case 205: image_index = 2;break;
            case 210: image_index = 1;break;
            case 215: image_index = 0;break;
			case 220:
				instance_destroy();
				fol.state = next_state;
				fol.t = 0;
				break;
		}
		break;
	case 3:
		t++;
        #region графика
            switch(t){
                case 1: sprite_index = spr_bossmerch_phase3_appear;image_index =0 ;break;   
                case 5: image_index =1 ;break;   
                case 10: image_index =2 ;break;   
                case 15: image_index =3 ;break;   
                case 20: sprite_index = spr_bossmerch_phase2_head_idle;image_speed = 1;break;   
                case 730: sprite_index = spr_bossmerch_phase3_appear;image_index = 3;fnc_snd_play_onetime(snd_di_boss_appear)image_speed = 0;break;
                case 735: image_index = 2;break;
                case 740: image_index = 1;break;
                case 745: image_index = 0;break;
            }
        #endregion
		if t > 50 && t < 300 {
			if t mod 10 = 0{
				turn+=1;
				var proj2 = instance_create_depth(448-16*turn,32,0,obj_bossmerch_phase3_proj1);
                proj2.spd = 3;
                proj2.direction = 270;

			}
		}
		if t = 310 turn = -1;
		if t > 350 && t < 600 {
			if t mod 10 = 0{
				turn+=1;
				var proj3 = instance_create_depth(32+16*turn,32,0,obj_bossmerch_phase3_proj1);
				proj3.spd = 3;
                proj3.direction = 270;
			}
		}
		
		if t = 750{
			instance_destroy();
			fol.state = next_state;
			fol.t = 0	
		}
		break;
}
	
#region takedmg

 // Атака

    fnc_take_dmg_hitbox(-10,0,-1,10,0,-1);
    
// Топор

    fnc_take_dmg_axe(-10,0,-1,10,0,-1,1);
    
// Удар вниз   

    fnc_take_dmg_hitbox_down(0,-16,-1);

// Бомба

    fnc_take_dmg_bomb(-10,-16,-1,10,-16,-1,1);

// Eball

	fnc_take_dmg_eball(0,-16,-1,1);

// Parrot

	fnc_take_dmg_parrot_laser(0,-16,-1,1)
    

// Получение урона

    fnc_enemy_no_armor_dmg();

fol.enemy_hp = enemy_hp
#endregion

} else instance_destroy();