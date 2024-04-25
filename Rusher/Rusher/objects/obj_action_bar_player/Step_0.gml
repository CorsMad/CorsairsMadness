/// @description Insert description here
// You can write your code in this editor


switch(move){
	case 0: // Нанесение удара
		t++;
		if t = 1 {
			obj_player_sprite.sprite_index = spr_player_attack1;
			obj_player_sprite.image_index = 0;	
		}
		
		bar = 0;
		if t = 10 {
			t=0;
			move=1;
			obj_player_sprite.sprite_index = spr_player_idle;
		}
		break;
	case 1: // заполнение шкалы
		bar+=spd;	
		if bar>=bar_max{
			bar = bar_max;
			move = 2;
			// Возможность атаки
			if instance_exists(obj_player) obj_player.can_start = 1;			
		}
		break;
	case 2: // заполнено
		bar = bar_max;
		break;
	case 3: // после нажатия кнопки
		bar = 0;
		break;
}
