function scr_txt_vulcano_merch1(){
    switch(global.language){
        case 0:
            #region English
            text1 = choose("[fnt_pixel]Gee, it's a good thing the smog didn't leak in here.",
						   "[fnt_pixel]I'm glad we share a room with the chief. At least it's safe.");
            #endregion
            break;
		case 1: //rus
			text1 = choose("[fnt_pixel_ru]Ну и дела, хорошо что дым не просочился сюда.",
						   "[fnt_pixel_ru]Я рад что у нас общее помещение с вождем. Тут хотя бы безопасно...");
			break;
		case 2: //es
			text1 = choose("[fnt_pixel]Vaya, menos mal que el humo no se filtró aquí.",
						   "[fnt_pixel]Me alegra que compartamos habitación con el jefe. Al menos es seguro.");
			break;
		case 3: //cn
			text1 = choose("[fnt_pixel]哎呀，幸好烟雾没有漏进来。",
						   "[fnt_pixel]我很高兴我们和酋长分享一间房间。至少安全。");
			break;
		case 4: //pt
			text1 = choose("[fnt_pixel]Caramba, ainda bem que a fumaça não vazou para cá.",
						   "[fnt_pixel]Estou feliz por dividirmos um quarto com o chefe. Pelo menos é seguro.");
			break;
		case 5: //br
			text1 = choose("[fnt_pixel]Ufa, ainda bem que a fumaça não vazou para cá.",
						   "[fnt_pixel]Estou contente por compartilharmos um quarto com o chefe. Pelo menos, é seguro.");
			break;
		case 6: //pl
			text1 = choose("[fnt_pixel]Jezu, dobrze, że smog tutaj nie przedostał się.",
						   "[fnt_pixel]Cieszę się, że dzielimy pokój z wodzem. Przynajmniej jest bezpiecznie.");
			break;
		case 7: //jp
			text1 = choose("[fnt_pixel]おっと、スモッグがここに漏れてこなかったのは良かった。",
						   "[fnt_pixel]私たちが長と同じ部屋を共有しているのが嬉しい。少なくともそれは安全だ。");
			break;
		case 8: //de
			text1 = choose("[fnt_pixel]Mensch, es ist gut, dass der Smog hier nicht reingekommen ist.",
						   "[fnt_pixel]Ich bin froh, dass wir uns ein Zimmer mit dem Häuptling teilen. Zumindest ist es sicher.");
			break;
		case 9: //fr
			text1 = choose("[fnt_pixel]Oh, c'est une bonne chose que le smog n'ait pas fuité ici.",
						   "[fnt_pixel]Je suis content que nous partagions une chambre avec le chef. Au moins, c'est sûr.");
			break;
		case 10: //it
			text1 = choose("[fnt_pixel]Gee, per fortuna lo smog non è entrato qui.",
						   "[fnt_pixel]Sono contento che condividiamo una stanza con il capo. Almeno è sicuro.");
			break;
		
    }
}

function scr_txt_vulcano_merch2(){
    switch(global.language){
        case 0:
            #region English
            text1 = "[fnt_pixel]There's our hero! [wave]Well done[/wave]! You were able to weaken the influence...deal with the dark forces in the temple.";
            text2 = "[fnt_pixel]Will you save [c_red]Bonnie[/c]? It's up to you, of course, but the fate of your teammate depends on [c_green]green coins[/c].";
            text3 = "[fnt_pixel]Let me know as soon as you're done with your business.";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]А вот и наш герой! [wave]Отличная работа[/wave]! Ты смог ослабить влияние...разобраться с темными силами в храме.";
			text2 = "[fnt_pixel_ru]Будешь ли ты спасать [c_red]Бонни[/c]? Дело твое, конечно, но судьба члена твоей команды зависит от [c_green]зеленых монет[/c].";
			text3 = "[fnt_pixel_ru]Как только разберешься со всеми делами - дай знать.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¡Ahí está nuestro héroe! ¡[wave]Bien hecho[/wave]! Fuiste capaz de debilitar la influencia... lidiar con las fuerzas oscuras en el templo.";
			text2 = "[fnt_pixel]¿Salvarás a [c_red]Bonnie[/c]? Depende de ti, por supuesto, pero el destino de tu compañero de equipo depende de las [c_green]monedas verdes[/c].";
			text3 = "[fnt_pixel]Avísame en cuanto termines con tus asuntos.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]我们的英雄在这里！[wave]做得好[/wave]！你成功的削弱了...在寺庙中对抗黑暗力量。";
			text2 = "[fnt_pixel]你会救 [c_red]Bonnie[/c] 吗？当然，这取决于你，但是你的队友的命运取决于[c_green]绿色硬币[/c]。";
			text3 = "[fnt_pixel]一旦你处理完你的事情，就告诉我一声。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Lá está o nosso herói! [wave]Muito bem[/wave]! Você foi capaz de enfraquecer a influência... lidar com as forças das trevas no templo.";
			text2 = "[fnt_pixel]Você vai salvar [c_red]Bonnie[/c]? Isso depende de você, é claro, mas o destino do seu companheiro de equipe depende de [c_green]moedas verdes[/c].";
			text3 = "[fnt_pixel]Me avise assim que terminar seus negócios.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Lá está o nosso herói! [wave]Muito bem[/wave]! Você conseguiu enfraquecer a influência... lidar com as forças obscuras no templo.";
			text2 = "[fnt_pixel]Vai salvar a [c_red]Bonnie[/c]? Isso depende de você, claro, mas o destino de sua companheira de equipe depende de [c_green]moedas verdes[/c].";
			text3 = "[fnt_pixel]Avise-me assim que terminar as tuas obrigações.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Oto nasz bohater! [wave]Dobra robota[/wave]! Udało Ci się osłabić wpływ...poradzić sobie z mrocznymi siłami w świątyni.";
			text2 = "[fnt_pixel]Czy uratujesz [c_red]Bonnie[/c]? To oczywiście zależy od Ciebie, ale los Twojego towarzysza drużyny zależy od [c_green]zielonych monet[/c].";
			text3 = "[fnt_pixel]Daj mi znać, jak tylko skończysz swoje sprawy.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]ヒーローがきた！[wave]よくやった[/wave]！あなたは影響力を弱めることができた...寺院の暗闇の力と対処する。";
			text2 = "[fnt_pixel][あなた[c_red]はボニ[/c]ーを救いますか？それはもちろんあなた次第ですが、あなたのチームメートの運命は[c_green]緑のコイン[/c]次第です。";
			text3 = "[fnt_pixel]仕事が終わったらすぐに知らせてください。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Da ist unser Held! [wave]Gut gemacht[/wave]! Du könntest die Einflüsse...die dunklen Kräfte im Tempel bekämpfen.";
			text2 = "[fnt_pixel]Wirst du [c_red]Bonnie[/c] retten? Das liegt natürlich bei dir, aber das Schicksal deines Teamkollegen hängt von [c_green]grünen Münzen[/c] ab.";
			text3 = "[fnt_pixel]Lass es mich wissen, sobald du deine Geschäfte erledigt hast.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Voilà notre héros! [wave]Bien joué[/wave]! Vous avez réussi à affaiblir l'influence... à vous occuper des forces obscures dans le temple.";
			text2 = "[fnt_pixel]Sauverez-vous [c_red]Bonnie[/c]? C'est à vous de décider, bien sûr, mais le sort de votre coéquipier dépend des [c_green]pièces vertes[/c].";
			text3 = "[fnt_pixel]Faites-moi savoir dès que vous aurez terminé vos affaires.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Eccoci il nostro eroe! [wave]Ben fatto[/wave]! Sei riuscito a indebolire l'influenza... a gestire le forze oscure nel tempio.";
			text2 = "[fnt_pixel]Salverai [c_red]Bonnie[/c]? Dipende da te, naturalmente, ma il destino del tuo compagno di squadra dipende dalle [c_green]monete verdi[/c].";
			text3 = "[fnt_pixel]Fammi sapere appena hai finito con i tuoi affari.";
			break;
    }
}



