function scr_txt_jungle_merchant1(){
    switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = choose("[fnt_pixel]Maybe talk to a chief first?","[fnt_pixel]I advise you to go to the chief.");
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = choose("[fnt_pixel_ru]Может, сначала поговорить с вождем?","[fnt_pixel_ru]Я советую вам обратиться к вождю.");
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = choose("[fnt_pixel]¿Tal vez habla con el jefe primero?","[fnt_pixel]Te aconsejo que vayas con el jefe.");
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = choose("[fnt_pixel]你为什么不先和酋长谈谈？","[fnt_pixel]我劝你去见酋长.");
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = choose("[fnt_pixel]Talvez fala com um chefe primeiro?","[fnt_pixel]Aconselho-te a ir falar com o chefe.");
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = choose("[fnt_pixel]Talvez fale com um chefe primeiro?","[fnt_pixel]Eu te aconselho a ir ver o chefe.");
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = choose("[fnt_pixel]Może pierwsze porozmawiaj z szefem?","[fnt_pixel]Radzę ci iść do szefa.");
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = choose("[fnt_pixel]先にチーフと話したら？","[fnt_pixel]チーフのところへ行くことをお勧めする。");
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = choose("[fnt_pixel]Vielleicht solltest du zuerst mit dem Häupling sprechen?","[fnt_pixel]Ich rate dir, zum Häupling zu gehen.");
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = choose("[fnt_pixel]Peut-être parler à un chef d'abord ? ","[fnt_pixel]Je vous conseille d'aller voir le chef.");
            #endregion
            break;
        case 10: //Italian
            #region  ENG text
            eng1 = choose("[fnt_pixel]Perché non parli prima con un capo?","[fnt_pixel]Ti consiglio di andare dal capo.");
            #endregion
            break;
    }    
}
    
