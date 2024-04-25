function scr_txt_snow_npc1_1(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel][c_aqua][shake]It's so cold[/shake][/c], it's a good thing the inventor made us these spears.";
            text2 = "[fnt_pixel]When they're in your hands, any cold is no problem...";
            #endregion         
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru][c_aqua][shake]Ну и холодина[/shake][/c], хорошо что изобретатель сделал нам эти копья.";
			text2 = "[fnt_pixel_ru]Когда они в руках - любой холод нипочем";
			break;
		case 2: //es
			text1 = "[fnt_pixel][c_aqua][shake]Hace tanto frío[/shake][/c], es bueno que el inventor nos haya hecho estas lanzas.";
			text2 = "[fnt_pixel]Cuando están en tus manos, ningún frío es un problema...";
			break;
		case 3: //cn
			text1 = "[fnt_pixel][c_aqua][shake]天气如此寒冷[/shake][/c]，发明家给我们做这些矛真是太好了。";
			text2 = "[fnt_pixel]当他们在你手中时，任何寒冷都不成问题...";
			break;
		case 4: //pt
			text1 = "[fnt_pixel][c_aqua][shake]Está tão frio[/shake][/c], ainda bem que o inventor nos fez essas lanças.";
			text2 = "[fnt_pixel]Quando estão em suas mãos, qualquer frio não é problema...";
			break;
		case 5: //br
			text1 = "[fnt_pixel][c_aqua][shake]Está tão frio[/shake][/c], ainda bem que o inventor nos fez estas lanças.";
			text2 = "[fnt_pixel]Quando estão em suas mãos, nenhum frio é um problema...";
			break;
		case 6: //pl
			text1 = "[fnt_pixel][c_aqua][shake]Tak zimno[/shake][/c], dobrze że wynalazca zrobił dla nas te włócznie.";
			text2 = "[fnt_pixel]Kiedy są w twoich rękach, żadne zimno nie stanowi problemu...";
			break;
		case 7: //jp
			text1 = "[fnt_pixel][c_aqua][shake]非常に寒い[/shake][/c]、発明家がこれらの槍を作ってくれたのは良いことです。";
			text2 = "[fnt_pixel]それらが手にあるとき、どんな寒さも問題ではありません...";
			break;
		case 8: //de
			text1 = "[fnt_pixel][c_aqua][shake]Es ist so kalt[/shake][/c], es ist gut, dass der Erfinder uns diese Speere gemacht hat. ";
			text2 = "[fnt_pixel]Wenn sie in deinen Händen sind, ist jede Kälte kein Problem...";
			break;
		case 9: //fr
			text1 = "[fnt_pixel][c_aqua][shake]Il fait si froid[/shake][/c], c'est une bonne chose que l'inventeur nous ait fait ces lances.";
			text2 = "[fnt_pixel]Quand elles sont dans tes mains, aucun froid n'est un problème...";
			break;
		case 10: //it
			text1 = "[fnt_pixel][c_aqua][shake]Fa così freddo[/shake][/c], meno male che l'inventore ci ha fatto queste lance.";
			text2 = "[fnt_pixel]Quando sono nelle tue mani, nessun freddo è un problema...";
			break;
    }
}

