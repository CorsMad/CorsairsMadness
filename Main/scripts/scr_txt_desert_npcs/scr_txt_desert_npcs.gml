// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_txt_desert_npc1_1(){
	switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            text1 = choose("[fnt_pixel]These storms make sand everywhere. Soon I'll be sand myself.","[fnt_pixel]When will these storms end?");
            #endregion
            break;
        case 1: //russian
            text1 = choose("[fnt_pixel_ru]От этих бурь песок везде. Скоро я сам стану песком.",
						   "[fnt_pixel_ru]Когда же эти бури закончатся?");
            break;
        case 2: //spanish
            text1 = choose("[fnt_pixel]Estas tormentas hacen arena por todas partes. Pronto seré arena yo mismo.",
						   "[fnt_pixel]¿Cuándo terminarán estas tormentas?")
            break;
        case 3: //chinese
            text1 = choose("[fnt_pixel]这些暴风雨到处都是沙。我也快变成沙子了。",
						   "[fnt_pixel]这些风暴什么时候才会结束呢？")
            break;
        case 4: //portug
            text1 = choose("[fnt_pixel]Essas tempestades fazem areia por toda parte. Logo serei areia eu mesmo.",
						   "[fnt_pixel]Quando essas tempestades vão acabar?")
            break;
        case 5: //brazil
            text1 = choose("[fnt_pixel]Essas tempestades fazem areia por toda parte. Logo serei areia eu mesmo.",
						   "[fnt_pixel]Quando essas tempestades vão acabar?")
            break;
        case 6: //polish
            text1 = choose("[fnt_pixel]Te burze rozsiewają wszędzie piasek. Wkrótce sam będę piaskiem.",
						   "[fnt_pixel]Kiedy te burze się skończą?")
            break;
        case 7: //japanese
            text1 = choose("[fnt_pixel]これらの嵐はどこにでも砂を作ります。 じきに私も砂になってしまう。",
						   "[fnt_pixel]いつこれらの嵐が終わるのか？")
            break;
        case 8: //deutch
            text1 = choose("[fnt_pixel]Diese Stürme machen überall Sand. Bald werde ich selbst Sand sein.",
						   "[fnt_pixel]Wann werden diese Stürme enden?")
            break;
        case 9: //french
            text1 = choose("[fnt_pixel]Ces tempêtes font du sable partout. Bientôt je serai moi-même du sable.",
						   "[fnt_pixel]Quand ces tempêtes vont-elles prendre fin?")
            break;
        case 10: //Italian
            text1 = choose("[fnt_pixel]Queste tempeste fanno sabbia ovunque. Presto sarò io stesso sabbia.",
						   "[fnt_pixel]Quando finiranno queste tempeste?")
            break;
    }    
}  
    	
