function scr_txt_shadow_npc1_1(){
    switch(global.language){
        case 0:
            #region English
            text1 = choose("[fnt_pixel]Did you see all those undead outside? How come there's so many of them?",
						   "[fnt_pixel]Good thing the inventor made these undead amulets for us.");
            #endregion
			break;
		case 1: //rus
			text1 = choose("[fnt_pixel_ru]Видел толпы нежити снаружи? Откуда их столько?",
						   "[fnt_pixel_ru]Хорошо, что изобретатель сделал для нас эти амулеты, оберегающие от нежити.");
			break;
		case 2: //es
			text1 = choose("[fnt_pixel]¿Viste a todos esos no muertos afuera? ¿Cómo es que hay tantos?",
						   "[fnt_pixel]Menos mal que el inventor nos hizo estos amuletos de no muertos.");
			break;
		case 3: //cn
			text1 = choose("[fnt_pixel]你看到外面那些不死者了吗？怎么会有这么多他们？",
						   "[fnt_pixel]幸好发明家为我们制作了这些抵御不死者的护符。");
			break;
		case 4: //pt
			text1 = choose("[fnt_pixel]Você viu todos aqueles mortos-vivos lá fora? Como tem tantos deles?",
						   "[fnt_pixel]Ainda bem que o inventor fez esses amuletos de morto-vivo para nós.");
			break;
		case 5: //br
			text1 = choose("[fnt_pixel]Você viu todos aqueles mortos-vivos lá fora? Como tem tantos deles?",
						   "[fnt_pixel]Ainda bem que o inventor fez esses amuletos de mortos-vivos para nós.");
			break;
		case 6: //pl
			text1 = choose("[fnt_pixel]Widziałeś tych wszystkich nieumarłych na zewnątrz? Skąd ich tak dużo?",
						   "[fnt_pixel]Dobrze, że wynalazca zrobił dla nas te amulety przeciwko nieumarłym.");
			break;
		case 7: //jp
			text1 = choose("[fnt_pixel]外のすべてのアンデッドを見ましたか？なぜそんなにたくさんの彼らがいるのですか？",
						   "[fnt_pixel]発明家が私たちのためにこれらのアンデッドの護符を作ってくれてよかったです。");
			break;
		case 8: //de
			text1 = choose("[fnt_pixel]Hast du all diese Untoten draußen gesehen? Wie kommt es, dass es so viele von ihnen gibt?",
						   "[fnt_pixel]Gut, dass der Erfinder diese Untoten-Amulette für uns gemacht hat.");
			break;
		case 9: //fr
			text1 = choose("[fnt_pixel]Avez-vous vu tous ces morts-vivants dehors? Pourquoi y en a-t-il autant?",
						   "[fnt_pixel]Heureusement que l'inventeur a fait ces amulettes anti-morts-vivants pour nous.");
			break;
		case 10: //it
			text1 = choose("[fnt_pixel]Hai visto tutti quegli non morti fuori? Come mai ce ne sono così tanti?",
						   "[fnt_pixel]Menomale che l'inventore ha fatto per noi questi amuleti anti non morti.");
			break;
    }
}

