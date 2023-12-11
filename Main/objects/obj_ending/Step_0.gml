/// @description Insert description here
// You can write your code in this editor

if state = 1 {
	switch(step){
		case 0: // разговор с джунгл вождь
			scr_ending_step1(obj_txt_ending_chief_jungle);
			break;
		case 1: // разговор с джейком
			scr_ending_step1(obj_txt_ending_jake);
			break;
		case 2: // разговор с пустын вождь
			scr_ending_step1(obj_txt_ending_chief_desert);
			break;
		case 3: // разговор с пью
			scr_ending_step1(obj_txt_ending_pew);
			break;
		case 4: // разговор с Снег вождь
			scr_ending_step1(obj_txt_ending_chief_snow);
			break;
		case 5: // разговор с салли
			scr_ending_step1(obj_txt_ending_sully);
			break;
		case 6: // разговор с Шадов вождь
            obj_end_sam.image_xscale = 1;
			scr_ending_step1(obj_txt_ending_chief_shadow);
			break;	
		case 7: // разговор с петро
			scr_ending_step1(obj_txt_ending_petro);
			break;
		case 8: // разговор с дава вождь
			scr_ending_step1(obj_txt_ending_chief_vulcano);
			break;	
		case 9: // разговор с бонни
			scr_ending_step1(obj_txt_ending_bonnie);
			break;
		case 10:
			// Переход героя влево к изобретателю
            t++;
            if t = 30 {
                obj_end_sam.image_xscale = -1;
			    obj_end_sam.state = 5;
			    obj_camera_ending.state = 2;
			    step+=0.5; 
                t = 0;
            }     
			break;
		case 11:
            switch(ending){
               case 1:// спас всех
                    scr_ending_step1(obj_txt_ending_inventor3);
                    break;
               case 2:// спас не всех
                    scr_ending_step1(obj_txt_ending_inventor2);
                    break;
               case 3:// не спас никого
                    scr_ending_step1(obj_txt_ending_inventor1);
                    break;
            }
			
			break;
		case 12:
            
			switch(ending){
               case 1:// спас всех
                    scr_ending_step1(obj_txt_ending_sam3);
                    break;
               case 2:// спас не всех
                    scr_ending_step1(obj_txt_ending_sam2);
                    break;
               case 3:// не спас никого
                    scr_ending_step1(obj_txt_ending_sam1);
                    break;
            }
			break;
        case 13:
                switch(ending){
                    case 1:// лучшая
                        instance_create_depth(0,0,-999999999999,obj_room_transition_black_screen_credits_white)
                        break;
                    default:// остальные
                        instance_create_depth(0,0,-999999999999,obj_room_transition_black_screen_credits_black)
                        break;
                }
                obj_camera_ending.state = 4;
                instance_destroy();
            break;
				
	}
        

}
