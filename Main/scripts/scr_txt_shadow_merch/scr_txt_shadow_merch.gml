    
function scr_txt_shadow_merch3(){
    switch(global.language){
        case 0:
            #region English
            text1 = choose("[fnt_pixel]I wonder why it's always night on this island?",
						   "[fnt_pixel]I like skeletons. They don't talk much, and they drink a lot. They can drink endlessly if you think about it.");
            #endregion
            break;
		case 1: //rus
			text1 = choose("[fnt_pixel_ru]Интересно, почему на этом острове всегда ночь?",
						   "[fnt_pixel_ru]А мне нравятся скелеты. Они мало говорят, и много пьют. Они вообще могут пить бесконечно, если задуматься.");
			break;
		case 2: //es
			text1 = choose("[fnt_pixel]Me pregunto por qué siempre es de noche en esta isla?",
						   "[fnt_pixel]Me gustan los esqueletos. No hablan mucho, y beben mucho. Pueden beber sin cesar si lo piensas.");
			break;
		case 3: //cn
			text1 = choose("[fnt_pixel]我在想，为什么这个岛上总是夜晚呢？",
						   "[fnt_pixel]我喜欢骷髅。他们不怎么说话，而且他们喝很多。如果你想想看，他们可以无休止地喝。");
			break;
		case 4: //pt
			text1 = choose("[fnt_pixel]Eu me pergunto por que é sempre noite nesta ilha?",
						   "[fnt_pixel]Eu gosto de esqueletos. Eles não falam muito, e bebem muito. Eles podem beber infinitamente, se você pensar sobre isso.");
			break;
		case 5: //br
			text1 = choose("[fnt_pixel]Eu me pergunto por que é sempre noite nesta ilha?",
						   "[fnt_pixel]Eu gosto de esqueletos. Eles não falam muito, e bebem bastante. Eles podem beber infinitamente se você pensar sobre isso.");
			break;
		case 6: //pl
			text1 = choose("[fnt_pixel]Zastanawiam się, dlaczego na tej wyspie zawsze jest noc?",
						   "[fnt_pixel]Lubię szkielety. Niewiele mówią, a dużo piją. Mogą pić w nieskończoność, jeśli o tym pomyśleć.");
			break;
		case 7: //jp
			text1 = choose("[fnt_pixel]なぜこの島ではいつも夜なのかしら？",
						   "[fnt_pixel]私はスケルトンが好きです。彼らはあまり話さず、たくさん飲みます。考えてみれば、彼らは無尽蔵に飲むことができます。");
			break;
		case 8: //de
			text1 = choose("[fnt_pixel]Ich frage mich, warum es auf dieser Insel immer Nacht ist? ",
						   "[fnt_pixel]Ich mag Skelette. Sie reden nicht viel und sie trinken viel. Sie können endlos trinken, wenn man darüber nachdenkt.");
			break;
		case 9: //fr
			text1 = choose("[fnt_pixel]Je me demande pourquoi il fait toujours nuit sur cette île?",
						   "[fnt_pixel]J'aime les squelettes. Ils ne parlent pas beaucoup, et ils boivent beaucoup. Ils peuvent boire sans fin si on y pense.");
			break;
		case 10: //it
			text1 = choose("[fnt_pixel]Mi chiedo perché su quest'isola sia sempre notte?",
						   "[fnt_pixel]Mi piacciono gli scheletri. Non parlano molto, e bevono molto. Potrebbero bere all'infinito se ci pensi.");
			break;
    }
}    