function scr_txt_shadow_npc1_2(){
    switch(global.language){
        case 0:
            #region English
            text1 = "[fnt_pixel]Maybe you've noticed that we have some... how shall I put it? [c_red]music mushrooms[/c]?";
            text2 = "[fnt_pixel]Legend has it that there are special [c_red]mushrooms[/c] in a cave that hold a secret.";
            text3 = "[fnt_pixel]They are no different from the others, but if you make them all [c_red]dance[/c], a treasure will appear.";
            text4 = "[fnt_pixel]As far as I remember there's also a [c_red]chest behind the bars[/c].";
            #endregion
			break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Может быть ты заметил что у нас тут растут... как бы так сказать... [c_red]музыкальные грибы[/c]?";
			text2 = "[fnt_pixel_ru]Легенда гласит, что в одной пещере растут особые [c_red]грибы[/c], которые скрывают секрет. ";
			text3 = "[fnt_pixel_ru]Они не отличаются от других, но если заставить их все [c_red]танцевать[/c], то появится сокровище.";
			text4 = "[fnt_pixel_ru]Насколько я помню там еще есть [c_red]сундук за решеткой[/c].";
			break;
		case 2: //es
			text1 = "[fnt_pixel]Quizá hayas notado que tenemos... [c_red]hongos musicales[/c]?";
			text2 = "[fnt_pixel]La leyenda cuenta que en una cueva hay unos [c_red]hongos[/c] especiales que guardan un secreto.";
			text3 = "[fnt_pixel]No son diferentes a los demás, pero si haces que todos [c_red]bailen[/c], aparecerá un tesoro.";
			text4 = "[fnt_pixel]Hasta donde recuerdo, también hay un [c_red]cofre detrás de las barras[/c].";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]也许你已经注意到我们有一些...[c_red]音乐蘑菇[/c]？";
			text2 = "[fnt_pixel]传说在一个洞穴中有一[c_red]些秘密的蘑菇[/c]。";
			text3 = "[fnt_pixel]它们和其他的差别不大，[c_red]但是如果你让它们全部跳起舞[/c]，就会出现一个宝藏。";
			text4 = "[fnt_pixel]我记得也有一[c_red]个箱子在铁条后面[/c]。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Talvez você tenha notado que temos alguns...[c_red]cogumelos musicais[/c]?";
			text2 = "[fnt_pixel]A lenda diz que há [c_red]cogumelos[/c] especiais em uma caverna que guardam um segredo.";
			text3 = "[fnt_pixel]Eles não são diferentes dos outros, mas se você fizer todos eles [c_red]dançarem[/c], um tesouro aparecerá.";
			text4 = "[fnt_pixel]Pelo que me lembro, também há um [c_red]peito atrás das barras[/c].";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Talvez você tenha notado que temos alguns... [c_red]cogumelos musicais[/c]?";
			text2 = "[fnt_pixel]A lenda diz que há [c_red]cogumelos[/c] especiais em uma caverna que guardam um segredo.";
			text3 = "[fnt_pixel]Eles não são diferentes dos outros, mas se você fizer todos eles [c_red]dançarem[/c], um tesouro vai aparecer.";
			text4 = "[fnt_pixel]Até onde eu me lembro, também há um [c_red]baú atrás das grades[/c].";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Może zauważyłeś, że mamy tu pewne... [c_red]muzyczne grzyby[/c]?";
			text2 = "[fnt_pixel]Legenda głosi, że w jaskini są specjalne [c_red]grzyby[/c], które kryją sekret.";
			text3 = "[fnt_pixel]Niczym nie różnią się od innych, ale jeśli sprawisz, że wszystkie [c_red]zatańczą[/c], pojawi się skarb.";
			text4 = "[fnt_pixel]O ile dobrze pamiętam, [c_red]za kratami jest też skrzynia[/c].";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]私たちがいくつか...[c_red]音楽的なキノコを[/c]持っていることに気づいたかもしれません？";
			text2 = "[fnt_pixel]伝説によると、洞窟には秘密を[c_red]持つ特別なキノコ[/c]があるとされています。";
			text3 = "[fnt_pixel]それらは他のものとは違いありませんが、[c_red]それらすべてを踊[/c]らせると、宝物が現れます。";
			text4 = "[fnt_pixel]私の記憶では、[c_red]鉄格子の後ろにもチェストがあるようです[/c]。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Vielleicht hast du bemerkt, dass wir einige...[c_red]musikalische Pilze haben[/c]?";
			text2 = "[fnt_pixel]Die Legende besagt, dass es in einer Höhle besondere [c_red]Pilze[/c] gibt, die ein Geheimnis bergen.";
			text3 = "[fnt_pixel]Sie unterscheiden sich nicht von den anderen, aber wenn du sie alle [c_red]tanzen[/c] lässt, wird ein Schatz erscheinen.";
			text4 = "[fnt_pixel]Soweit ich mich erinnere, gibt es auch eine [c_red]Truhe hinter den Gittern[/c].";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Peut-être avez-vous remarqué que nous avons certains... [c_red]champignons[/c] musicaux?";
			text2 = "[fnt_pixel]La légende raconte qu'il y a des [c_red]champignons[/c] spéciaux dans une grotte qui détiennent un secret.";
			text3 = "[fnt_pixel]Ils ne sont pas différents des autres, mais si vous les faites tous [c_red]danser[/c], un trésor apparaîtra.";
			text4 = "[fnt_pixel]Si je me souviens bien, il y a aussi un [c_red]coffre derrière les barreaux[/c].";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Forse hai notato che abbiamo dei... [c_red]funghi musicali[/c]?";
			text2 = "[fnt_pixel]Si dice in una leggenda che ci siano dei [c_red]funghi[/c] speciali in una grotta che nascondono un segreto.";
			text3 = "[fnt_pixel]Non sono diversi dagli altri, ma se li fai [c_red]ballare[/c] tutti, apparirà un tesoro.";
			text4 = "[fnt_pixel]Per quanto mi ricordo c'è anche un [c_red]baule dietro le sbarre[/c].";
			break;
    }
}