function scr_txt_desert_npc1_2(){
	switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            text1 = "[fnt_pixel]I recently found a paper with a strange drawing. It looks like one of the rooms in a cave with [c_red]switch buttons[/c].";
            text2 = "[fnt_pixel]Maybe you can make sense of it. It's like a secret [c_red]passage[/c].";
            #endregion
            break;
        case 1: //russian
            text1 = "[fnt_pixel_ru]Недавно я нашел бумагу со странным рисунком. Он похож на одну из комнат в пещере с [c_red]кнопками переключения[/c].";
            text2 = "[fnt_pixel_ru]Может быть ты поймешь смысл? Как будто тут изображен [c_red]секретный проход[/c].";
            break;
        case 2: //spanish
            text1 = "[fnt_pixel]Recientemente encontré un papel con un dibujo extraño. Parece una de las habitaciones en una cueva con [c_red]botones de interruptor[/c].";
            text2 = "[fnt_pixel]Quizás puedas darle sentido. Es como un [c_red]pasadizo secreto[/c].";
            break;
        case 3: //chinese
            text1 = "[fnt_pixel]我最近找到了一张画有奇怪图案的纸。它看起来像是洞穴里的一个房间，[c_red]有开关按键[/c]。";
			text2 = "[fnt_pixel]也许你能理解。它像是一[c_red]个秘密通道[/c]。";
            break;
        case 4: //portug
            text1 = "[fnt_pixel]Recentemente encontrei um papel com um desenho estranho. Parece uma das salas em uma caverna com [c_red]botões de interruptor[/c].";
			text2 = "[fnt_pixel]Talvez você consiga entender. É como uma [c_red]passagem secreta[/c].";
            break;
        case 5: //brazil
            text1 = "[fnt_pixel]Recentemente, encontrei um papel com um desenho estranho. Parece uma das salas em uma caverna com [c_red]botões de troca[/c].";
			text2 = "[fnt_pixel]Talvez você possa fazer sentido. É como uma [c_red]passagem secreta[/c].";
            break;
        case 6: //polish
            text1 = "[fnt_pixel]Ostatnio znalazłem papier z dziwnym rysunkiem. Wygląda na jeden z pokoi w [c_red]jaskini z przyciskami[/c].";
			text2 = "[fnt_pixel]Może ty zdołasz to rozgryźć. To jak [c_red]tajne przejście[/c].";
            break;
        case 7: //japanese
            text1 = "[fnt_pixel]最近、奇妙な絵が描かれた紙を見つけました。 それは[c_red]スイッチボタンの[/c]ある洞窟の部屋の一つのように見えます。";
			text2 = "[fnt_pixel]あなたなら意味を理解できるかもしれません。 [c_red]それは秘密の通路のようです[/c]。";
            break;
        case 8: //deutch
            text1 = "[fnt_pixel]Ich habe kürzlich ein Papier mit einer seltsamen Zeichnung gefunden. Es sieht aus wie einer der Räume in einer Höhle mit [c_red]Schaltknöpfen[/c]. ";
			text2 = "[fnt_pixel]Vielleicht kannst du es verstehen. Es ist wie ein [c_red]geheimer Durchgang[/c].";
            break;
        case 9: //french
            text1 = "[fnt_pixel]J'ai récemment trouvé un papier avec un dessin étrange. Il ressemble à l'une des salles dans une grotte avec des [c_red]boutons de commutation[/c].";
			text2 = "[fnt_pixel]Peut-être que tu peux en faire quelque chose. C'est comme un [c_red]passage secret[/c].";
            break;
        case 10: //Italian
            text1 = "[fnt_pixel]Recentemente ho trovato un foglio con un disegno strano. Sembra una delle stanze in una grotta con [c_red]pulsanti di interruttore[/c].";
			text2 = "[fnt_pixel]Forse tu puoi capirci qualcosa. È come un [c_red]passaggio segreto[/c].";
            break;
    }    
}
	
function scr_txt_desert_npc1_3(){
    switch(global.language){
        case 0:
            text1 = "[fnt_pixel]Do you think you can figure out what it is?";
            text2 = "[fnt_pixel]Looks like one of the rooms in the [c_red]cave with the switch buttons[/c]";
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Как думаешь, сможешь понять что тут нарисовано?";
			text2 = "[fnt_pixel_ru]Похоже на одну из комнат в [c_red]пещере с кнопками-переключателями[/c].";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¿Crees que puedes descubrir qué es?";
			text2 = "[fnt_pixel]Parece una de las habitaciones en [c_red]la cueva con los botones de interruptor[/c].";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]你认为你能弄清楚它是什么吗？";
			text2 = "[fnt_pixel]它看起来像洞穴里的一[c_red]个房间，有开关按钮[/c]。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Você acha que pode descobrir o que é?";
			text2 = "[fnt_pixel]Parece uma das salas na [c_red]caverna com os botões de interruptor[/c].";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Acha que pode descobrir o que é?";
			text2 = "[fnt_pixel]Parece uma das salas na [c_red]caverna com os botões de troca[/c].";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Myślisz, że dasz radę znaleźć, co to jest?";
			text2 = "[fnt_pixel]Wygląda na jeden z [c_red]pokoi w jaskini z przyciskami[/c].";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]それが何であるかを理解できると思いますか？";
			text2 = "[fnt_pixel][c_red]それはスイッチボタンのある洞窟の部屋の[/c]一つのように見えます。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Glaubst du, du kannst herausfinden, was es ist? ";
			text2 = "[fnt_pixel]Sieht aus wie einer der Räume in der [c_red]Höhle mit den Schalterknöpfen[/c].";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Penses-tu que tu peux comprendre ce que c'est?";
			text2 = "[fnt_pixel]On dirait l'une des salles de la [c_red]grotte avec les boutons de commutation[/c].";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Pensi di poter capire cosa sia?";
			text2 = "[fnt_pixel]Sembra una delle stanze nella [c_red]grotta con i pulsanti dell'interruttore[/c].";
			break;
    }
}
    