function scr_txt_shadow_merch4(){
    switch(global.language){
        case 0:
            #region English
            text1 = "[fnt_pixel]Oh, Sam, hello! I see another temple has been freed from the dark forces?";
            text2 = "[fnt_pixel]I hope you're not leaving your bouncer [c_red]Petro[/c] there. Or are you?";
            text3 = "[fnt_pixel]Either way, it's time for you to set sail, so let me know when you're ready.";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]О, Сэм, привет! Как я посмотрю еще один храм освобожден от влияния темных сил?";
			text2 = "[fnt_pixel_ru]Надеюсь, ты не бросишь своего вышибалу [c_red]Петро[/c] там? Или все таки бросишь?";
			text3 = "[fnt_pixel_ru]В любом случае тебе пора отплывать, дай знать как будешь готов.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]Oh, Sam, ¡hola! Veo que otro templo ha sido liberado de las fuerzas oscuras?";
			text2 = "[fnt_pixel]Espero que no dejes a tu portero [c_red]Petro[/c] allí. ¿O sí?";
			text3 = "[fnt_pixel]De cualquier manera, es hora de que zarpe, así que avísame cuando estés listo.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]哦，Sam，你好！我看到另一个寺庙已经从黑暗势力中解放出来了？";
			text2 = "[fnt_pixel]我希望你没有把你的保镖[c_red]Petro[/c]留在那里。还是说，你已经留下他了？";
			text3 = "[fnt_pixel]不管怎样，现在是你起航的时候了，所以当你准备好的时候，告诉我一声。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Oh, Sam, olá! Vejo que outro templo foi libertado das forças das trevas?";
			text2 = "[fnt_pixel]Espero que você não esteja deixando seu portador [c_red]Petro[/c] lá. Ou está?";
			text3 = "[fnt_pixel]De qualquer forma, é hora de você zarpar, então me avise quando estiver pronto.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Oh, Sam, olá! Vejo que outro templo foi libertado das forças obscuras?";
			text2 = "[fnt_pixel]Espero que você não esteja deixando seu segurança [c_red]Petro[/c] lá. Ou está?";
			text3 = "[fnt_pixel]De qualquer forma, é hora de você zarpar, então me avise quando estiver pronto.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Oh, Sam, witaj! Widzę, że kolejna świątynia została uwolniona od mrocznych sił?";
			text2 = "[fnt_pixel]Mam nadzieję, że nie zostawiasz tam swojego bramkarza [c_red]Petro[/c]. A może tak?";
			text3 = "[fnt_pixel]Tak czy inaczej, czas dla ciebie wyruszyć w rejs, więc daj mi znać, kiedy będziesz gotowy.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]おお、サム、こんにちは！別の寺院が暗黒の力から解放されたことを見ましたか？";
			text2 = "[fnt_pixel]あなたがあなたのバウンサーの[c_red]ペトロ[/c]をそこに残さないことを願っています。それとも、あなたはそうですか？";
			text3 = "[fnt_pixel]いずれにせよ、航海を始める時間ですので、準備ができたら私に知らせてください。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Oh, Sam, hallo! Ich sehe, ein weiterer Tempel wurde von den dunklen Mächten befreit? ";
			text2 = "[fnt_pixel]Ich hoffe, du lässt deinen Türsteher [c_red]Petro[/c] nicht dort. Oder doch? ";
			text3 = "[fnt_pixel]Wie auch immer, es ist Zeit für dich, in See zu stechen, also lass es mich wissen, wenn du bereit bist.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Oh, Sam, bonjour! Je vois qu'un autre temple a été libéré des forces obscures?";
			text2 = "[fnt_pixel]J'espère que tu ne laisses pas ton videur [c_red]Petro[/c] là-bas. Ou est-ce que tu le fais?";
			text3 = "[fnt_pixel]De toute façon, il est temps pour toi de prendre la mer, alors fais-moi savoir quand tu es prêt.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Oh, Sam, ciao! Vedo che un altro tempio è stato liberato dalle forze oscure?";
			text2 = "[fnt_pixel]Spero che non stai lasciando il tuo buttafuori [c_red]Petro[/c] lì. O lo stai?";
			text3 = "[fnt_pixel]In ogni caso, è ora che tu metta le vele, quindi fammi sapere quando sei pronto.";
			break;
    }
}    