function scr_txt_shadow_npc1_3(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]The [c_red]Special mushrooms[/c] are in one of the caves. Try to make them all [c_red]dance[/c] and the treasure will appear.";
            text2 = "[fnt_pixel]As I recall, there's also a [c_red]chest behind the bars[/c].";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru][c_red]Особые грибы[/c] находятся в одной из пещер. Попробуй заставить их все [c_red]танцевать[/c] и появится сокровище.";
			text2 = "[fnt_pixel_ru]Насколько я помню там еще есть [c_red]сундук за решеткой[/c].";
			break;
		case 2: //es
			text1 = "[fnt_pixel]Los [c_red]hongos especiales[/c] están en una de las cuevas. Trata de hacer que todos [c_red]bailen[/c] y aparecerá el tesoro.";
			text2 = "[fnt_pixel]Según recuerdo, también hay un [c_red]cofre detrás de las barras[/c].";
			break;
		case 3: //cn
			text1 = "[fnt_pixel][c_red]特殊的蘑菇[/c]在洞穴中的一个。[c_red]试着让它们全都舞动起来[/c]，宝藏就会出现。";
			text2 = "[fnt_pixel]据我记忆，[c_red]铁条后面也有一个箱子[/c]。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Os [c_red]cogumelos especiais[/c] estão em uma das cavernas. Tente fazer todos eles [c_red]dançarem[/c] e o tesouro aparecerá.";
			text2 = "[fnt_pixel]Pelo que me lembro, também há um [c_red]peito atrás das grades[/c].";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Os [c_red]cogumelos especiais[/c] estão em uma das cavernas. Tente fazer todos eles [c_red]dançarem[/c] e o tesouro aparecerá.";
			text2 = "[fnt_pixel]Até onde me lembro, também há um [c_red]baú atrás das grades[/c].";
			break;
		case 6: //pl
			text1 = "[fnt_pixel][c_red]Specjalne grzyby[/c] znajdują się w jednej z jaskiń. Spróbuj sprawić, że wszystkie [c_red]zatańczą[/c], a skarb się pojawi.";
			text2 = "[fnt_pixel]O ile dobrze pamiętam, za [c_red]kratami jest też skrzynia[/c].";
			break;
		case 7: //jp
			text1 = "[fnt_pixel][c_red]特別なキノコ[/c]は洞窟の一つにあります。[c_red]それらすべてを踊らせてみて[/c]、宝物が現れるでしょう。";
			text2 = "[fnt_pixel]私の記憶では、[c_red]鉄格子の後ろにもチェストがあります[/c]。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Die [c_red]besonderen Pilze[/c] sind in einer der Höhlen. Versuche, sie alle [c_red]tanzen[/c] zu lassen und der Schatz wird erscheinen.";
			text2 = "[fnt_pixel]Soweit ich mich erinnere, gibt es auch eine [c_red]Truhe hinter den Gittern[/c].";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Les [c_red]champignons spéciaux[/c] sont dans l'une des grottes. Essayez de les faire tous [c_red]danser[/c] et le trésor apparaîtra.";
			text2 = "[fnt_pixel]Si je me souviens bien, il y a aussi un [c_red]coffre derrière les barreaux[/c].";
			break;
		case 10: //it
			text1 = "[fnt_pixel]I [c_red]funghi speciali[/c] si trovano in una delle grotte. Prova a farli [c_red]ballare[/c] tutti e il tesoro apparirà.";
			text2 = "[fnt_pixel]Per quanto mi ricordo c'è anche un [c_red]baule dietro le sbarre[/c].";
			break;
    }
}

