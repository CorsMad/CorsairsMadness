/// @description Insert description here
// You can write your code in this editor

if state = 1 {
    switch(ending){
        case 1:
        #region Good ending
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
				
				break;
			case 11:
				scr_ending_step1();
				break;
			case 12:
				scr_ending_step1();
				break;
				
		}
        #endregion
            break;
        case 2:
        #region Neutral ending

        #endregion
            break;
        case 3:
        #region Bad ending

        #endregion
            break;
    }
}