function scr_txt_shadow_merch8(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]Great, great! You can talk to [c_red]Petro[/c] outside.";
            text2 = "[fnt_pixel]He might have some kind of [c_red]gift[/c] for you.";
            text3 = "[fnt_pixel]As soon as you're done with that, let me know.";
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]Великолепно, великолепно! Можешь поговорить с [c_red]Петро[/c] снаружи. ";
			text2 = "[fnt_pixel_ru]Возможно у него есть какой-то [c_red]подарок[/c] для тебя.";
			text3 = "[fnt_pixel_ru]Как только закончишь с этим - дай мне знать.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¡Estupendo, estupendo! Puedes hablar con [c_red]Petro[/c] afuera.";
			text2 = "[fnt_pixel]Puede que tenga algún tipo de [c_red]regalo[/c] para ti.";
			text3 = "[fnt_pixel]En cuanto termines con eso, avísame.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]太好了，太好了！你可以跟外面的[c_red]Petro[/c]谈谈。";
			text2 = "[fnt_pixel]他可能有一[c_red]些礼物给你[/c]。";
			text3 = "[fnt_pixel]一旦你做完那些，就告诉我一声。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Ótimo, ótimo! Você pode falar com [c_red]Petro[/c] lá fora.";
			text2 = "[fnt_pixel]Ele pode ter algum tipo de [c_red]presente[/c] para você.";
			text3 = "[fnt_pixel]Assim que terminar isso, me avise.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Ótimo, ótimo! Você pode falar com o [c_red]Petro[/c] lá fora.";
			text2 = "[fnt_pixel]Ele pode ter algum tipo de [c_red]presente[/c] para você.";
			text3 = "[fnt_pixel]Assim que terminar com isso, me avise.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Wspaniale, wspaniale! Możesz porozmawiać z [c_red]Petro[/c] na zewnątrz.";
			text2 = "[fnt_pixel]Być może ma dla ciebie jakiś [c_red]prezent[/c].";
			text3 = "[fnt_pixel]Gdy skończysz, daj mi znać.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]素晴らしい、素晴らしい！外で[c_red]ペトロ[/c]と話すことができます。";
			text2 = "[fnt_pixel]彼はあなたに何か[c_red]ギフトを[/c]持っているかもしれません。";
			text3 = "[fnt_pixel]それが終わったらすぐ、私に知らせてください。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Großartig, großartig! Du kannst draußen mit [c_red]Petro[/c] sprechen. ";
			text2 = "[fnt_pixel]Er könnte eine Art [c_red]Geschenk[/c] für dich haben. ";
			text3 = "[fnt_pixel]Sobald du damit fertig bist, sag mir Bescheid.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Super, super ! Tu peux parler à [c_red]Petro[/c] dehors.";
			text2 = "[fnt_pixel]Il pourrait avoir une sorte de [c_red]cadeau[/c] pour toi.";
			text3 = "[fnt_pixel]Dès que tu as fini avec ça, fais-le moi savoir.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Ottimo, ottimo! Puoi parlare con [c_red]Petro[/c] fuori.";
			text2 = "[fnt_pixel]Potrebbe avere qualche tipo di [c_red]regalo[/c] per te.";
			text3 = "[fnt_pixel]Appena hai finito con quello, fammi sapere.";
			break;
    }
}
    