function scr_txt_jungle_merchant2(){
    switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "[fnt_pixel]Well, I'm glad you got here safely. I knew you were the one for me. Heh heh...";
            eng2 = "[fnt_pixel]As you can see, there's a lot of interesting things in my shop. I'd sell you anything for the right price. Speaking of money.";
            eng3 = "[fnt_pixel]You might find some green coins along the way, be sure to collect them-they're very valuable, you know. For example, you can give them to me, and I'll make you stronger";
            eng4 = "[fnt_pixel]Also, I saw you in action in that underground temple. You'll be able to drop dark essence from some of your enemies. Depending on your actions, your style rating will go up and more essence will drop out!";
            eng5 = "[fnt_pixel]Later on I will be able to exchange it for your training.";
            eng6 = "[fnt_pixel]At this point, I bid you farewell. My dear friend, captain, I'm sure you'll manage to save your crew and come back safe and sound. Good luck on your journey!";
            eng7 = "[fnt_pixel]In the meantime, here's a memo to help you figure out your battles.";
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "[fnt_pixel_ru]Я рад, что ты добрался благополучно. Я знал, что ты тот, кто мне нужен. Хе-хе...";
            eng2 = "[fnt_pixel_ru]Как видишь, в моем магазине много интересных вещей. Я готов продать вам всё, что угодно, за правильную цену. Кстати, о деньгах.";
            eng3 = "[fnt_pixel_ru]По дороге ты сможешь найти зеленые монеты, обязательно собери их - они очень ценные. Например, ты можешь отдать их мне, и я сделаю тебя сильнее";
            eng4 = "[fnt_pixel_ru]Кроме того, я видел тебя в действии в том подземном храме. Из некоторых врагов будет выпадать темная эссенция. В зависимости от твоих действий твой рейтинг стиля будет повышаться, и из врагов будет выпадать больше эссенции!";
            eng5 = "[fnt_pixel_ru]Позже я смогу обменять ее на твои улучшения";
            eng6 = "[fnt_pixel_ru]На этом я прощаюсь с вами. Мой дорогой друг, капитан, я уверен, что вам удастся спасти свою команду и вернуться целым и невредимым. Удачи вам в путешествии!";
            eng7 = "[fnt_pixel_ru]А пока, вот памятка, которая поможет вам разобраться в ваших сражениях.";
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "[fnt_pixel]Me alegro de que hayas llegado bien. Sabía que eras el indicado para mí. Je je...";
            eng2 = "[fnt_pixel]Como puedes ver, hay muchas cosas interesantes en mi tienda. Te vendería cualquier cosa por un precio justo. Hablando de dinero.";
            eng3 = "[fnt_pixel]Puede que encuentres algunas monedas verdes por el camino, asegúrate de recogerlas; son muy valiosas, ya sabes. Por ejemplo, puedes dármelas y te haré más fuerte.";
            eng4 = "[fnt_pixel]Además, te vi en acción en ese templo subterráneo. Algunos enemigos sueltan esencia oscura de algunos de ellos. ¡Dependiendo de tus acciones, tu puntuación de estilo subirá y caerá más esencia!";
            eng5 = "[fnt_pixel]Más adelante podré canjearla por tu entrenamiento.";
            eng6 = "[fnt_pixel]En este punto, me despido de ti. Mi querido amigo, capitán, estoy seguro de que lograrás salvar a tu tripulación y volver sano y salvo. ¡Buena suerte en tu travesía!";
            eng7 = "[fnt_pixel]Mientras tanto, aquí tienes un memorándum para ayudarte a resolver tus batallas.";
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]好吧, 我很高兴你安全到达这里. 我知道我可以指望你. 哈哈…";
            eng2 = "[fnt_pixel]如您所见, 我的店里有很多有趣的东西. 我会以合适的价格卖给你任何东西. 但是说到钱...";
            eng3 = "[fnt_pixel]沿途你会发现一些绿色硬币. 一定要收集它们——它们非常有价值. 比如你可以给我, 我会让你变得更强.";
            eng4 = "[fnt_pixel]我在那个地下神殿里看到了你的行动. 你可以从你的一些敌人身上掉落黑暗精华.  根据你的风格, 你的评分会上升, 更多的精华会掉落!";
            eng5 = "[fnt_pixel]以后可以用来换取你的修炼.";
            eng6 = "[fnt_pixel]在这一点上, 我向你致敬. 我亲爱的朋友, 船长, 我相信你一定能够拯救你的船员并安全返回. 祝你好运!";
            eng7 = "[fnt_pixel]与此同时, 这里有一份备忘录可以帮助你了解你的战斗. ";
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "[fnt_pixel]Fico feliz que tenhas chegado em segurança. Sabia que eras a pessoa certa para mim. Heh heh...";
            eng2 = "[fnt_pixel]Como podes ver, há muitas coisas interessantes na minha loja. Eu vendia-te qualquer coisa pelo preço certo. Por falar em dinheiro.";
            eng3 = "[fnt_pixel]Podes encontrar algumas moedas verdes pelo caminho, recolha-as, são muito valiosas. Por exemplo, podes dá-las a mim, e eu vou tornar-te mais forte.";
            eng4 = "[fnt_pixel]Além disso, vi-te em ação naquele templo subterrâneo. Alguns inimigos vão deixar cair a essência negra de alguns deles. Dependendo das tuas ações, a tua classificação de estilo vai subir e mais essência vai cair!";
            eng5 = "[fnt_pixel]Mais tarde, poderei trocar pelo teu treino.";
            eng6 = "[fnt_pixel]Neste momento, despeço-me. Meu caro amigo, capitão, tenho a certeza que conseguirás salvar a tua tripulação e voltar são e salvo. Boa sorte na viagem!";
            eng7 = "[fnt_pixel]Entretanto, aqui está um memorando para te ajudar a resolver as tuas batalhas.";
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "[fnt_pixel]Bem, estou feliz que você chegou aqui com segurança. Eu sabia que você era a pessoa certa para mim. heh heh...";
            eng2 = "[fnt_pixel]Como você pode ver, há muitas coisas interessantes na minha loja. Eu te venderia qualquer coisa pelo preço certo. Falando em dinheiro.";
            eng3 = "[fnt_pixel]Você pode encontrar algumas moedas verdes ao longo do caminho, colete-as - elas são muito valiosas, você sabe. Por exemplo, você pode dá-las para mim, e eu vou te tornar mais forte";
            eng4 = "[fnt_pixel]Além disso, eu vi você em ação naquele templo subterrâneo. Alguns inimigos soltarão uma essência negra de alguns deles. Dependendo de suas ações, sua classificação de estilo aumentará e mais essência vai cair!";
            eng5 = "[fnt_pixel]Mais tarde poderei trocar por seu treinamento.";
            eng6 = "[fnt_pixel]Neste ponto, vou me despedindo. Meu caro amigo, capitão, tenho certeza que você conseguirá salvar sua tripulação e voltar são e salvo. Boa sorte na sua jornada!";
            eng7 = "[fnt_pixel]Enquanto isso, aqui está um memorando para te ajudar a descobrir suas batalhas.";
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "[fnt_pixel]Cieszę się, że dotarłeś bezpiecznie. Wiedziałem, że to ty. Heh heh…";
            eng2 = "[fnt_pixel]Jak widzisz, w moim sklepie jest wiele ciekawych rzeczy. Mogę sprzedać Ci wszystko, ale za odpowiednią cenę. Jeśli rozmawiamy o pieniądzach...";
            eng3 = "[fnt_pixel]Po drodze możesz znaleźć kilka zielonych monet, pamiętaj, aby je zbierać - są bardzo cenne. Możesz na przykład dać je mnie, a ja uczynię cię silniejszym.";
            eng4 = "[fnt_pixel]Ponadto, widziałem cię w akcji w tej podziemnej świątyni. Będziesz mógł upuścić mroczną esencję z niektórych wrogów. W zależności od twoich działań, twoja ocena stylu pójdzie w górę i będzie spadać więcej esencji!";
            eng5 = "[fnt_pixel]Później będę mógł wymienić go na twój trening.";
            eng6 = "[fnt_pixel]Teraz żegnam cię. Mój drogi przyjacielu, jestem pewien, że uda Ci się uratować swoją załogę i wrócisz cały i zdrowy. Powodzenia w dalszej podróży!";
            eng7 = "[fnt_pixel]Oto notka, która pomoże ci w rozgryzieniu twoich bitew.";
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "[fnt_pixel]無事に到着してよかった。やっぱり、君は僕の運命の人だ。へっへっへ...";
            eng2 = "[fnt_pixel]見ての通り、私の店には面白いものがたくさんある。適正な価格で何でも売るよ。お金といえば。";
            eng3 = "[fnt_pixel]道中、緑のコインを見つけることがあるかもしれない。ぜひ集めてくれ、とても貴重なものだ。例えば、それを私に渡してくれれば、もっと強くしてあげよう。";
            eng4 = "[fnt_pixel]あと、地下神殿で君の活躍を見た。一部の敵はダークエッセンスをドロップする。君の行動次第で、スタイル評価が上がり、より多くのエッセンスがドロップするようになる！";
            eng5 = "[fnt_pixel]後日、君の修行と引き換えにさせてもらうよ。";
            eng6 = "[fnt_pixel]この辺で、お別れだ。親愛なる友人である船長、なんとかクルーを救って無事に帰ってきてくれ。旅路の幸運を祈る！";
            eng7 = "[fnt_pixel]とりあえず、戦況を把握するためのメモだ。";
            #endregion
            break;
        case 8: //deutch    
            #region  ENG text
            eng1 = "[fnt_pixel]Nun, ich bin froh, dass du gut angekommen bist. Ich wusste, dass du der Richtige für mich bist. Heh heh...";
            eng2 = "[fnt_pixel]Wie du siehst, gibt es eine Menge interessanter Dinge in meinem Laden. Für den richtigen Preis würde ich dir alles verkaufen. Apropos Geld.";
            eng3 = "[fnt_pixel]Vielleicht findest du unterwegs ein paar grüne Münzen, die du unbedingt sammeln solltest - sie sind sehr wertvoll, weißt du? Du kannst sie zum Beispiel mir geben, und ich mache dich dadurch stärker.";
            eng4 = "[fnt_pixel]Außerdem habe ich dich in dem unterirdischen Tempel in Aktion gesehen. Manche Feinde verlieren eine dunkle Essenz. Je nachdem, was du tust, steigt deine Stilbewertung und du erhältst mehr Essenz!";
            eng5 = "[fnt_pixel]Später kann ich es dann gegen deine Ausbildung eintauschen.";
            eng6 = "[fnt_pixel]An dieser Stelle verabschiede ich mich von dir. Mein lieber Freund, Kapitän, ich bin mir sicher, dass du es schaffen wirst, deine Mannschaft zu retten und heil zurückzukommen. Viel Glück auf deiner Reise!";
            eng7 = "[fnt_pixel]In der Zwischenzeit findest du hier ein Memo, das dir hilft, deine Schlachten zu planen.";
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "[fnt_pixel]Je suis content que vous soyez bien arrivé. Je savais que vous étiez le bon pour moi. Heh heh...";
            eng2 = "[fnt_pixel]Comme vous pouvez le voir, il y a beaucoup de choses intéressantes dans ma boutique. Je vous vendrais n'importe quoi pour un bon prix. En parlant d'argent.";
            eng3 = "[fnt_pixel]Vous trouverez peut-être des pièces vertes en chemin, n'hésitez pas à les collectionner, elles ont beaucoup de valeur, vous savez. Par exemple, vous pouvez me les donner et je vous rendrai plus fort.";
            eng4 = "[fnt_pixel]Aussi, je vous ai vu en action dans ce temple souterrain. Certains ennemis vont laisser tomber de l'essence noire. En fonction de vos actions, votre note de style augmentera et plus d'essence tombera !";
            eng5 = "[fnt_pixel]Plus tard, je pourrai l'échanger contre votre formation.";
            eng6 = "[fnt_pixel]A ce stade, je vous fais mes adieux. Mon cher ami, capitaine, je suis sûr que vous parviendrez à sauver votre équipage et à revenir sain et sauf. Bonne chance pour votre voyage !";
            eng7 = "[fnt_pixel]En attendant, voici un mémo pour vous aider à déterminer vos batailles.";
            #endregion
            break;
        case 10: //Italian
            #region  ENG text
            eng1 = "[fnt_pixel]Danque, sono contento che tu sia arrivato qui sano e salvo. Sapevo di poter contare su di te. Ah ah...";
            eng2 = "[fnt_pixel]Come puoi vedere, ci sono molte cose interessanti nel mio negozio. Ti venderei qualsiasi cosa al giusto prezzo. Ma parlando di soldi...";
            eng3 = "[fnt_pixel]Troverai alcune monete verdi lungo la strada. Assicurati di collezionarli: sono molto preziosi. Ad esempio, puoi darmeli e io ti renderò più forte";
            eng4 = "[fnt_pixel]Inoltre, ti ho visto in azione in quel tempio sotterraneo. Puoi far cadere l'essenza oscura da alcuni dei tuoi nemici. A seconda del tuo stile, la tua valutazione aumenterà e più essenza cadrà!";
            eng5 = "[fnt_pixel]Più tardi potrò scambiarlo con la tua formazione.";
            eng6 = "[fnt_pixel]A questo punto, ti saluto. Mio caro amico, capitano, sono sicuro che riuscirai a salvare il tuo equipaggio e a tornare sano e salvo. Buona fortuna per il tuo viaggio!";
            eng7 = "[fnt_pixel]Nel frattempo, ecco un promemoria per aiutarti a capire le tue battaglie.";
            #endregion
            break;
    }    
}
    