function scr_txt_shadow_npc1_4(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]That's great! You found a chest in there? I thought there would be several chests...";
            text2 = "[fnt_pixel]Anyway, good job!";
            text3 = "[fnt_pixel]Take a [c_yellow]little present[/c] from me.";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Отлично! Ты нашел там сундук? А я думал что там будет несколько сундуков...";
			text2 = "[fnt_pixel_ru]В любом случае отличная работа!";
			text3 = "[fnt_pixel_ru]Возьми от меня [c_yellow]небольшой подарок[/c].";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¡Eso es genial! ¿Encontraste un cofre allí? Pensé que habría varios cofres...";
			text2 = "[fnt_pixel]De todos modos, ¡buen trabajo!";
			text3 = "[fnt_pixel]Toma un [c_yellow]pequeño regalo[/c] de mi parte.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]太棒了！你在那里找到一个箱子？我以为会有好几个箱子...";
			text2 = "[fnt_pixel]不管怎样，做得好！";
			text3 = "[fnt_pixel]接受我给你的[c_yellow]一点小礼物[/c]。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Que ótimo! Você encontrou um peito lá? Pensei que haveria vários peitos...";
			text2 = "[fnt_pixel]De qualquer forma, bom trabalho!";
			text3 = "[fnt_pixel]Aceita um [c_yellow]pequeno presente[/c] de minha parte.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Isso é ótimo! Você encontrou um baú lá dentro? Eu pensei que haveria vários baús...";
			text2 = "[fnt_pixel]De qualquer forma, bom trabalho!";
			text3 = "[fnt_pixel]Tome um [c_yellow]pequeno presente[/c] de mim.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]To świetne! Znalazłeś tam skrzynię? Myślałem, że będzie tam kilka skrzyń...";
			text2 = "[fnt_pixel]Tak czy inaczej, dobra robota!";
			text3 = "[fnt_pixel]Weź [c_yellow]mały prezent[/c] ode mnie.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]それは素晴らしい！あなたはそこにチェストを見つけたの？私はいくつかのチェストがあると思っていました...";
			text2 = "[fnt_pixel]とにかく、良い仕事！";
			text3 = "[fnt_pixel]私からの[c_yellow]小さなプレゼントを[/c]受け取ってください。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Das ist großartig! Du hast eine Truhe dort drinnen gefunden? Ich dachte, es gäbe mehrere Truhen...";
			text2 = "[fnt_pixel]Wie auch immer, gute Arbeit!";
			text3 = "[fnt_pixel]Nimm ein [c_yellow]kleines Geschenk[/c] von mir.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]C'est génial ! Vous avez trouvé un coffre là-dedans ? Je pensais qu'il y aurait plusieurs coffres...";
			text2 = "[fnt_pixel]Quoi qu'il en soit, bon travail!";
			text3 = "[fnt_pixel]Prenez un [c_yellow]petit cadeau[/c] de ma part.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Che bello! Hai trovato un baule lì dentro? Pensavo ci sarebbero stati diversi bauli...";
			text2 = "[fnt_pixel]Comunque, buon lavoro!";
			text3 = "[fnt_pixel]Prendi un [c_yellow]piccolo regalo[/c] da parte mia.";
			break;
    }
}