function scr_txt_snow_npc1_2(){
    switch(global.language){
        case 0: //en
            text1 = "[fnt_pixel]Have you seen this little island nearby? There's a very high mountain with slopes.";
            text2 = "[fnt_pixel]Well, the wall that the [c_red]three signs[/c] point to is fragile. There might be something interesting behind it.";
            text3 = "[fnt_pixel]Don't miss it, or you won't be able to climb back up!";
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Видел тут маленький островок неподалеку? Там есть очень высока гора со спусками.";
			text2 = "[fnt_pixel_ru]Так вот, стена на которую указывают [c_red]три указателя[/c] - хрупкая. Возможно за ней находится что-то интересное.";
			text3 = "[fnt_pixel_ru]Смотри не проморгай, а то назад залезть будет невозможно!";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¿Has visto esta pequeña isla cerca? Hay una montaña muy alta con pendientes.";
			text2 = "[fnt_pixel]Bueno, el muro al que apuntan los [c_red]tres carteles[/c] es frágil. Podría haber algo interesante detrás de él.";
			text3 = "[fnt_pixel]¡No te lo pierdas, o no podrás volver a subir!";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]你看到附近的这个小岛了吗？有一个非常高的山有斜坡。";
			text2 = "[fnt_pixel]好吧，那[c_red]三个标志[/c]指向的墙是脆弱的。它后面可能有一些有趣的东西。";
			text3 = "[fnt_pixel]不要错过它，否则你就无法再爬回去了！";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Você viu essa ilha pequena por perto? Lá tem uma montanha muito alta com encostas.";
			text2 = "[fnt_pixel]Bem, a parede que os [c_red]três sinais[/c] apontam é frágil. Pode haver algo interessante atrás dela.";
			text3 = "[fnt_pixel]Não perca, senão não conseguirá subir de volta!";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Você viu essa pequena ilha por perto? Há uma montanha muito alta com encostas.";
			text2 = "[fnt_pixel]Bem, a parede para a qual apontam as [c_red]três placas[/c] é frágil. Pode haver algo interessante atrás dela.";
			text3 = "[fnt_pixel]Não perca, ou você não será capaz de escalar de volta!";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Widziałeś tę małą wyspę obok? Tam jest bardzo wysoka góra ze stokami.";
			text2 = "[fnt_pixel]Cóż, ściana, do której wskazują [c_red]trzy znaki[/c], jest krucha. Może za nią coś interesującego.";
			text3 = "[fnt_pixel]Nie przegap tego, bo nie będziesz mógł wrócić na górę!";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]近くにあるこの小さな島を見たことがありますか？ 非常に高い山があり、斜面があります。";
			text2 = "[fnt_pixel]さて、[c_red]3つの標識が指し[/c]ている壁は壊れやすいです。 その後ろには何か興味深いものがあるかもしれません。";
			text3 = "[fnt_pixel]それを見逃さないでください、そうしないと再び登ることはできません！";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Hast du diese kleine Insel in der Nähe gesehen? Dort gibt es einen sehr hohen Berg mit Hängen. ";
			text2 = "[fnt_pixel]Nun, die Wand, auf die die [c_red]drei Schilder[/c] zeigen, ist brüchig. Dahinter könnte etwas Interessantes sein. ";
			text3 = "[fnt_pixel]Verpasse es nicht, sonst kannst du nicht mehr hochklettern!";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Tu as vu cette petite île à proximité? Il y a une montagne très haute avec des pentes.";
			text2 = "[fnt_pixel]Eh bien, le mur auquel pointent les [c_red]trois panneaux[/c] est fragile. Il pourrait y avoir quelque chose d'intéressant derrière.";
			text3 = "[fnt_pixel]Ne le manque pas, sinon tu ne pourras plus remonter!";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Hai visto quest'isola piccola nelle vicinanze? C'è una montagna molto alta con pendii.";
			text2 = "[fnt_pixel]Beh, il muro a cui puntano i [c_red]tre segni[/c] è fragile. Potrebbe esserci qualcosa di interessante dietro.";
			text3 = "[fnt_pixel]Non perdertelo, o non riuscirai a risalire!";
			break;
    }
}

