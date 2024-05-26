// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_text_autosave(){
	switch(global.language){
		case 0: // eng
			text = "the game autosaves in villages and on maps";			
			break;
		case 1: // ru
			text = @"игра автоматически сохраняется
в деревнях и на картах";
			break;
		case 2: // sp
			text = @"el juego se guarda automáticamente 
en pueblos y mapas";
			break;
		case 3: // cn
			text = "游戏在村庄和地图中自动保存";
			break;
		case 4: // pt
			text = @"o jogo guarda automaticamente 
nas aldeias e nos mapas";
			break;
		case 5: // br
			text = @"o jogo salva automaticamente 
nas aldeias e nos mapas";
			break;
		case 6: // pl
			text = @"gra zapisuje się automatycznie 
w wioskach i na mapach";
			break;
		case 7: // jp
			text = "村やマップでオートセーブされる";
			break;
		case 8: // de
			text = @"Das Spiel speichert automatisch 
in Dörfern und auf Karten";
			break;
		case 9: // fr
			text = @"le jeu fait des sauvegardes automatiques 
dans les villages et sur les cartes";
			break;
		case 10: // it
			text = @"il gioco si salva automaticamente 
nei villaggi e nelle mappe";
			break;
	}
}