// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_island_escape(){
	switch(global.language){
		case 0: //eng
			warning 	     = "You won't be able to come back here!"; 			
			warning_jake1    = "Jake is not saved yet";
			warning_pew1     = "Pew is not saved yet";
			warning_sully1	 = "Sully is not saved yet";
			warning_petro1	 = "Petro is not saved yet";
			warning_bonnie1  = "Bonnie is not saved yet";
			warning_jake2    = "Talk to Jake outside";
			warning_pew2     = "Talk to Pew outside";
			warning_sully2	 = "Talk to Sully outside";
			warning_petro2	 = "Talk to Petro outside";
			warning_bonnie2  = "Talk to Bonnie outside";
			
			break;
		case 1: //rus
			warning 	     = "Вы не сможете вернуться сюда!"		
			warning_jake1    = "Джейк еще не спасен"
			warning_pew1     = "Пью еще не спасен"
			warning_sully1	 = "Салли еще не спасен"
			warning_petro1	 = "Петро еще не спасен"
			warning_bonnie1  = "Бонни еще не спасена"
			warning_jake2    = "Поговорите с Джейком снаружи"
			warning_pew2     = "Поговорите с Пью снаружи"
			warning_sully2	 = "Поговорите с Салли снаружи"
			warning_petro2	 = "Поговорите с Петро снаружи"
			warning_bonnie2  = "Поговорите с Бонни снаружи"
			break;
		case 2: //esp
			warning 	     = "¡No puedes volver aquí!"		
			warning_jake1    = "¡Jake aún no ha sido rescatado!"
			warning_pew1     = "¡Pew aún no se ha salvado!"
			warning_sully1	 = "¡Sully aún no está salvado!"
			warning_petro1	 = "¡Sully aún no está salvado!"
			warning_bonnie1  = "¡Bonnie aún no está salvada!"
			warning_jake2    = "Habla con Jake afuera"
			warning_pew2     = "Habla con Pew afuera"
			warning_sully2	 = "Habla con Sully afuera"
			warning_petro2	 = "Habla con Petro afuera"
			warning_bonnie2  = "Habla con Bonnie afuera"
			break;
		case 3: //cn
			warning 	     = "你回不去了!"
			warning_jake1    = "Jake还没得救!"
			warning_pew1     = "Pew还没有得救!"
			warning_sully1	 = "Sully还没有得救!"
			warning_petro1	 = "Petro罗还没得救!"
			warning_bonnie1  = "Bonnie还没有得救！"
			warning_jake2    = "到外面和Jake说话"
			warning_pew2     = "与外面的Pew交谈"
			warning_sully2	 = "在外面与Sully交谈"
			warning_petro2	 = "在外面与Petro交谈"
			warning_bonnie2  = "在外面与Bonnie交谈"
			break;
		case 4: //port
			warning 	     = "Não podes voltar aqui!"
			warning_jake1    = "O Jake ainda não está salvo!"
			warning_pew1     = "O Pugh ainda não está salvo!"
			warning_sully1	 = "O Sully ainda não foi salvo!"
			warning_petro1	 = "O Petro ainda não está salvo!"
			warning_bonnie1  = "A Bonnie ainda não foi salva!"
			warning_jake2    = "Falar com o Jake lá fora"
			warning_pew2     = "Fala com o Pugh lá fora"
			warning_sully2	 = "Fala com a Sally lá fora"
			warning_petro2	 = "Falar com o Petro lá fora"
			warning_bonnie2  = "Falar com a Bonnie lá fora"
			break;
		case 5: //br
			warning 	     = "Você não pode voltar aqui!"
			warning_jake1    = "O Jake ainda não foi salvo!"
			warning_pew1     = "O Pugh ainda não foi salvo!"
			warning_sully1	 = "Sally ainda não foi salvo!"
			warning_petro1	 = "O Petro ainda não foi salvo!"
			warning_bonnie1  = "A Bonnie ainda não foi salva!"
			warning_jake2    = "Fale com o Jake lá fora"
			warning_pew2     = "Fale com o Pugh do lado de fora"
			warning_sully2	 = "Fale com a Sally do lado de fora"
			warning_petro2	 = "Fale com o Petro do lado de fora"
			warning_bonnie2  = "Fale com Bonnie do lado de fora"	
			break;
		case 6: //pl
			warning 	     = "Nie możesz tu wrócić!"
			warning_jake1    = "Jake nie jest jeszcze uratowany!"
			warning_pew1     = "Pew nie jest jeszcze zbawiony!"
			warning_sully1	 = "Sully nie jest jeszcze zbawiony!"
			warning_petro1	 = "Petro nie jest jeszcze zbawiony!"
			warning_bonnie1  = "Bonnie nie jest jeszcze uratowana!"
			warning_jake2    = "Porozmawiaj z Jakiem na zewnątrz"
			warning_pew2     = "Porozmawiaj z Pewem na zewnątrz"
			warning_sully2	 = "Porozmawiaj z Sullym na zewnątrz"
			warning_petro2	 = "Porozmawiaj z Petro na zewnątrz"
			warning_bonnie2  = "Porozmawiaj z Boonie na zewnątrz"
			break;
		case 7: //jp
			warning 	     = "ここには戻れない！"
			warning_jake1    = "ジェイクはまだ救われてない"
			warning_pew1     = "ピューはまだ救われてない"
			warning_sully1	 = "サリーはまだ救われてない"
			warning_petro1	 = "ペトロはまだ救われてない"
			warning_bonnie1  = "ボニーはまだ救われてない"
			warning_jake2    = "外でジェイクと話せ"
			warning_pew2     = "外でピューと話せ"
			warning_sully2	 = "外のサリーと話す"
			warning_petro2	 = "外のペトロと話す"
			warning_bonnie2  = "外にいるブーニーと話す"
			break;
		case 8: //de
			warning 	     = "Du kannst nicht zurückkommen!"
			warning_jake1    = "Jake ist noch nicht gerettet!"
			warning_pew1     = "Pew ist noch nicht gerettet!"
			warning_sully1	 = "Sully  ist noch nicht gerettet!"
			warning_petro1	 = "Petro ist noch nicht gerettet!"
			warning_bonnie1  = "Bonnie ist noch nicht gerettet!"
			warning_jake2    = "Sprich draußen mit Jake"
			warning_pew2     = "Reden Sie draußen mit Pew"
			warning_sully2	 = "Sprechen Sie draußen mit Sully"
			warning_petro2	 = "Sprich draußen mit Petro"
			warning_bonnie2  = "Sprich draußen mit Boonie"
			break;
		case 9: //fr
			warning 	     = "Vous ne pouvez pas revenir ici !"
			warning_jake1    = "Jake n'est pas encore sauvé !"
			warning_pew1     = "Pew n'est pas encore sauvé !"
			warning_sully1	 = "Sully n'est pas encore sauvée !"
			warning_petro1	 = "Petro n'est pas encore sauvé !"
			warning_bonnie1  = "Bonnie n'est pas encore sauvée !"
			warning_jake2    = "Parle à Jake à l'extérieur"
			warning_pew2     = "Parle à Pew dehors"
			warning_sully2	 = "Parle à Sully dehors"
			warning_petro2	 = "Parle à Petro dehors"
			warning_bonnie2  = "Parle à Boonie dehors"
			break;
		case 10: //it
			warning 	     = "Non puoi tornare qui!"
			warning_jake1    = "Jake non è ancora salvo!"
			warning_pew1     = "Pew non è ancora salvo!"
			warning_sully1	 = "Sully non è ancora stata salvata!"
			warning_petro1	 = "Petro non è ancora stato salvato!"
			warning_bonnie1  = "Bonnie non è ancora stata salvata!"
			warning_jake2    = "Parlate con Jake fuori"
			warning_pew2     = "Parla con Pew fuori"
			warning_sully2	 = "Parla con Sully fuori"
			warning_petro2	 = "Parla con Petro fuori"
			warning_bonnie2  = "Parla con Boonie fuori"
			break;
	}
}	