function scr_txt_snow_npc1_3(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]Remember, the [c_red]three signs[/c] is on the high mountain of a small island nearby!"
            text2 = "[fnt_pixel]Don't blink or you won't be able to climb back up!"
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Запомни, [c_red]три указателя[/c] на высокой горе маленького острова неподалеку!";
			text2 = "[fnt_pixel_ru]Не проморгай, а то назад залезть будет невозможно!";
			break;
		case 2: //es
			text1 = "[fnt_pixel]Recuerda, los [c_red]tres carteles[/c] están en la montaña alta de una pequeña isla cercana.";
			text2 = "[fnt_pixel]No parpadees o no podrás volver a subir";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]记住，[c_red]三个标志[/c]是在附近的一个小岛的高山上。";
			text2 = "[fnt_pixel]不要眨眼，否则你将无法再爬上来。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Lembre-se, os [c_red]três sinais[/c] estão na montanha alta de uma pequena ilha próxima.";
			text2 = "[fnt_pixel]Não pisque ou você não conseguirá subir de volta";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Lembre-se, as [c_red]três placas[/c] estão na alta montanha de uma pequena ilha próxima.";
			text2 = "[fnt_pixel]Não pisque ou você não será capaz de escalar de volta";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Pamiętaj, [c_red]trzy znaki[/c] są na wysokiej górze małej wyspy nieopodal.";
			text2 = "[fnt_pixel]Nie mrugaj, bo nie będziesz mógł wrócić na górę!";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]近くの小さな島の高い山に[c_red]3つの標識[/c]があることを覚えておいてください。";
			text2 = "[fnt_pixel]瞬きしないでください、そうしないと再び登ることはできません";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Denk daran, die [c_red]drei Schilder[/c] sind auf dem hohen Berg einer kleinen Insel in der Nähe. ";
			text2 = "[fnt_pixel]Nicht blinzeln oder du kannst nicht mehr hochklettern.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Rappelez-vous, les [c_red]trois panneaux[/c] sont sur la haute montagne d'une petite île à proximité.";
			text2 = "[fnt_pixel]Ne clignez pas des yeux ou vous ne pourrez plus remonter.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Ricorda, i [c_red]tre segnali[/c] sono sulla alta montagna di una piccola isola nelle vicinanze.";
			text2 = "[fnt_pixel]Non sbattere le palpebre o non sarai in grado di risalire";
			break;
    }
}