function scr_txt_desert_npc1_4(){
    switch(global.language){
        case 0:
            text1 = "[fnt_pixel]Did you find the place yet? Tell me what it was like! I'm burning with curiosity.";
            text2 = "[fnt_pixel][shake]What[/shake]? The dark room with the [c_green]green coin[/c]?";
            text3 = "[fnt_pixel]Oh, and I thought...";
            text4 = "[fnt_pixel]Here's a [c_yellow]couple coins[/c] from me for solving this mystery.";
            break;
		case 1:// rus
			text1 = "[fnt_pixel_ru]Ты уже нашел это место? Расскажи, что там было! Я сгораю от любопытства.";
			text2 = "[fnt_pixel_ru][shake]Что[/shake]? Темная комната с [c_green]зеленой монетой[/c]?";
			text3 = "[fnt_pixel_ru]Эх, а я то думал...";
			text4 = "[fnt_pixel_ru]Держи от меня [c_yellow]пару монет[/c] за то что разгадал эту загадку.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¿Ya encontraste el lugar? ¡Dime cómo fue! Estoy ardiendo de curiosidad.";
			text2 = "[fnt_pixel]¿[shake]Qué[/shake]? ¿La habitación oscura con la [c_green]moneda verde[/c]?";
			text3 = "[fnt_pixel]Oh, y yo pensaba...";
			text4 = "[fnt_pixel]Aquí tienes [c_yellow]un par de monedas[/c] de mi parte por resolver este misterio.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]你找到那个地方了吗？告诉我它是什么样的！我非常好奇。";
			text2 = "[fnt_pixel][shake]什么[/shake]？带有[c_green]绿色硬币[/c]的黑暗房间？";
			text3 = "[fnt_pixel]哦，我想...";
			text4 = "[fnt_pixel]这是我为解决这个谜团给你的[c_yellow]一些硬币[/c]。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Você já encontrou o lugar? Me diga como foi! Estou ardendo de curiosidade.";
			text2 = "[fnt_pixel][shake]O quê[/shake]? A sala escura com a [c_green]moeda verde[/c]?";
			text3 = "[fnt_pixel]Oh, e eu pensei...";
			text4 = "[fnt_pixel]Aqui estão [c_yellow]algumas moedas[/c] minhas para resolver esse mistério.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Você já encontrou o lugar? Conte-me como foi! Estou ardendo de curiosidade.";
			text2 = "[fnt_pixel][shake]O que[/shake]? A sala escura com a [c_green]moeda verde[/c]?";
			text3 = "[fnt_pixel]Ah, e eu pensei...";
			text4 = "[fnt_pixel]Aqui estão [c_yellow]algumas moedas[/c] minhas para resolver este mistério.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Czy już znalazłeś to miejsce? Powiedz mi, jakie było! Palę się z ciekawości.";
			text2 = "[fnt_pixel][shake]Co[/shake]? Ciemny pokój z [c_green]zieloną monetą[/c]?";
			text3 = "[fnt_pixel]Och, a ja myślałem...";
			text4 = "[fnt_pixel]Oto [c_yellow]parę monet[/c] ode mnie za rozwiązanie tej tajemnicy.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]まだその場所を見つけましたか？それがどのようなところだったか教えてください！私は興味津々で焦っています。";
			text2 = "[fnt_pixel][shake]何[/shake]？ [c_green]緑のコイン[/c]のある暗い部屋？";
			text3 = "[fnt_pixel]ええ、それに私が思っていた...";
			text4 = "[fnt_pixel]この謎を解いたので、[c_yellow]私から数枚のコインをあげます[/c]。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Hast du den Ort schon gefunden? Erzähl mir, wie es war! Ich brenne vor Neugier. ";
			text2 = "[fnt_pixel][shake]Was[/shake]? Der dunkle Raum mit der [c_green]grünen Münze[/c]? ";
			text3 = "[fnt_pixel]Oh, und ich dachte... ";
			text4 = "[fnt_pixel]Hier sind ein [c_yellow]paar Münzen[/c] von mir für die Lösung dieses Rätsels.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Tu as trouvé l'endroit? Dis-moi comment c'était! Je brûle de curiosité.";
			text2 = "[fnt_pixel][shake]Quoi[/shake]? La salle sombre avec la [c_green]pièce verte[/c]?";
			text3 = "[fnt_pixel]Oh, et moi qui pensais...";
			text4 = "[fnt_pixel]Voici [c_yellow]quelques pièces[/c] de ma part pour avoir résolu ce mystère.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Hai trovato il posto? Dimmi com'era! Sto morendo di curiosità.";
			text2 = "[fnt_pixel][shake]Cosa[/shake]? La stanza buia con la [c_green]moneta verde[/c]?";
			text3 = "[fnt_pixel]Oh, e io pensavo...";
			text4 = "[fnt_pixel]Ecco un [c_yellow]paio di monete[/c] da parte mia per aver risolto questo mistero.";
			break;
    }
}
    
