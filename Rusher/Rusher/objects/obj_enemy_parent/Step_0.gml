/// @description Insert description here
// You can write your code in this editor


switch(state){
	case 0:	//ARRIVE
		scr_enemy_arrive_overall(EnemyCreator.x_end,EnemyCreator.y_start,EnemyCreator.s_idle); 
		break;
	case 1: // ACTION
		if EnemyCreator.boss != 1 scr_enemy_attack(EnemyCreator.s_attack,EnemyCreator.dmg,EnemyCreator.effect_attack);
		if EnemyCreator.boss = 1 scr_enemy_boss_action_overall(); else scr_enemy_action_overall();
		break;
}