function scr_txt_snow_npc1_4(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]Did you check that place out yet? Did you find the [c_green]green coin[/c]?";
            text2 = "[fnt_pixel]I put it there. I was hoping someone could get it out of there, because I couldn't get to it anymore...";
            text3 = "[fnt_pixel]Well, now that you've found it, it's yours.";
            text4 = "[fnt_pixel]Here's a [c_yellow]little present[/c] from me.";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Уже проверил то место? Нашел [c_green]зеленую монету[/c]?";
			text2 = "[fnt_pixel_ru]Это я ее туда положил. Надеялся что кто-нибудь сможет ее достать, потому что сам я туда больше не смог добраться...";
			text3 = "[fnt_pixel_ru]Что ж, раз ты ее нашел - теперь она твоя.";
			text4 = "[fnt_pixel_ru]Вот тебе [c_yellow]небольшой подарок[/c] от меня.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¿Ya revisaste ese lugar? ¿Encontraste la [c_green]moneda verde[/c]?";
			text2 = "[fnt_pixel]Yo lo puse allí. Esperaba que alguien pudiera sacarlo de allí, porque ya no podía llegar a él...";
			text3 = "[fnt_pixel]Bueno, ahora que lo has encontrado, es tuyo.";
			text4 = "[fnt_pixel]Aquí tienes un [c_yellow]pequeño regalo[/c] de mi parte.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]你检查过那个地方了吗？你找到了[c_green]绿色硬币吗[/c]？";
			text2 = "[fnt_pixel]我把它放在那里。我希望有人能把它从那里取出来，因为我再也到不了那里了...";
			text3 = "[fnt_pixel]好吧，既然你找到了，那就是你的了。";
			text4 = "[fnt_pixel]这是我给你的[c_yellow]一点小礼物[/c]。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Você já conferiu aquele lugar? Você encontrou a [c_green]moeda verde[/c]?";
			text2 = "[fnt_pixel]Eu a coloquei lá. Eu estava esperando que alguém pudesse tirá-la de lá, porque eu não conseguia mais chegar até ela...";
			text3 = "[fnt_pixel]Bem, agora que você a encontrou, ela é sua.";
			text4 = "[fnt_pixel]Aqui está um [c_yellow]pequeno presente[/c] meu.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Você já checou aquele lugar? Você encontrou a [c_green]moeda verde[/c]?";
			text2 = "[fnt_pixel]Eu a coloquei lá. Eu estava esperando que alguém pudesse tirá-la de lá, porque eu não conseguia mais chegar até ela...";
			text3 = "[fnt_pixel]Bem, agora que você a encontrou, é sua.";
			text4 = "[fnt_pixel]Aqui está um [c_yellow]pequeno presente[/c] meu.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Sprawdziłeś już to miejsce? Znalazłeś [c_green]zieloną monetę[/c]?";
			text2 = "[fnt_pixel]Ja ją tam zostawiłem. Miałem nadzieję, że ktoś będzie mógł ją stamtąd wyciągnąć, bo ja już nie mogłem do niej dotrzeć...";
			text3 = "[fnt_pixel]Cóż, skoro ją już znalazłeś, jest twoja.";
			text4 = "[fnt_pixel]Oto [c_yellow]mały prezent[/c] ode mnie.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]あなたはすでにその場所を調査しましたか？[c_green]緑のコインを[/c]見つけましたか？";
			text2 = "[fnt_pixel]私がそこにそれを置いた。私は誰かがそれを手に入れることができると期待していました、なぜなら私はもうそれに到達することができなかったからです...";
			text3 = "[fnt_pixel]さて、あなたがそれを見つけたので、それはあなたのものです。";
			text4 = "[fnt_pixel]ここに私からの[c_yellow]小さなプレゼントです[/c]。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Hast du dir diesen Ort schon angesehen? Hast du die [c_green]grüne Münze[/c] gefunden? ";
			text2 = "[fnt_pixel]Ich habe sie dort hingelegt. Ich hoffte, jemand könnte sie dort rausholen, weil ich nicht mehr hinkam... ";
			text3 = "[fnt_pixel]Nun, da du sie gefunden hast, gehört sie dir. ";
			text4 = "[fnt_pixel]Hier ist ein [c_yellow]kleines Geschenk[/c] von mir.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Tu as déjà vérifié cet endroit? As-tu trouvé la [c_green]pièce verte[/c]?";
			text2 = "[fnt_pixel]Je l'ai mise là. J'espérais que quelqu'un pourrait la sortir de là, parce que je ne pouvais plus l'atteindre...";
			text3 = "[fnt_pixel]Eh bien, maintenant que tu l'as trouvée, elle est à toi.";
			text4 = "[fnt_pixel]Voici un [c_yellow]petit cadeau[/c] de ma part.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Hai già esaminato quel posto? Hai trovato la [c_green]moneta verde[/c]?";
			text2 = "[fnt_pixel]L'ho messa lì. Speravo che qualcuno potesse tirarla fuori di lì, perché non riuscivo più ad arrivarci...";
			text3 = "[fnt_pixel]Beh, ora che l'hai trovata, è tua.";
			text4 = "[fnt_pixel]Ecco un [c_yellow]piccolo regalo[/c] da parte mia.";
			break;
    }
}