function scr_txt_desert_npc1_5(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]I recently found a paper with some strange drawings on it.";
            text2 = "[fnt_pixel]It looks like one of the rooms in the slab cave. It's like there's a switch buttons.";
            text3 = "[fnt_pixel][shake]What[/shake]? Did you really find it yourself? I wonder how you did it. It's like you've been here before.";
            text4 = "[fnt_pixel]Did you find a [c_green]green coin[/c] in there? Eh, I thought it was really something interesting.";
            text5 = "[fnt_pixel]Well, anyway, here's a [c_yellow]couple coins[/c] for being smart.";
            #endregion
            break;
		case 1:
			#region rus
			text1 = "[fnt_pixel_ru]Я тут недавно нашел бумагу со [c_red]странными рисунками[/c]. ";
			text2 = "[fnt_pixel_ru]Выглядит как одно из помещений в пещере с плитами. Как будто тут изображен секретный проход.";
			text3 = "[fnt_pixel_ru][shake]Что[/shake]? Неужели ты сам нашел его? Интересно, каким образом тебе это удалось. Как будто ты когда то уже тут был.";
			text4 = "[fnt_pixel_ru]Ты нашел там [c_green]зеленую монету[/c]? Эх, я думал там и вправду что-то интересное.";
			text5 = "[fnt_pixel_ru]Что ж, в любом случае вот тебе [c_yellow]пару монет[/c] за сообразительность.";
			#endregion
			break;
		case 2:
			#region es
			text1 = "[fnt_pixel]Recientemente encontré un papel con algunos [c_red]dibujos extraños[/c] en él.";
			text2 = "[fnt_pixel]Parece una de las habitaciones en la cueva de losas. Parece que hay un botón de interruptor.";
			text3 = "[fnt_pixel]¿[shake]Qué[/shake]? ¿Realmente lo encontraste tú mismo? Me pregunto cómo lo hiciste. Es como si hubieras estado aquí antes.";
			text4 = "[fnt_pixel]¿Encontraste una [c_green]moneda verde[/c] allí? Eh, pensé que era realmente algo interesante.";
			text5 = "[fnt_pixel]Bueno, de todos modos, aquí tienes un [c_yellow]par de monedas[/c] por ser inteligente.";
			#endregion
			break;
		case 3:
			#region cn
			text1 = "[fnt_pixel]我最近找到了一张上面有一[c_red]些奇怪图案的纸[/c]。";
			text2 = "[fnt_pixel]它看起来像石板洞穴里的一个房间。好像有一个开关按钮。";
			text3 = "[fnt_pixel][shake]什么[/shake]？你真的自己找到了？我想知道你是怎么做到的。就好像你之前来过这里一样。";
			text4 = "[fnt_pixel]你在那里找到一枚[c_green]绿色的硬币[/c]了吗？嗯，我以为真的是一些有趣的东西。";
			text5 = "[fnt_pixel]好吧，无论如何，这是我给你的一[c_yellow]些硬币[/c]，因为你聪明。";
			#endregion
			break;
		case 4:
			#region pt
			text1 = "[fnt_pixel]Recentemente encontrei um papel com alguns [c_red]desenhos estranhos[/c].";
			text2 = "[fnt_pixel]Parece uma das salas na caverna da laje. É como se houvesse um botão de interruptor.";
			text3 = "[fnt_pixel][shake]O quê[/shake]? Você realmente encontrou sozinho? Quero saber como você fez isso. É como se você já tivesse estado aqui antes.";
			text4 = "[fnt_pixel]Você encontrou uma [c_green]moeda verde[/c] lá dentro? Eh, pensei que era algo realmente interessante.";
			text5 = "[fnt_pixel]Bem, de qualquer forma, aqui estão [c_yellow]algumas moedas[/c] para ser inteligente.";
			#endregion
			break;
		case 5:
			#region br
			text1 = "[fnt_pixel]Recentemente, encontrei um papel com alguns [c_red]desenhos estranhos[/c].";
			text2 = "[fnt_pixel]Parece uma das salas na caverna de lajes. É como se houvesse um botão de troca.";
			text3 = "[fnt_pixel][shake]O quê[/shake]? Você realmente encontrou sozinho? Eu me pergunto como você fez isso. É como se você já tivesse estado aqui antes.";
			text4 = "[fnt_pixel]Você encontrou uma [c_green]moeda verde[/c] lá dentro? Eh, achei que fosse algo realmente interessante.";
			text5 = "[fnt_pixel]Bem, de qualquer forma, aqui estão [c_yellow]algumas moedas[/c] por ser inteligente.";
			#endregion
			break;
		case 6:
			#region pl
			text1 = "[fnt_pixel]Ostatnio znalazłem papier z jakimiś [c_red]dziwnymi rysunkami[/c].";
			text2 = "[fnt_pixel]Wygląda na jeden z pokoi w jaskini płyty. To jakby tam były przyciski.";
			text3 = "[fnt_pixel][shake]Co[/shake]? Naprawdę znalazłeś to sam? Ciekawe, jak ci się to udało. To jakbyś już tu był wcześniej.";
			text4 = "[fnt_pixel]Czy znalazłeś tam [c_green]zieloną monetę[/c]? Eh, myślałem, że to naprawdę coś interesującego.";
			text5 = "[fnt_pixel]Cóż, tak czy inaczej, oto [c_yellow]parę monet[/c] za bycie bystrym.";
			#endregion
			break;
		case 7:
			#region jp
			text1 = "[fnt_pixel]最近、[c_red]奇妙な絵が描[/c]かれた紙を見つけました。";
			text2 = "[fnt_pixel]それはスラブの洞窟の一室のように見えます。スイッチボタンが存在するようです。";
			text3 = "[fnt_pixel][shake]何[/shake]？実際に自分で見つけましたか？ どのようにしてそれを見つけたのか疑問です。前にここにいたかのようです。";
			text4 = "[fnt_pixel][c_green]そこに緑のコイン[/c]はありましたか？ええ、それが本当に何か興味深いものだと思っていました。";
			text5 = "[fnt_pixel]まあ、とにかく、頭が良いあなたにはい[c_yellow]くつかのコインをあ[/c]げましょう。";
			#endregion
			break;
		case 8:
			#region de
			text1 = "[fnt_pixel]Ich habe kürzlich ein Papier mit einigen [c_red]seltsamen Zeichnungen[/c] darauf gefunden. ";
			text2 = "[fnt_pixel]Es sieht aus wie einer der Räume in der Plattenhöhle. Es sieht aus, als gäbe es dort Schalterknöpfe. ";
			text3 = "[fnt_pixel][shake]Was[/shake]? Hast du es wirklich selbst gefunden? Ich frage mich, wie du das gemacht hast. Es ist, als wärst du schon einmal hier gewesen. ";
			text4 = "[fnt_pixel]Hast du dort eine [c_green]grüne Münze[/c] gefunden? Eh, ich dachte, es wäre wirklich etwas Interessantes. ";
			text5 = "[fnt_pixel]Nun, hier sind ein paar [c_yellow]Münzen[/c] für deinen Scharfsinn.";
			#endregion
			break;
		case 9:
			#region fr
			text1 = "[fnt_pixel]J'ai récemment trouvé un papier avec des [c_red]dessins étranges[/c] dessus.";
			text2 = "[fnt_pixel]Cela ressemble à l'une des salles de la grotte de la dalle. C'est comme s'il y avait des boutons de commutation.";
			text3 = "[fnt_pixel][shake]Quoi[/shake] ? Tu l'as vraiment trouvé toi-même ? Je me demande comment tu as fait. C'est comme si tu étais déjà venu ici.";
			text4 = "[fnt_pixel]As-tu trouvé une [c_green]pièce verte[/c] là-bas? Eh, je pensais que c'était vraiment quelque chose d'intéressant.";
			text5 = "[fnt_pixel]Eh bien, en tout cas, voici quelques [c_yellow]pièces[/c] pour être intelligent.";
			#endregion
			break;
		case 10:
			#region it
			text1 = "[fnt_pixel]Recentemente ho trovato un foglio con alcuni [c_red]strani disegni[/c] su di esso.";
			text2 = "[fnt_pixel]Sembra una delle stanze nella grotta delle lastre. È come se ci fossero dei pulsanti di interruttore.";
			text3 = "[fnt_pixel][shake]Cosa[/shake]? Hai davvero trovato da solo? Mi chiedo come tu l'abbia fatto. È come se fossi stato qui prima.";
			text4 = "[fnt_pixel]Hai trovato una [c_green]moneta verde[/c] lì dentro? Eh, pensavo fosse davvero qualcosa di interessante.";
			text5 = "[fnt_pixel]Beh, comunque, ecco un paio di [c_yellow]monete[/c] per essere intelligente.";
			#endregion
			break;
    }
}