function scr_txt_shadow_npc1_5(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]Did you know we have musical mushrooms? There's a cave...";
            text2 = "[fnt_pixel]Wait a minute. Didn't you find it and the chest with the [c_green]green coin[/c]?";
            text3 = "[fnt_pixel]Good job! I always wondered what was inside.";
            text4 = "[fnt_pixel]Take a [c_yellow]little present[/c] from me.";
            #endregion
            break;
		case 1:	//rus
			text1 = "[fnt_pixel_ru]Ты знал что у нас растут музыкальные грибы? Тут есть одна пещера...";
			text2 = "[fnt_pixel_ru]Подожди-ка. Ты же уже нашел ее и сундук с [c_green]зеленой монетой[/c]?";
			text3 = "[fnt_pixel_ru]Отличная работа! Всегда было интересно что там внутри.";
			text4 = "[fnt_pixel_ru]Возьми от меня [c_yellow]небольшой подарок[/c].";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¿Sabías que tenemos hongos musicales? Hay una cueva...";
			text2 = "[fnt_pixel]Espera un momento. ¿No encontraste el cofre con la [c_green]moneda verde[/c]?";
			text3 = "[fnt_pixel]¡Buen trabajo! Siempre me pregunté qué había dentro.";
			text4 = "[fnt_pixel]Toma un [c_yellow]pequeño regalo[/c] de mi parte.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]你知道我们有音乐蘑菇吗？有一个洞穴...";
			text2 = "[fnt_pixel]等一下。难道你没找到它和[c_green]带有绿色硬币的箱子吗[/c]？";
			text3 = "[fnt_pixel]做得好！我一直在想里面是什么。";
			text4 = "[fnt_pixel]接受我给你的[c_yellow]一点小礼物[/c]。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Você sabia que temos cogumelos musicais? Há uma caverna...";
			text2 = "[fnt_pixel]Espere um minuto. Não foi você que encontrou o peito com a [c_green]moeda verde[/c]?";
			text3 = "[fnt_pixel]Bom trabalho! Eu sempre me perguntei o que estava dentro.";
			text4 = "[fnt_pixel]Aceita um [c_yellow]pequeno presente[/c] de minha parte.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Você sabia que temos cogumelos musicais? Tem uma caverna...";
			text2 = "[fnt_pixel]Espere um minuto. Você não encontrou ela e o baú com a [c_green]moeda verde[/c]?";
			text3 = "[fnt_pixel]Bom trabalho! Eu sempre me perguntei o que tinha dentro.";
			text4 = "[fnt_pixel]Tome um [c_yellow]pequeno presente[/c] meu.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Czy wiedziałeś, że mamy muzyczne grzyby? Jest jaskinia...";
			text2 = "[fnt_pixel]Chwila moment. Czyżbyś nie znalazł jej i skrzyni ze [c_green]zieloną monetą[/c]?";
			text3 = "[fnt_pixel]Dobra robota! Zawsze zastanawiałem się, co jest w środku.";
			text4 = "[fnt_pixel]Weź [c_yellow]mały prezent[/c] ode mnie.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]私たちが音楽的なキノコを持っていることを知っていましたか？洞窟がある...";
			text2 = "[fnt_pixel]ちょっと待って。あなたはそれと、[c_green]緑のコインが[/c]入ったチェストを見つけましたか？";
			text3 = "[fnt_pixel]良い仕事をしました！私はいつも中に何があるのか気になっていました。";
			text4 = "[fnt_pixel]私からの[c_yellow]小さなプレゼントを[/c]受け取ってください。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Wusstest du, dass wir musikalische Pilze haben? Es gibt eine Höhle...";
			text2 = "[fnt_pixel]Moment mal. Hast du nicht sie und die Truhe mit der [c_green]grünen Münze[/c] gefunden?";
			text3 = "[fnt_pixel]Gute Arbeit! Ich habe mich immer gefragt, was drinnen ist.";
			text4 = "[fnt_pixel]Nimm ein [c_yellow]kleines Geschenk[/c] von mir.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Saviez-vous que nous avons des champignons musicaux? Il y a une grotte...";
			text2 = "[fnt_pixel]Attendez une minute. N'avez-vous pas trouvé cette grotte et la coffre avec la [c_green]pièce verte[/c]?";
			text3 = "[fnt_pixel]Bon travail! Je me suis toujours demandé ce qu'il y avait à l'intérieur.";
			text4 = "[fnt_pixel]Prenez un [c_yellow]petit cadeau[/c] de ma part.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Lo sapevi che abbiamo dei funghi musicali? C'è una grotta...";
			text2 = "[fnt_pixel]Aspetta un minuto. Non l'hai trovata tu e il baule con la [c_green]moneta verde[/c]?";
			text3 = "[fnt_pixel]Buon lavoro! Mi sono sempre chiesto cosa c'era dentro.";
			text4 = "[fnt_pixel]Prendi un [c_yellow]piccolo regalo[/c] da parte mia.";
			break;
    }
}