function scr_txt_jungle_merchant3(){
    switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = choose("[fnt_pixel]Well, what are you waiting for? Just go. I said good luck on your journey!","[fnt_pixel]Tick-tock, the clock is ticking. Go save the team. Good luck!");
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = choose("[fnt_pixel_ru]Ну, чего же ты ждешь? Желаю тебе удачи в пути!","[fnt_pixel_ru]Тик-так, часики тикают. Иди, спасай команду. Удачи!");
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = choose("[fnt_pixel]Bueno, ¿a qué estás esperando? Vete. ¡Dije buena suerte en tu travesía!","[fnt_pixel]Tic-tac, el reloj está corriendo. Ve a salvar al equipo. ¡Buena suerte!");
            #endregion
            break;
        case 3: //chinese   
            #region  ENG text
            eng1 = choose("[fnt_pixel]那么, 你还等什么呢? 去吧. 再次祝您旅途愉快!","[fnt_pixel]滴答滴答, 时间不多了. 去拯救你的船员. 祝你好运!");
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = choose("[fnt_pixel]Bem, do que está à espera? Vai e pronto. Eu disse boa sorte na viagem!","[fnt_pixel]Tique-taque, o tempo está a passar. Vai salvar a equipa. Boa sorte!");
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = choose("[fnt_pixel]Bem, o que você está esperando? Vá. Eu disse boa sorte na sua jornada!","[fnt_pixel]Tique-taque, o tempo está passando. Vá salvar o time. Boa sorte!");
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = choose("[fnt_pixel]Na co czekasz? Po prostu idź. Przecież powiedziałem: powodzenia w dalszej podróży!","[fnt_pixel]Tik-tak, zegar tyka. Idź ratować drużynę. Powodzenia!");
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = choose("[fnt_pixel]何を待ってる？早く行け。旅路の幸運を祈る！","[fnt_pixel]時計の針がチクタク。チームを救いに行け。幸運を！");
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = choose("[fnt_pixel]Also, worauf wartest du noch? Fang einfach an. Ich wünsche dir Viel Glück für deine Reise!","[fnt_pixel]Tick-tack, die Uhr tickt. Geh und rette die Mannschaft. Viel Glück!");
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = choose("[fnt_pixel]Eh bien, qu'est-ce que vous attendez ? Allez-y. J'ai dit bonne chance pour votre voyage !","[fnt_pixel]Tic-tac, l'horloge fait tic-tac. Allez sauver l'équipe. Bonne chance !");
            #endregion
            break;
        case 10: //Italian
            #region  ENG text
            eng1 = choose("[fnt_pixel]Allora, cosa stai aspettando? Vai. Ancora una volta, buona fortuna per il tuo viaggio!","[fnt_pixel]Tic tac, il tempo stringe. Vai a salvare il tuo equipaggio. In bocca al lupo!");
            #endregion
            break;
    }       
}
    