function scr_txt_desert_npc1_6(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]I'll never pick up suspicious papers again. It's nothing interesting anyway.";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Больше никогда не буду подбирать подозрительные бумаги. Все равно ничего интересного.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]Nunca más recogeré papeles sospechosos. De todos modos, no es nada interesante.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]我再也不会捡起可疑的纸了。反正也没什么有趣的。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Eu nunca mais vou pegar papéis suspeitos. Não é nada interessante mesmo.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Nunca mais vou pegar papéis suspeitos. Não é nada interessante mesmo.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Nigdy więcej nie podniosę podejrzanych papierów. I tak to nic interesującego.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]二度と怪しい紙を拾わない。 それはどのみち何も興味深くない。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Ich werde nie wieder verdächtige Papiere aufheben. Es ist sowieso nichts Interessantes.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Je ne ramasserai plus jamais de papiers suspects. De toute façon, ce n'est rien d'intéressant.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Non raccoglierò mai più carte sospette. Comunque non è niente di interessante.";
			break;
    }
}

function scr_txt_desert_npc1_7(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]Well, time to get back to the post.";
            text2 = "[fnt_pixel]At least I can get some water from the fountain.";
            #endregion
            break;
		case 1: // rus
			text1 = "[fnt_pixel_ru]Что ж, время возвращаться на пост. ";
			text2 = "[fnt_pixel_ru]Эх, хоть смогу набрать воды из фонтана.";
			break;
		case 2: // es
			text1 = "[fnt_pixel]Bueno, es hora de volver al puesto.";
			text2 = "[fnt_pixel]Al menos puedo conseguir algo de agua de la fuente.";
			break;
		case 3: // cn
			text1 = "[fnt_pixel]好的，该回到岗位了。";
			text2 = "[fnt_pixel]至少我可以从喷泉那里得到一些水。";
			break;
		case 4: // pt
			text1 = "[fnt_pixel]Bem, hora de voltar para o posto.";
			text2 = "[fnt_pixel]Pelo menos posso pegar um pouco de água da fonte.";
			break;
		case 5: // br
			text1 = "[fnt_pixel]Bem, hora de voltar ao posto.";
			text2 = "[fnt_pixel]Pelo menos posso pegar água da fonte.";
			break;
		case 6: // pl
			text1 = "[fnt_pixel]No dobrze, czas wracać na placówkę.";
			text2 = "[fnt_pixel]Przynajmniej mogę nabrać trochę wody z fontanny.";
			break;
		case 7: // jp
			text1 = "[fnt_pixel]さて、ポストに戻る時間です。";
			text2 = "[fnt_pixel]少なくとも噴水から水を得ることができます。";
			break;
		case 8: // de
			text1 = "[fnt_pixel]Nun, Zeit, zur Post zurückzukehren. ";
			text2 = "[fnt_pixel]Wenigstens kann ich etwas Wasser aus dem Brunnen holen.";
			break;
		case 9: // fr
			text1 = "[fnt_pixel]Eh bien, il est temps de retourner au poste.";
			text2 = "[fnt_pixel]Au moins, je peux prendre de l'eau à la fontaine.";
			break;
		case 10: // it
			text1 = "[fnt_pixel]Bene, è ora di tornare al post.";
			text2 = "[fnt_pixel]Almeno posso prendere un po' d'acqua dalla fontana.";
			break;
		
    }
}