function scr_txt_shadow_npc1_6(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]When will it be possible to come out already?";
            text2 = "[fnt_pixel]I'd like to stretch my bones, so to speak.";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Когда же уже можно будет выйти?";
			text2 = "[fnt_pixel_ru]Хочется, так сказать, размять кости.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¿Cuándo será posible salir ya?";
			text2 = "[fnt_pixel]Me gustaría estirar mis huesos, por así decirlo.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]什么时候我们才可以出来呢？";
			text2 = "[fnt_pixel]我想伸伸骨头，可以这么说。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Quando será possível sair já?";
			text2 = "[fnt_pixel]Gostaria de esticar meus ossos, por assim dizer.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Quando será possível sair já?";
			text2 = "[fnt_pixel]Gostaria de esticar meus ossos, por assim dizer.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Kiedy w końcu będzie można wyjść na zewnątrz?";
			text2 = "[fnt_pixel]Chciałbym, że tak powiem, rozprostować swoje kości.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]いつ、もう出て行くことができるのでしょうか？";
			text2 = "[fnt_pixel]言わば、私の骨を伸ばしたいです。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Wann wird es endlich möglich sein, rauszukommen?";
			text2 = "[fnt_pixel]Ich würde gerne meine Knochen strecken, sozusagen.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Quand sera-t-il possible de sortir déjà?";
			text2 = "[fnt_pixel]J'aimerais étirer mes os, pour ainsi dire.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Quando sarà possibile uscire già?";
			text2 = "[fnt_pixel]Mi piacerebbe stiracchiare le ossa, per così dire.";
			break;
			
    }
}

function scr_txt_shadow_npc1_7(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]Phew, all the undead are gone, no need for amulets now.";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Фух, вся нежить ушла. Теперь и амулеты не понадобятся.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]Uf, todos los no muertos se han ido, ya no se necesitan amuletos.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]唉，所有的不死者都走了，现在不需要护符了。";
			break
		case 4: //pt
			text1 = "[fnt_pixel]Ufa, todos os mortos-vivos se foram, não precisa de amuletos agora.";
			break
		case 5: //br
			text1 = "[fnt_pixel]Ufa, todos os mortos-vivos se foram, não há mais necessidade de amuletos agora.";
			break
		case 6: //pl
			text1 = "[fnt_pixel]Uff, wszyscy nieumarli zniknęli, nie potrzebujemy teraz amuletów.";
			break
		case 7: //jp
			text1 = "[fnt_pixel]ふう、全てのアンデッドがなくなった、もう魔除けは必要ない。";
			break
		case 8: //de
			text1 = "[fnt_pixel]Puh, alle Untoten sind weg, jetzt brauchen wir keine Amulette mehr.";
			break
		case 9: //fr
			text1 = "[fnt_pixel]Ouf, tous les morts-vivants sont partis, plus besoin d'amulettes maintenant.";
			break
		case 10: //it
			text1 = "[fnt_pixel]Uffa, tutti i non morti sono spariti, non c'è più bisogno di amuleti ora.";
			break
    }
}
    
