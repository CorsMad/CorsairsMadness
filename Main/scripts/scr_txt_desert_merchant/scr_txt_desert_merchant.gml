// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_txt_desert_merch1(){
    switch(global.language){
        case 0:
            #region eng
            text1 = choose("[fnt_pixel]It's a good thing I closed all the holes in my store. I can't take the storms anymore!",
						   "[fnt_pixel]I hear there's some old buildings right underground. I wonder who built them?");		
            #endregion
            break;
		case 1: //ru
			text1 = choose("[fnt_pixel_ru]Как хорошо, что я успел закрыть все дыры в моем магазинчике. Бури мне теперь нипочем!",
						   "[fnt_pixel_ru]Я слышал тут есть старые постройки прямо под землей. Интересно кто их возводил?");
			break;
		case 2: //es
			text1 = choose("[fnt_pixel]Es bueno que haya cerrado todos los agujeros en mi tienda. ¡Ya no puedo soportar más las tormentas!",
						   "[fnt_pixel]He oído que hay algunos edificios antiguos justo debajo de la tierra. ¿Me pregunto quién los construyó?");
			break;
		case 3: //cn
			text1 = choose("[fnt_pixel]还好我把商店里的所有洞都封上了。我再也受不了暴风雨了！",
						   "[fnt_pixel]我听说地下有一些古老的建筑。我想知道是谁建造的？");
			break;
		case 4: //pt
			text1 = choose("[fnt_pixel]Ainda bem que fechei todos os buracos na minha loja. Não aguento mais as tempestades!",
						   "[fnt_pixel]Ouvi dizer que tem algumas construções antigas bem subterrâneas. Quem será que as construiu?");
			break;
		case 5: //br
			text1 = choose("[fnt_pixel]Ainda bem que fechei todos os buracos na minha loja. Não aguento mais as tempestades!",
						   "[fnt_pixel]Ouvi dizer que há alguns edifícios antigos bem debaixo do solo. Eu me pergunto quem os construiu?");
			break;
		case 6: //pl
			text1 = choose("[fnt_pixel]Dobrze, że zamknąłem wszystkie dziury w moim sklepie. Nie mogę znieść tych burz!",
						   "[fnt_pixel]Słyszałem, że tuż pod ziemią są jakieś stare budynki. Ciekawe, kto je zbudował?");
			break;
		case 7: //jp
			text1 = choose("[fnt_pixel]私の店のすべての穴を閉じたのは良いことでした。 もう嵐には耐えられません！",
						   "[fnt_pixel]地下に古い建物があると聞いています。 誰がそれを建てたのかしら？");
			break;
		case 8: //de
			text1 = choose("[fnt_pixel]Es ist gut, dass ich alle Löcher in meinem Laden geschlossen habe. Ich kann die Stürme nicht mehr ertragen! ",
						   "[fnt_pixel]Ich habe gehört, es gibt einige alte Gebäude direkt unter der Erde. Ich frage mich, wer sie gebaut hat?");
			break;
		case 9: //fr
			text1 = choose("[fnt_pixel]C'est une bonne chose que j'ai bouché tous les trous dans mon magasin. Je ne peux plus supporter les tempêtes!",
						   "[fnt_pixel]J'ai entendu dire qu'il y a de vieux bâtiments juste sous terre. Je me demande qui les a construits?");
			break;
		case 10: //it
			text1 = choose("[fnt_pixel]È una buona cosa che ho chiuso tutti i buchi nel mio negozio. Non ne posso più delle tempeste!",
						   "[fnt_pixel]Ho sentito dire che ci sono alcuni vecchi edifici proprio sotto terra. Chissà chi li ha costruiti?");
			break;
    }
}
function scr_txt_desert_merch4(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel][wave]Way to go[/wave], buddy. The effects of another mask have worn off.";
            text2 = "[fnt_pixel]I can't imagine how hard it was to do that, but you did it, good job!";
            text3 = "[fnt_pixel]I wonder how old [c_red]Pew[/c] is doing. I hope he's okay now...";
            text4 = "[fnt_pixel]I've been talking too much... [wave]ha ha ha ha ha[/wave]. Let me know as soon as you want to go.";
            #endregion
            break;
		case 1:
			#region ru
			text1 = "[fnt_pixel_ru][wave]Так держать[/wave], приятель. Действие еще одной маски ослабло.";
			text2 = "[fnt_pixel_ru]Даже представить не могу как тяжело было это сделать, но ты справился, отличная работа!";
			text3 = "[fnt_pixel_ru]Интересно, как там старина [c_red]Пью[/c]. Надеюсь теперь то он в порядке...";
			text4 = "[fnt_pixel_ru]Что то я заболтался... [wave]ха ха ха[/wave]. Дай знать как только захочешь отплыть.";
			#endregion
			break;
		case 2:
			#region es
			text1 = "[fnt_pixel][wave]Bien hecho[/wave], amigo. Los efectos de otra máscara se han desvanecido.";
			text2 = "[fnt_pixel]No puedo imaginar lo difícil que fue hacer eso, pero lo hiciste, ¡buen trabajo!";
			text3 = "[fnt_pixel]Me pregunto cómo estará el viejo [c_red]Pew[/c]. Espero que esté bien ahora...";
			text4 = "[fnt_pixel]He estado hablando demasiado... [wave]ja ja ja ja ja[/wave]. Avísame tan pronto como quieras ir.";
			#endregion
			break;
		case 3:
			#region cn
			text1 = "[fnt_pixel][wave]干得好[/wave]，伙计。另一个面具的影响已经消退。";
			text2 = "[fnt_pixel]我无法想象做到那一点有多难，但是你做到了，干得好！";
			text3 = "[fnt_pixel]我在想[c_red]Pew[/c]过得怎么样。我希望他现在没事......";
			text4 = "[fnt_pixel]我聊得太多了...[wave]哈哈哈哈哈[/wave]。你想去的时候尽快告诉我。";
			#endregion
			break;
		case 4:
			#region pt
			text1 = "[fnt_pixel][wave]Parabéns[/wave], amigo. Os efeitos de outra máscara desapareceram.";
			text2 = "[fnt_pixel]Não consigo imaginar o quão difícil foi fazer isso, mas você conseguiu, bom trabalho!";
			text3 = "[fnt_pixel]Eu me pergunto como o velho [c_red]Pew[/c] está. Espero que ele esteja bem agora...";
			text4 = "[fnt_pixel]Eu tenho falado demais... [wave]ha ha ha ha ha[/wave]. Avise-me assim que quiser ir.";
			#endregion
			break;
		case 5:
			#region br
			text1 = "[fnt_pixel][wave]Muito bem[/wave], amigo. Os efeitos de outra máscara desgastaram.";
			text2 = "[fnt_pixel]Não consigo imaginar o quão difícil foi fazer isso, mas você conseguiu, bom trabalho!";
			text3 = "[fnt_pixel]Eu me pergunto como o velho [c_red]Pew[/c] está. Espero que ele esteja bem agora...";
			text4 = "[fnt_pixel]Eu tenho falado demais... [wave]ha ha ha ha ha[/wave]. Me avise assim que quiser ir.";
			#endregion
			break;
		case 6:
			#region pl
			text1 = "[fnt_pixel][wave]Brawo[/wave], kolego. Efekty kolejnej maski zanikły.";
			text2 = "[fnt_pixel]Nie mogę sobie wyobrazić, jak ciężko było to zrobić, ale ci się udało, dobra robota!";
			text3 = "[fnt_pixel]Zastanawiam się, jak się ma stary [c_red]Pew[/c]. Mam nadzieję, że teraz jest mu dobrze...";
			text4 = "[fnt_pixel]Za dużo mówię... [wave]ha ha ha ha ha[/wave]. Daj mi znać, jak tylko będziesz chciał jechać.";
			#endregion
			break;
		case 7:
			#region jp
			text1 = "[fnt_pixel][wave]よくやった[/wave]、相棒。 別のマスクの効果が消えました。";
			text2 = "[fnt_pixel]それをやるのがいかに難しかったか想像できませんが、あなたはやり遂げました、良い仕事をしました！";
			text3 = "[fnt_pixel][c_red]ペウは元気にしてるかなあ[/c]。 彼が今は大丈夫だといいな...";
			text4 = "[fnt_pixel]話しすぎました... [wave]ははははは[/wave]。 行きたいと思ったらすぐに教えてください。";
			#endregion
			break;
		case 8:
			#region de
			text1 = "[fnt_pixel][wave]Gut gemacht[/wave], Kumpel. Die Auswirkungen einer anderen Maske sind verschwunden.";
			text2 = "[fnt_pixel]Ich kann mir nicht vorstellen, wie schwer das war, aber du hast es geschafft, gute Arbeit! ";
			text3 = "[fnt_pixel]Ich frage mich, wie es dem alten [c_red]Pew[/c] geht. Ich hoffe, es geht ihm jetzt gut... ";
			text4 = "[fnt_pixel]Ich habe zu viel geredet... [wave]ha ha ha ha ha[/wave]. Lass es mich wissen, sobald du gehen willst.";
			#endregion
			break;
		case 9:
			#region fr
			text1 = "[fnt_pixel][wave]Bravo[/wave], mon pote. Les effets d'un autre masque se sont estompés.";
			text2 = "[fnt_pixel]Je n'arrive pas à imaginer à quel point c'était difficile à faire, mais tu l'as fait, bon travail!";
			text3 = "[fnt_pixel]Je me demande comment va le vieux [c_red]Pew[/c]. J'espère qu'il va bien maintenant...";
			text4 = "[fnt_pixel]J'ai trop parlé... [wave]ha ha ha ha ha[/wave]. Fais-moi savoir dès que tu veux partir.";
			#endregion
			break;
		case 10:
			#region it
			text1 = "[fnt_pixel][wave]Bene[/wave], amico. Gli effetti di un'altra maschera sono svaniti.";
			text2 = "[fnt_pixel]Non riesco a immaginare quanto sia stato difficile fare ciò, ma tu l'hai fatto, buon lavoro!";
			text3 = "[fnt_pixel]Mi chiedo come stia il vecchio [c_red]Pew[/c]. Spero che ora stia bene...";
			text4 = "[fnt_pixel]Ho parlato troppo... [wave]ha ha ha ha ha[/wave]. Fammi sapere appena vuoi andare.";
			#endregion
			break;
    }
}
function scr_txt_desert_merch5(){
    switch(global.language){
        case 0:
            #region Eng
            text1 = "[fnt_pixel]Ready to go?";
            #endregion
            break;
		case 1:
			#region ru
			text1 = "[fnt_pixel_ru]готов отплыть?";
			#endregion
			break;
		case 2:
			#region sp
			text1 = "[fnt_pixel]¿Listo para irte?";
			#endregion
			break;
		case 3:
			#region cn
			text1 = "[fnt_pixel]准备好走了吗？";
			#endregion
			break;
		case 4:
			#region pt
			text1 = "[fnt_pixel]Pronto para ir?";
			#endregion
			break;
		case 5:
			#region br
			text1 = "[fnt_pixel]Pronto para ir?";
			#endregion
			break;
		case 6:
			#region pl
			text1 = "[fnt_pixel]Gotowy do drogi?";
			#endregion
			break;
		case 7:
			#region jp
			text1 = "[fnt_pixel]出発の準備はできていますか？";
			#endregion
			break;
		case 8:
			#region de
			text1 = "[fnt_pixel]Bereit zu gehen?";
			#endregion
			break;
		case 9:
			#region fr
			text1 = "[fnt_pixel]Prêt à partir ?";
			#endregion
			break;
		case 10:
			#region it
			text1 = "[fnt_pixel]Pronto per andare?";
			#endregion
			break;
    }
}
function scr_txt_desert_merch6(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]You found all the coins! Good job. Now [c_red]Pew[/c] is saved!";
            text2 = "[fnt_pixel]If you want to talk to him, you can find him [c_red]outside near the store[/c].";
            text3 = "[fnt_pixel]Once you talk to him, come back to me.";
            #endregion
            break;
		case 1:
			#region ru
			text1 = "[fnt_pixel_ru]Ты нашел все монеты! Отличная работа. Теперь [c_red]Пью[/c] спасен!";
			text2 = "[fnt_pixel_ru]Если захочешь поболтать с ним то сможешь найти его [c_red]снаружи неподалеку от магазина[/c].";
			text3 = "[fnt_pixel_ru]Как только поговоришь с ним - возвращайся ко мне.";
			#endregion
			break;
		case 2:
			#region es
			text1 = "[fnt_pixel]¡Encontraste todas las monedas! Buen trabajo. ¡Ahora [c_red]Pew[/c] está a salvo!";
			text2 = "[fnt_pixel]Si quieres hablar con él, puedes encontrarlo [c_red]afuera cerca de la tienda[/c].";
			text3 = "[fnt_pixel]Una vez que hables con él, vuelve a mí.";
			#endregion
			break;
		case 3:
			#region cn
			text1 = "[fnt_pixel]你找到了所有的硬币！干得好。现在[c_red]Pew[/c]被救了！";
			text2 = "[fnt_pixel]如果你想和他谈话，你可以在商店[c_red]附近的外面找到他[/c]。";
			text3 = "[fnt_pixel]和他谈完之后，回来找我。";
			#endregion
			break;
		case 4:
			#region pt
			text1 = "[fnt_pixel]Você encontrou todas as moedas! Bom trabalho. Agora [c_red]Pew[/c] está salvo!";
			text2 = "[fnt_pixel]Se você quiser falar com ele, pode encontrá-lo lá fora, [c_red]perto da loja[/c].";
			text3 = "[fnt_pixel]Depois de falar com ele, volte para mim.";
			#endregion
			break;
		case 5:
			#region br
			text1 = "[fnt_pixel]Você encontrou todas as moedas! Bom trabalho. Agora [c_red]Pew[/c] está salvo!";
			text2 = "[fnt_pixel]Se quiser falar com ele, [c_red]pode encontrá-lo lá fora perto da loja[/c].";
			text3 = "[fnt_pixel]Assim que falar com ele, volte para mim.";
			#endregion
			break;
		case 6:
			#region pl
			text1 = "[fnt_pixel]Znalazłeś wszystkie monety! Dobra robota. Teraz [c_red]Pew[/c] jest uratowany!";
			text2 = "[fnt_pixel]Jeśli chcesz z nim porozmawiać, znajdziesz go na zewnątrz, [c_red]niedaleko sklepu[/c].";
			text3 = "[fnt_pixel]Jak już z nim porozmawiasz, wróć do mnie.";
			#endregion
			break;
		case 7:
			#region jp
			text1 = "[fnt_pixel]すべてのコインを見つけましたね！ よくやりました。[c_red]これでペウを救えます[/c]！";
			text2 = "[fnt_pixel]彼と話したいなら、[c_red]店の近くの外で彼を見つけることができます[/c]。";
			text3 = "[fnt_pixel]彼と話したら、私のところに戻ってきてください。";
			#endregion
			break;
		case 8:
			#region de
			text1 = "[fnt_pixel]Du hast alle Münzen gefunden! Gute Arbeit. Jetzt ist [c_red]Pew[/c] gerettet! ";
			text2 = "[fnt_pixel]Wenn du mit ihm sprechen willst, [c_red]kannst du ihn draußen in der Nähe des Ladens finden[/c]. ";
			text3 = "[fnt_pixel]Wenn du mit ihm gesprochen hast, komm zu mir zurück.";
			#endregion
			break;
		case 9:
			#region fr
			text1 = "[fnt_pixel]Tu as trouvé toutes les pièces ! Bon travail. Maintenant [c_red]Pew[/c] est sauvé!";
			text2 = "[fnt_pixel]Si tu veux lui parler, [c_red]tu peux le trouver dehors près du magasin[/c].";
			text3 = "[fnt_pixel]Une fois que tu lui as parlé, reviens me voir.";
			#endregion
			break;
		case 10:
			#region it
			text1 = "[fnt_pixel]Hai trovato tutte le monete! Buon lavoro. Ora [c_red]Pew[/c] è salvo!";
			text2 = "[fnt_pixel]Se vuoi parlare con lui, [c_red]puoi trovarlo fuori vicino al negozio[/c].";
			text3 = "[fnt_pixel]Una volta che gli hai parlato, torna da me.";
			#endregion
			break;
    }
}