function scr_txt_desert_npc2_2(){
	switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            text1 = "[fnt_pixel]I don't like to talk to people at all.";           
            #endregion
            break;
        case 1: //russian
            
            break;
        case 2: //spanish
            
            break;
        case 3: //chinese
            
            break;
        case 4: //portug
            
            break;
        case 5: //brazil
            
            break;
        case 6: //polish
            
            break;
        case 7: //japanese
            
            break;
        case 8: //deutch
            
            break;
        case 9: //french
            
            break;
        case 10: //Italian
            
            break;
    }    
}
    
function scr_txt_desert_npc3(){
    switch(global.language){
        case 0:
            #region eng
            text1 = choose("[fnt_pixel]I'm...[delay,500]already...[delay,500]tired...[delay,500]of twisting...[delay,500]this...[delay,500]damn...[delay,500]thing.",
						   "[fnt_pixel][shake]Where's my replacement, I'm dead tired.[/shake]");
            #endregion
            break;
		case 1: //rus


			text1 = choose("[fnt_pixel_ru]Я...[delay,500]уже...[delay,500]устал...[delay,500]крутить...[delay,500]эту...[delay,500]чертову...[delay,500]штуку.",
						   "[fnt_pixel_ru][shake]Где же мой сменщик, я чертовски устал.[/shake]");
			break;
		case 2: //es
			text1 = choose("[fnt_pixel]Yo...[delay,500]ya...[delay,500]estoy...[delay,500]cansado...[delay,500]de girar...[delay,500]esta...[delay,500]maldita...[delay,500]cosa.",
						   "[fnt_pixel][shake]¿Dónde está mi reemplazo? Estoy muerto de cansancio.[/shake]");
			break;
		case 3: //cn
			text1 = choose("[fnt_pixel]我...[delay,500]已经...[delay,500]累...[delay,500]得扭...[delay,500]这...[delay,500]该死...[delay,500]的东西了。",
						   "[fnt_pixel][shake]我的接班人在哪里，我累死了。[/shake]");
			break;
		case 4: //pt
			text1 = choose("[fnt_pixel]Eu já...[delay,500]estou...[delay,500]cansado...[delay,500]de girar...[delay,500]esta...[delay,500]maldita...[delay,500]coisa.",
						   "[fnt_pixel][shake]Cadê meu substituto, estou morto de cansaço.[/shake]");
			break;
		case 5: //br
			text1 = choose("[fnt_pixel]Eu... [delay,500]já... [delay,500]estou... [delay,500]cansado... [delay,500]de girar... [delay,500]esse...[delay,500] maldito... [delay,500]negócio.",
						   "[fnt_pixel][shake]Cadê meu substituto, estou morto de cansaço.[/shake]");
			break;
		case 6: //pl
			text1 = choose("[fnt_pixel]Już... [delay,500]jestem... [delay,500]zmęczony... [delay,500]kręceniem... [delay,500]tego... [delay,500]cholernego... [delay,500]przedmiotu.",
						   "[fnt_pixel][shake]Gdzie jest mój zastępca, jestem śmiertelnie zmęczony.[/shake]");
			break;
		case 7: //jp
			text1 = choose("[fnt_pixel]私は...[delay,500]すでに...[delay,500]この...[delay,500]くそっ..[delay,500]ものをひねるのに...[delay,500]疲れて...[delay,500]います...。",
						   "[fnt_pixel][shake]私の代替はどこにあるのですか、私は死ぬほど疲れています。[/shake]");
			break;
		case 8: //de
			text1 = choose("[fnt_pixel]Ich...[delay,500]bin...[delay,500]schon...[delay,500]müde...[delay,500]von...[delay,500]diesem...[delay,500]verdammten...[delay,500]Ding...[delay,500]zu drehen.",
						   "[fnt_pixel][shake]Wo ist meine Ablösung, ich bin todmüde.[/shake]");
			break;
		case 9: //fr
			text1 = choose("[fnt_pixel]Je suis...[delay,500]déjà...[delay,500]fatigué...[delay,500]de tourner...[delay,500]ce...[delay,500]sacré...[delay,500]truc.",
						   "[fnt_pixel][shake]Où est mon remplaçant, je suis mort de fatigue.[/shake]");
			break;
		case 10: //it
			text1 = choose("[fnt_pixel]Sono...[delay,500]già...[delay,500]stanco...[delay,500]di girare...[delay,500]questo...[delay,500]maldito...[delay,500]coso.",
						   "[fnt_pixel][shake]Dov'è il mio sostituto, sono stanco morto.[/shake]");
			break;
    }
}