function scr_txt_shadow_npc1_8(){
    switch(global.language){
        case 0:
            #region eng
            text1 = choose("[fnt_pixel][shake]Where am I?[/shake]",
						   "[fnt_pixel][shake]Who am I?[/shake]",
						   "[fnt_pixel][shake]Who are you?[/shake]",
						   "[fnt_pixel][shake]Am I a skeleton?[/shake]",
						   "[fnt_pixel][shake]How did I get here?[/shake]"); 
            #endregion
            break;
		case 1: //rus
			text1 = choose("[fnt_pixel_ru][shake]Где я?[/shake]",
						   "[fnt_pixel_ru][shake]Кто я?[/shake]",
						   "[fnt_pixel_ru][shake]Кто ты?[/shake]",
						   "[fnt_pixel_ru][shake]Я что, скелет?[/shake]",
						   "[fnt_pixel_ru][shake]Как я здесь оказался?[/shake]");
			break;
		case 2: //es
			text1 = choose("[fnt_pixel][shake]¿Dónde estoy?[/shake]",
						   "[fnt_pixel][shake]¿Quién soy yo?[/shake]",
						   "[fnt_pixel][shake]¿Quién eres tú?[/shake]",
						   "[fnt_pixel][shake]¿Soy un esqueleto?[/shake]",
						   "[fnt_pixel][shake]¿Cómo llegué aquí?[/shake]");
			break;
		case 3: //cn
			text1 = choose("[fnt_pixel][shake]我在哪里？[/shake]",
						   "[fnt_pixel][shake]我是谁？[/shake]",
						   "[fnt_pixel][shake]你是谁？[/shake]",
						   "[fnt_pixel][shake]我是骷髅吗？[/shake]",
						   "[fnt_pixel][shake]我是怎么到这里的？[/shake]");
			break;
		case 4: //pt
			text1 = choose("[fnt_pixel][shake]Onde eu estou?[/shake]",
						   "[fnt_pixel][shake]Quem sou eu?[/shake]",
						   "[fnt_pixel][shake]Quem é você?[/shake]",
						   "[fnt_pixel][shake]Eu sou um esqueleto?[/shake]",
						   "[fnt_pixel][shake]Como cheguei aqui?[/shake]");
			break;
		case 5: //br
			text1 = choose("[fnt_pixel][shake]Onde eu estou?[/shake]",
						   "[fnt_pixel][shake]Quem eu sou?[/shake]",
						   "[fnt_pixel][shake]Quem é você?[/shake]",
						   "[fnt_pixel][shake]Eu sou um esqueleto?[/shake]",
						   "[fnt_pixel][shake]Como eu vim parar aqui?[/shake]");
			break;
		case 6: //pl
			text1 = choose("[fnt_pixel][shake]Gdzie jestem?[/shake]",
						   "[fnt_pixel][shake]Kim ja jestem?[/shake]",
						   "[fnt_pixel][shake]Kim jesteś?[/shake]",
						   "[fnt_pixel][shake]Czy jestem szkieletem?[/shake]",
						   "[fnt_pixel][shake]Jak ja tutaj trafiłem?[/shake]");
			break;
		case 7: //jp
			text1 = choose("[fnt_pixel][shake]私はどこにいるの？[/shake]",
						   "[fnt_pixel][shake]私は誰？[/shake]",
						   "[fnt_pixel][shake]あなたは誰？[/shake]",
						   "[fnt_pixel][shake]私はスケルトン？[/shake]",
						   "[fnt_pixel][shake]どうやってここに来たの？[/shake]");
			break;
		case 8: //de
			text1 = choose("[fnt_pixel][shake]Wo bin ich?[/shake]",
						   "[fnt_pixel][shake]Wer bin ich?[/shake]",
						   "[fnt_pixel][shake]Wer bist du?[/shake]",
						   "[fnt_pixel][shake]Bin ich ein Skelett?[/shake]",
						   "[fnt_pixel][shake]Wie bin ich hierher gekommen?[/shake]");
			break;
		case 9: //fr
			text1 = choose("[fnt_pixel][shake]Où suis-je?[/shake]",
						   "[fnt_pixel][shake]Qui suis-je?[/shake]",
						   "[fnt_pixel][shake]Qui êtes-vous?[/shake]",
						   "[fnt_pixel][shake]Suis-je un squelette?[/shake]",
						   "[fnt_pixel][shake]Comment suis-je arrivé ici?[/shake]");
			break;
		case 10: //it
			text1 = choose("[fnt_pixel][shake]Dove sono?[/shake]",
						   "[fnt_pixel][shake]Chi sono?[/shake]",
						   "[fnt_pixel][shake]Chi sei tu?[/shake]",
						   "[fnt_pixel][shake]Sono uno scheletro?[/shake]",
						   "[fnt_pixel][shake]Come sono arrivato qui?[/shake]");
			break;
    }
}