function scr_txt_shadow_merchhelp(){
    switch(global.language){
        case 0:
            #region eng
            text1 = "[fnt_pixel]Oh, hey! I was traveling and came across this mechanism."
            text2 = "[fnt_pixel]The lever that activates it looks unreliable, so I didn't touch it."
            text3 = "[fnt_pixel]I've seen this device before. I think you have to turn on the lights in the order shown."
            text4 = "[fnt_pixel]Well, you can figure it out, I don't think it's too complicated."
            text5 = "[fnt_pixel]I gotta go, see you later."
            #endregion
            break;
		case 1: //rus
			text1 = "[fnt_pixel_ru]О, привет! Я путешествовал и наткнулся на этот механизм.";
			text2 = "[fnt_pixel_ru]Рычаг, который его активирует, выглядит ненадежно, поэтому я его не трогал.";
			text3 = "[fnt_pixel_ru]Однако я видел это устройство раньше. Думаю, тебе нужно включить свет в указанном порядке.";
			text4 = "[fnt_pixel_ru]Ну, ты разберешься. Я не думаю, что это слишком сложно.";
			text5 = "[fnt_pixel_ru]А сейчас мне пора идти, увидимся позже.";
			break;
		case 2: //es
			text1 = "[fnt_pixel]¡Oh, hola! Estaba viajando y me encontré con este mecanismo.";
			text2 = "[fnt_pixel]La palanca que lo activa parece poco fiable, así que no la toqué.";
			text3 = "[fnt_pixel]He visto este dispositivo antes. Creo que tienes que encender las luces en el orden indicado.";
			text4 = "[fnt_pixel]Bueno, puedes averiguarlo, no creo que sea demasiado complicado.";
			text5 = "[fnt_pixel]Tengo que irme, nos vemos más tarde.";
			break;
		case 3: //cn
			text1 = "[fnt_pixel]噢，嘿！我在旅行时遇到了这个机械。";
			text2 = "[fnt_pixel]启动它的杆子看起来不太稳定，所以我没碰它。";
			text3 = "[fnt_pixel]我以前见过这个设备。我觉得你必须按照显示的顺序开灯。";
			text4 = "[fnt_pixel]嗯，你可以自己试试看，我不认为这太复杂。";
			text5 = "[fnt_pixel]我得走了，再見。";
			break;
		case 4: //pt
			text1 = "[fnt_pixel]Oh, oi! Estava viajando e me deparei com este mecanismo.";
			text2 = "[fnt_pixel]A alavanca que o ativa parece pouco confiável, então eu não toquei nela.";
			text3 = "[fnt_pixel]Eu já vi este dispositivo antes. Eu acho que você tem que acender as luzes na ordem mostrada.";
			text4 = "[fnt_pixel]Bem, você pode descobrir, eu não acho que seja muito complicado.";
			text5 = "[fnt_pixel]Eu tenho que ir, vejo você mais tarde.";
			break;
		case 5: //br
			text1 = "[fnt_pixel]Oh, oi! Eu estava viajando e me deparei com este mecanismo.";
			text2 = "[fnt_pixel]A alavanca que o ativa parece não confiável, então eu não toquei nela.";
			text3 = "[fnt_pixel]Eu já vi este dispositivo antes. Acho que você tem que acender as luzes na ordem mostrada.";
			text4 = "[fnt_pixel]Bem, você pode descobrir isso, eu não acho que seja muito complicado.";
			text5 = "[fnt_pixel]Eu tenho que ir, te vejo depois.";
			break;
		case 6: //pl
			text1 = "[fnt_pixel]Oh, cześć! Podczas podróży natknąłem się na tę maszynę.";
			text2 = "[fnt_pixel]Dźwignia, która ją aktywuje, wygląda na niewiarygodną, więc jej nie dotykałem.";
			text3 = "[fnt_pixel]Widziałem już wcześniej takie urządzenie. Myślę, że musisz włączyć światła w pokazanej kolejności.";
			text4 = "[fnt_pixel]No cóż, dasz radę to wydedukować, nie wydaje mi się to zbyt skomplikowane.";
			text5 = "[fnt_pixel]Muszę lecieć, do zobaczenia później.";
			break;
		case 7: //jp
			text1 = "[fnt_pixel]おお、やあ！旅行中にこのメカニズムに出くわしました。";
			text2 = "[fnt_pixel]それを活性化するレバーは信頼性が低いため、触らなかった。";
			text3 = "[fnt_pixel]このデバイスを以前に見たことがあります。表示された順序でライトを点灯する必要があると思います。";
			text4 = "[fnt_pixel]まあ、それはあなたが解決できます、それが複雑すぎるとは思わない。";
			text5 = "[fnt_pixel]私は行かなければならない、また会いましょう。";
			break;
		case 8: //de
			text1 = "[fnt_pixel]Oh, hey! Ich war unterwegs und habe diesen Mechanismus entdeckt.";
			text2 = "[fnt_pixel]Der Hebel, der ihn aktiviert, sieht unzuverlässig aus, also habe ich ihn nicht angefasst.";
			text3 = "[fnt_pixel]Ich habe dieses Gerät schon einmal gesehen. Ich denke, du musst die Lichter in der angegebenen Reihenfolge einschalten.";
			text4 = "[fnt_pixel]Naja, du kannst das herausfinden, ich denke nicht, dass es zu kompliziert ist.";
			text5 = "[fnt_pixel]Ich muss los, bis später.";
			break;
		case 9: //fr
			text1 = "[fnt_pixel]Oh, salut! J'étais en voyage et je suis tombé sur ce mécanisme.";
			text2 = "[fnt_pixel]Le levier qui l'active a l'air peu fiable, alors je ne l'ai pas touché.";
			text3 = "[fnt_pixel]J'ai déjà vu ce dispositif. Je pense que tu dois allumer les lumières dans l'ordre indiqué.";
			text4 = "[fnt_pixel]Eh bien, tu peux comprendre, je ne pense pas que ce soit trop compliqué.";
			text5 = "[fnt_pixel]Je dois y aller, à plus tard.";
			break;
		case 10: //it
			text1 = "[fnt_pixel]Oh, ciao! Sto viaggiando e ho trovato questo meccanismo.";
			text2 = "[fnt_pixel]La leva che lo attiva sembra inaffidabile, quindi non l'ho toccato.";
			text3 = "[fnt_pixel]Ho già visto questo dispositivo prima. Penso che tu debba accendere le luci nell'ordine mostrato.";
			text4 = "[fnt_pixel]Beh, puoi capirlo, non penso sia troppo complicato.";
			text5 = "[fnt_pixel]Devo andare, ci vediamo dopo.";
			break;
            
    }
}    



/*
function scr_txt_shadow_merch5(){
    switch(global.language){
        case 0:
            #region English
            text1 = "[fnt_pixel]Are we leaving already?";
            text2 = "[fnt_pixel]That big guy Petro is saved! Magnificent! Are you ready to sail now?";
            #endregion
            break;
    }
}   