function scr_txt_jungle_merchant4(){    
    switch(global.language){
        case 0:
            #region  english
            text1 = "[fnt_pixel]It's done. Now you can sail to the other island.";
            text2 = "[fnt_pixel]However, there's a little problem. It's your friend Jake.";
            text3 = "[fnt_pixel]I can help you get rid of his curse, but I will need 7 green coins that you could find on this island.";
            text4 = "[fnt_pixel]Just insert them into the coin receiver on the left, magic will happen and your friend will be in the village!";
            text5 = "[fnt_pixel]Whether you save him, keep the coins or do without them at all is up to you.";
            text6 = "[fnt_pixel]When you decide to go, let me know. But remember.";
            text7 = "[fnt_pixel]You'll never make it back to this island. Hehehe.";
            #endregion
            break;
    }
}

function scr_txt_jungle_merchant5(){   
    switch(global.language){
        case 0:
            #region Eng
            text1 = "[fnt_pixel]You're about to set sail, huh? There's no turning back, Jake will stay in the temple forever.";
            #endregion
            break;
    }      
}

function scr_txt_jungle_merchant6(){   
    switch(global.language){
        case 0:
            #region Eng
            text1 = "[fnt_pixel]It's time to go! Jake's saved, you can still talk to him in the village.";
            #endregion
            break;
    }  
}
    
function scr_txt_jungle_merchant7(){  
    switch(global.language){
        case 0:
            #region Eng
            text1 = "[fnt_pixel]Let's set sail now!";
            #endregion
            break;
    }  
}    