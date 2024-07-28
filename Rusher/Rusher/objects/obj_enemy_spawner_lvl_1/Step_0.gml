/// @description Insert description here
// You can write your code in this editor


switch(state){
	case 0: // 
		t++;
		if t = 50 scr_enemy_creator(562,80,choose(scr_en_creator_slime_small1(),scr_en_creator_slime_small2()));		
		break;
	case 1: // 
		t++;
		if t = 50 scr_enemy_creator(562,80,choose(scr_en_creator_slime_small1(),scr_en_creator_slime_small2()));
		break;
	case 2: //
		t++;
		if t = 50 scr_enemy_creator(562,80,choose(scr_en_creator_slime_small1(),scr_en_creator_slime_small2()));
		break;
	case 3: // lvlup 1
		t++;
		if t = 50 scr_enemy_creator(562,80,choose(scr_en_creator_slime_small1(),scr_en_creator_slime_small2()));
		break;
	case 4: // 
		t++;
		if t = 50 scr_enemy_creator(562,80,choose(scr_en_creator_slime_small1(),scr_en_creator_slime_small2());
		break;
	case 5: 
		t++;
		if t = 50 scr_enemy_creator(562,80,choose(scr_en_creator_slime_small1(),scr_en_creator_slime_small2());
		break;
	case 6: // lvlup 2 
		t++;
		if t = 50 scr_enemy_creator(562,80,scr_en_creator_slime_medium());
		break;
	case 7: // 
		t++;
		if t = 50 scr_enemy_creator(562,80,scr_en_creator_slime_medium());
		break;
	case 8: 
		t++;
		if t = 50 scr_enemy_creator(562,80,scr_en_creator_slime_medium());
		break;
	case 9: // lvlup 3
		t++;
		if t = 50 scr_enemy_creator(562,80,scr_en_creator_slime_medium());
		break;
	case 10: // 
		t++;
		if t = 50 scr_enemy_creator(562,80,scr_en_creator_slime_medium());
		break;
	case 11: 
		t++;
		if t = 50 scr_enemy_creator(562,80,scr_en_creator_slime_medium());
		break;
	case 12: // lvlup 4
		t++;
		if t = 50 scr_enemy_creator(562,80,scr_en_creator_slime_big());
		break;
	case 13: // 
		t++;
		if t = 50 scr_enemy_creator(562,80,scr_en_creator_slime_big());
		break;
	case 14: // lvlup 5
		t++;
		if t = 50 scr_enemy_creator(562,80,scr_en_creator_slime_big());
		break;
	case 15: // 
		t++;     
		if t = 50 scr_enemy_creator(562,80,scr_en_creator_slime_boss());
		break;	
    case 16: // END
        t++;
        if t = 50 {
            obj_player_sprite.state = 5;
            
            // добавление предметов торовцу и завершение
            if obj_container_global.completed < 1 {
            var w1 = [scr_sword2(),scr_sword3()]  
            for (var i = 0; i < array_length(w1); i++) {
                array_push(obj_inventory.shop_w,w1[i])
            }
        }
        }
        if t = 150 room_goto(globalmap);       
        break;
}