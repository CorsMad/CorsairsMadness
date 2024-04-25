/// @description Insert description here
// You can write your code in this editor


switch(state){
	case 0:	//ARRIVE
		scr_enemy_arrive_overall(EnemyCreator.x_end,EnemyCreator.y_start,EnemyCreator.s_idle);
		break;
	case 1: // ACTION
		scr_enemy_attack(EnemyCreator.s_attack,EnemyCreator.dmg,EnemyCreator.effect_attack);
		scr_enemy_action_overall();
		break;
}