function scr_txt_snow_npc1_5(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]I wanted to tell you about my treasure on the mountain, but I see you've already found it.";
            text2 = "[fnt_pixel]Well, since you found my [c_green]green coin[/c], you can have it.";
            text3 = "[fnt_pixel]And here's a [c_yellow]little present[/c] from me.";
            #endregion
            break;
		case 1:	//rus
			text1 = "[fnt_pixel_ru]Хотел рассказать тебе про мой клад на горе, но я вижу что ты уже и сам его нашел.";
			text2 = "[fnt_pixel_ru]Что ж, раз так, то можешь оставить [c_green]зеленую монету[/c] себе.";
			text3 = "[fnt_pixel_ru]А вот тебе еще [c_yellow]небольшой подарок[/c] от меня.";
			break;
		case 2:	//es
			text1 = "[fnt_pixel]Quería contarte sobre mi tesoro en la montaña, pero veo que ya lo has encontrado.";
			text2 = "[fnt_pixel]Bueno, ya que encontraste mi [c_green]moneda verde[/c], puedes quedártela.";
			text3 = "[fnt_pixel]Y aquí tienes un [c_yellow]pequeño regalo[/c] de mi parte.";
			break;
		case 3:	//cn
			text1 = "[fnt_pixel]我想告诉你我在山上的宝藏，但我看到你已经找到了。";
			text2 = "[fnt_pixel]既然你找到了[c_green]我的绿色硬币[/c]，你就可以拿走了。";
			text3 = "[fnt_pixel]这是我给你的[c_yellow]一点小礼物[/c]。";
			break;
		case 4:	//pt
			text1 = "[fnt_pixel]Eu queria te contar sobre o meu tesouro na montanha, mas vejo que você já o encontrou.";
			text2 = "[fnt_pixel]Bem, já que você encontrou minha [c_green]moeda verde[/c], você pode ficar com ela.";
			text3 = "[fnt_pixel]E aqui está um [c_yellow]pequeno presente[/c] meu.";
			break;
		case 5:	//br
			text1 = "[fnt_pixel]Eu queria te contar sobre meu tesouro na montanha, mas vejo que você já o encontrou.";
			text2 = "[fnt_pixel]Bem, já que você encontrou minha [c_green]moeda verde[/c], você pode ficar com ela.";
			text3 = "[fnt_pixel]E aqui está um [c_yellow]pequeno presente[/c] meu.";
			break;
		case 6:	//pl
			text1 = "[fnt_pixel]Chciałem ci opowiedzieć o moim skarbie na górze, ale widzę, że już go znalazłeś.";
			text2 = "[fnt_pixel]Cóż, skoro znalazłeś moją [c_green]zieloną monetę[/c], możesz ją zatrzymać.";
			text3 = "[fnt_pixel]Oto [c_yellow]mały prezent[/c] ode mnie.";
			break;
		case 7:	//jp
			text1 = "[fnt_pixel]山の私の宝について語りたかったのですが、すでに見つけたようですね。";
			text2 = "[fnt_pixel]さて、[c_green]私の緑のコインを[/c]見つけたのであれば、それはあなたのものです。";
			text3 = "[fnt_pixel]そして、これが私からの[c_yellow]小さなプレゼントです[/c]。";
			break;
		case 8:	//de
			text1 = "[fnt_pixel]Ich wollte dir von meinem Schatz auf dem Berg erzählen, aber ich sehe, du hast ihn schon gefunden. ";
			text2 = "[fnt_pixel]Nun, da du meine [c_green]grüne Münze[/c] gefunden hast, kannst du sie behalten. ";
			text3 = "[fnt_pixel]Und hier ist ein [c_yellow]kleines Geschenk[/c] von mir.";
			break;
		case 9:	//fr
			text1 = "[fnt_pixel]Je voulais te parler de mon trésor sur la montagne, mais je vois que tu l'as déjà trouvé.";
			text2 = "[fnt_pixel]Eh bien, puisque tu as trouvé ma [c_green]pièce verte[/c], tu peux l'avoir.";
			text3 = "[fnt_pixel]Et voici un [c_yellow]petit cadeau[/c] de ma part.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Volevo parlarti del mio tesoro sulla montagna, ma vedo che l'hai già trovato.";
			text2 = "[fnt_pixel]Beh, visto che hai trovato la mia [c_green]moneta verde[/c], puoi tenerla.";
			text3 = "[fnt_pixel]E ecco un [c_yellow]piccolo regalo[/c] da parte mia.";
			break;
    }
}

function scr_txt_snow_npc1_6(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]I won't hide my finds so high anymore.";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Больше не буду прятать свои находки так высоко.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]Ya no ocultaré mis hallazgos tan alto.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]我不会再把我的发现隐藏得那么高了。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Eu não vou mais esconder minhas descobertas tão alto.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Não vou mais esconder minhas descobertas tão alto.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Już więcej nie będę ukrywać moich znalezisk tak wysoko.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]もうそんなに高い位置に隠すことはありません。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Ich werde meine Funde nicht mehr so hoch verstecken.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Je ne cacherai plus mes trouvailles si haut.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Non nasconderò più i miei ritrovamenti così in alto.";
			break;
    }
}

