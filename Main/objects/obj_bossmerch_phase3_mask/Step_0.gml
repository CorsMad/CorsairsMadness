/// @description Insert description here
// You can write your code in this editor
if instance_exists(fol){

switch(state){
	case 0: // появление+атака+уход
		t++;
		if t = 30 instance_create_depth(x,y,depth,obj_bossmerch_phase1_proj1_1);
		if t = 50 instance_create_depth(x,y,depth,obj_bossmerch_phase1_proj1_1);
		if t = 70 instance_create_depth(x,y,depth,obj_bossmerch_phase1_proj1_1);
		if t = 200 {
			instance_destroy();
			fol.state = next_state;
			fol.t = 0;
		}
		break;
	case 1: // атака вправо
		t++;
		switch(t){
			case 50:	
				for (var i = 0; i < 6; i += 1)
				{
				    instance_create_depth(x,y,depth-1,obj_bossmerch_phase3_proj1,{
						speed : 2,	
						direction : 270 + 18*i
					});
				}					
				break;
			case 200:
				instance_destroy();
				fol.state = next_state;
				fol.t = 0;
				break;
		}
		break;
	case 2: // атака вправо
		t++;
		switch(t){
			case 50:	
				for (var i = 0; i < 6; i += 1)
				{
				    instance_create_depth(x,y,depth-1,obj_bossmerch_phase3_proj1,{
						speed : 2,	
						direction : 270 - 18*i
					});
				}					
				break;
			case 200:
				instance_destroy();
				fol.state = next_state;
				fol.t = 0;
				break;
		}
		break;
	case 3:
		t++;
		if t > 50 && t < 300 {
			if t mod 10 = 0{
				turn+=1;
				instance_create_depth(448-16*turn,32,0,obj_bossmerch_phase3_proj1,
				{
					direction : 270,
					speed : 3
				});
			}
		}
		if t = 310 turn = -1;
		if t > 350 && t < 600 {
			if t mod 10 = 0{
				turn+=1;
				instance_create_depth(32+16*turn,32,0,obj_bossmerch_phase3_proj1,
				{
					direction : 270,
					speed : 3
				});
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