function scr_txt_vulcano_merch4(){
    switch(global.language){
        case 0:
            #region English
            text1 = "[fnt_pixel]All right! [c_red]Bonnie's[/c] safe. She's [c_red]outside[/c] right now, and she definitely has something to tell you.";
            text2 = "[fnt_pixel]Come back as soon as you're ready to go.";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Отлично! [c_red]Бонни[/c] спасена. Она сейчас находится [c_red]снаружи[/c] и ей определенно есть что тебе сказать.";
			text2 = "[fnt_pixel_ru]Возвращайся как только будешь готов отправляться.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¡Bien! [c_red]Bonnie[/c] está a salvo. Ahora mismo [c_red]está fuera[/c], y definitivamente tiene algo que decirte.";
			text2 = "[fnt_pixel]Vuelve tan pronto como estés listo para partir.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]好了！[c_red]Bonnie[/c]安全了。[c_red]她现在在外面[/c]，肯定有事要告诉你。";
			text2 = "[fnt_pixel]一旦你准备好出发，就回来这里。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Tudo bem! [c_red]Bonnie[/c] está segura. Ela está lá [c_red]fora[/c] agora, e definitivamente tem algo para te contar.";
			text2 = "[fnt_pixel]Volte assim que estiver pronto para partir.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Muito bem! [c_red]Bonnie[/c] está segura. Ela está lá [c_red]fora[/c] agora, e definitivamente tem algo para te contar.";
			text2 = "[fnt_pixel]Volte assim que estiver pronto para partir.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Dobrze! [c_red]Bonnie[/c] jest bezpieczna. Teraz jest na [c_red]zewnątrz[/c] i na pewno ma ci coś do powiedzenia.";
			text2 = "[fnt_pixel]Wróć, jak tylko będziesz gotowy do wyjazdu.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]よし！[c_red]ボニ[/c]ーは安全です。彼女は今、[c_red]外にいて[/c]、間違いなくあなたに何かを伝えたいことがあります。";
			text2 = "[fnt_pixel]出発の準備ができ次第、すぐに戻ってきてください。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]In Ordnung! [c_red]Bonnie[/c] ist sicher. Sie ist gerade [c_red]draußen[/c] und sie hat definitiv etwas zu erzählen.";
			text2 = "[fnt_pixel]Komm zurück, sobald du bereit bist zu gehen.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Très bien! [c_red]Bonnie[/c] est en sécurité. Elle est [c_red]dehors[/c] en ce moment, et elle a certainement quelque chose à vous dire.";
			text2 = "[fnt_pixel]Revenez dès que vous serez prêt à partir.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Va bene! [c_red]Bonnie[/c] è al sicuro. È [c_red]fuori[/c] in questo momento, e ha sicuramente qualcosa da dirti.";
			text2 = "[fnt_pixel]Torna non appena sei pronto per partire.";
			break;
    }
}

/*
function scr_txt_vulcano_merch3(){
    switch(global.language){
        case 0:
            #region English
            text1 = "[fnt_pixel]Ready to go?";
            #endregion
            break;
    }
}