function scr_txt_snow_npc1_7(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]Ah, time to get back to my post. The snowstorm's gone."
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Эх, пора возвращаться на свой пост. Снегопад то прошел.";
			break;
		case 2: //es
			text1 = "[fnt_pixel_ru]Ah, es hora de volver a mi puesto. La tormenta de nieve se ha ido.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]啊，该回到我的岗位了。雪暴已经过去了。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Ah, hora de voltar para o meu posto. A tempestade de neve se foi.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Ah, hora de voltar ao meu posto. A nevasca se foi.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Ah, czas wrócić na moje stanowisko. Zamieć minęła.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]ああ、私のポストに戻る時間です。吹雪が去りました。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Ah, Zeit, zurück zu meinem Posten zu gehen. Der Schneesturm ist vorbei.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Ah, il est temps de retourner à mon poste. La tempête de neige est partie.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Ah, è ora di tornare al mio posto. La tormenta di neve è finita.";
			break;
    }
}


function scr_txt_snow_npc2_1(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]I just love making snowmen. Sometimes I even put little [c_red]crystals[/c] inside them.";        
            #endregion
            break;
		case 1:	//rus
			text1 = "[fnt_pixel_ru]Я просто обожаю лепить снеговиков. Иногда даже засовываю туда маленькие [c_red]кристаллы[/c].";
			break;
		case 2:	//es
			text1 = "[fnt_pixel]Me encanta hacer muñecos de nieve. A veces incluso pongo pequeños [c_red]cristales[/c] dentro de ellos.";
			break;
		case 3:	//cn
			text1 = "[fnt_pixel]我就是喜欢堆雪人。有时候我甚至会在它们里面放一[c_red]些小水晶[/c]。";
			break;
		case 4:	//pt
			text1 = "[fnt_pixel]Eu simplesmente adoro fazer bonecos de neve. Às vezes eu até coloco pequenos [c_red]cristais[/c] dentro deles.";
			break;
		case 5:	//br
			text1 = "[fnt_pixel]Eu simplesmente adoro fazer bonecos de neve. Às vezes até coloco pequenos [c_red]cristais[/c] dentro deles.";
			break;
		case 6:	//pl
			text1 = "[fnt_pixel]Uwielbiam robić bałwany. Czasami nawet wkładam do nich małe [c_red]kryształki[/c].";
			break;
		case 7:	//jp
			text1 = "[fnt_pixel]私は雪だるまを作るのが大好きです。時々、それらの中に[c_red]小さなクリスタルを[/c]入れることさえあります。";
			break;
		case 8:	//de
			text1 = "[fnt_pixel]Ich liebe es einfach, Schneemänner zu machen. Manchmal stecke ich sogar kleine [c_red]Kristalle[/c] hinein.";
			break;
		case 9:	//fr
			text1 = "[fnt_pixel]J'adore faire des bonhommes de neige. Parfois, je mets même de petits [c_red]cristaux[/c] à l'intérieur.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Adoro fare pupazzi di neve. A volte metto anche piccoli [c_red]cristalli[/c] dentro di loro.";
			break;
    }
}

function scr_txt_snow_npc2_2(){
    switch(global.language){
        case 0:
            text1 = "[fnt_pixel]Well...I'm gonna have to make a snowman all over again. Good thing I like to do that.";
            break;
		case 1: //ru
			text1 = "[fnt_pixel_ru]Ну вот...придется лепить заново. Хорошо что я люблю это делать...";
			break;
		case 2: //es
			text1 = "[fnt_pixel]Bueno... voy a tener que hacer un muñeco de nieve de nuevo. Menos mal que me gusta hacer eso.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]好吧...我得再次堆一个雪人。好在我喜欢做这个。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Bem...Vou ter que fazer um boneco de neve de novo. Ainda bem que gosto de fazer isso.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Bem... eu vou ter que fazer um boneco de neve tudo de novo. Ainda bem que gosto de fazer isso.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Cóż... Będę musiał znowu zrobić bałwana. Dobrze, że to lubię.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]まあ...私はまた雪だるまを作り直さなければなりません。それをやるのが好きなので良いことです。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Nun... Ich werde wohl einen Schneemann ganz von vorn machen müssen. Gut, dass ich das gerne mache.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Eh bien... je vais devoir refaire un bonhomme de neige. Heureusement que j'aime faire ça.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Bene... dovrò rifare un pupazzo di neve da capo. Meno male che mi piace farlo.";
			break;
    }
}