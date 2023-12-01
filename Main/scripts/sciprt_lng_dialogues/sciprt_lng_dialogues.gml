// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function fnc_lng_intro(){
 
switch(global.language)
{
    case 0: //English
        #region
        eng1 = "[fnt_pixel]Anyone who's had a drink in a smelly port pub knows the legend. How it came to be, even the hardened sea wolves don't remember."
        eng2 = "[fnt_pixel]However, that doesn't stop them from scaring young sailors"
        eng3 = "[fnt_pixel]They say that in the boundless ocean there is a cursed archipelago full of secrets and dangers. Whoever can break the curse will be rewarded with untold riches and glory.";
        eng4 = "[fnt_pixel]Many believed the story and went to seek the adventure.";
        eng5 = "[fnt_pixel]It is said that the curse itself finds the ships of those worthy to set foot on its soil.[delay,5000] \nOnly the bravest trailblazers will be able to unravel all the secrets of this mysterious land.";
        eng6 = "[fnt_pixel]<Oh, it seems another guest has come ashore. I hope we'll get along.>";
        skip_txt = "press any key to skip";
        #endregion        
        break;
    case 1: //russian
        #region
        eng1 = "[fnt_pixel_ru]Каждый, кто выпивал в вонючем портовом пабе, знает эту легенду. Как она появилась, не помнят даже закаленные морские волки."
        eng2 = "[fnt_pixel_ru]Однако это не мешает им пугать этим молодых моряков."
        eng3 = "[fnt_pixel_ru]Говорят, что в безбрежном океане есть проклятый архипелаг, полный тайн и опасностей. Тот, кто сможет снять проклятие, будет вознагражден несметными богатствами и славой.";
        eng4 = "[fnt_pixel_ru]Многие поверили в эту историю и отправились на поиски приключений.";
        eng5 = "[fnt_pixel_ru]Говорят, что само проклятие находит корабли тех, кто достоин ступить на его землю.[delay,5000] \nТолько самые отважные первопроходцы смогут разгадать все секреты этой загадочной земли.";
        eng6 = "[fnt_pixel_ru]<О, кажется, еще один гость сошел на берег. Надеюсь, мы поладим.>";
        skip_txt = "нажмите любую клавишу для пропуска";
        #endregion
        break;
    case 2: //spanish
        #region
        eng1 = "[fnt_pixel]Cualquiera que haya bebido en una taberna portuaria maloliente conoce la leyenda. Cómo surgió, ni siquiera los curtidos lobos de mar lo recuerdan."
        eng2 = "[fnt_pixel]Sin embargo, eso no les impide asustar a los jóvenes marineros."
        eng3 = "[fnt_pixel]Dicen que en el océano infinito hay un archipiélago maldito lleno de secretos y peligros. Quien consiga romper la maldición será recompensado con riquezas y gloria incalculables.";
        eng4 = "[fnt_pixel]Muchos creyeron la historia y partieron en busca de aventuras.";
        eng5 = "[fnt_pixel]Se dice que la propia maldición encuentra los barcos de aquellos dignos de pisar su suelo.[delay,5000] \nSólo los pioneros más valientes podrán desenmascarar todos los secretos de esta tierra misteriosa.";
        eng6 = "[fnt_pixel]<Oh, parece que otro invitado ha desembarcado. Espero que nos llevemos bien.>";
        skip_txt = "pulsa cualquier tecla para saltar";
        #endregion
        break;
    case 3: //chinese
        #region
        eng1 = "[fnt_pixel]去过臭港酒吧的人都知道这个传说. 即使是最恶毒的海员也不记得这一切是如何开始的."
        eng2 = "[fnt_pixel]然而, 这并不能阻止他们吓唬年轻的水手."
        eng3 = "[fnt_pixel]他们说在无边无际的海洋中可以找到一个被诅咒的群岛, 那里充满了秘密和危险. 谁能打破诅咒, 谁就会获得无尽的财富和荣耀.";
        eng4 = "[fnt_pixel]许多人相信了这个故事并去寻求冒险.";
        eng5 = "[fnt_pixel]他们说诅咒本身会发现那些值得踏上群岛的人的船只.[delay,5000] \n只有最勇敢的开拓者才能揭开这片神秘土地的所有秘密.";
        eng6 = "[fnt_pixel]<哦, 好像又来了一位客人. 希望我们能找到共同语言.>";
        skip_txt = "按任意键跳过";
        #endregion
        break;
    case 4: //portug
        #region
        eng1 = "[fnt_pixel]Qualquer um que tenha bebido num bar de porto fedorento conhece a lenda. Como ela surgiu, nem mesmo os duros lobos do mar não se lembram."
        eng2 = "[fnt_pixel]No entanto, isso não os impede de assustar jovens marinheiros."
        eng3 = "[fnt_pixel]Dizem que no imenso oceano há um arquipélago amaldiçoado, cheio de segredos e perigos. Quem conseguir quebrar a maldição será recompensado com riquezas e glória incalculáveis.";
        eng4 = "[fnt_pixel]Muitos acreditaram na história e foram à procura da aventura.";
        eng5 = "[fnt_pixel]Diz-se que a maldição em si encontra os navios daqueles dignos de pisar o seu solo.[delay,5000] \nSó os mais corajosos pioneiros serão capazes de desvendar todos os segredos desta misteriosa terra.";
        eng6 = "[fnt_pixel]<Parece que outro convidado chegou à costa. Espero que nos demos bem.>";
        skip_txt = "prima qualquer tecla para saltar";
        #endregion
        break;
    case 5: //brazil
        #region
        eng1 = "[fnt_pixel]Quem já bebeu em um bar fedorento do porto conhece a lenda. Como ela surgiu, nem mesmo os velhos lobos do mar se lembram."
        eng2 = "[fnt_pixel]No entanto, isso não os impede de assustar os jovens marinheiros"
        eng3 = "[fnt_pixel]Dizem que no imenso oceano existe um arquipélago amaldiçoado, cheio de segredos e perigos. Quem conseguir quebrar a maldição será recompensado com riquezas e glória incalculáveis.";
        eng4 = "[fnt_pixel]Muitos acreditaram na história e foram em busca da aventura.";
        eng5 = "[fnt_pixel]Dizem que a própria maldição encontra os navios das pessoas dignas de pisar em seu solo.[delay,5000] \nApenas os pioneiros mais corajosos serão capazes de desvendar todos os segredos desta terra misteriosa.";
        eng6 = "[fnt_pixel]<Oh, parece que outro convidado desembarcou. Espero dar-nos bem com eles.>";
        skip_txt = "pressione qualquer tecla para pular";
        #endregion
        break;
    case 6: //polish
        #region
        eng1 = "[fnt_pixel]Każdy, kto pił w śmierdzącym portowym pubie, zna tę legendę. Jak do niej doszło, nie pamiętają nawet zatwardziałe wilki morskie."
        eng2 = "[fnt_pixel]Nie przeszkadza im to jednak w straszeniu młodych żeglarzy"
        eng3 = "[fnt_pixel]Mówią, że na bezkresnym oceanie znajduje się przeklęty archipelag pełen tajemnic i niebezpieczeństw. Kto zdoła złamać klątwę, zostanie nagrodzony niewyobrażalnym bogactwem i chwałą.";
        eng4 = "[fnt_pixel]Wielu śmiałków uwierzyło w tę historię i wyruszyło na poszukiwanie przygód.";
        eng5 = "[fnt_pixel]Mówi się, że klątwa sama znajduje statki tych, którzy są godni postawić stopę na tej ziemi.[delay,5000] \nTylko najodważniejsi tropiciele będą w stanie odkryć wszystkie sekrety tej tajemniczej krainy.";
        eng6 = "[fnt_pixel]<Wygląda na to, że na brzegu pojawił się kolejny gość. Mam nadzieję, że się dogadamy.>";
        skip_txt = "Naciśnij dowolny klawisz aby pominąć";
        #endregion
        break;
    case 7: //japanese
        #region
        eng1 = "[fnt_pixel]臭い港のパブで飲んだことのある人なら誰でも知っている伝説だ。その由来は、経験豊富なシーウルフでさえも覚えていない。"
        eng2 = "[fnt_pixel]そうであっても、若い船員を怖がらせることに変わりはない"
        eng3 = "[fnt_pixel]果てしなく広がる大海原には、秘密と危険に満ちた呪われた群島があるそうだ。その呪いを解くことができた者は、莫大な富と栄光を手に入れることができるという。";
        eng4 = "[fnt_pixel]多くの人がその話を信じ、冒険を求め旅立った。";
        eng5 = "[fnt_pixel]呪いそのものが、その地に足を踏み入れるにふさわしい者の船を見つけると言われている。[delay,5000] \n勇敢な先駆者だけが、この神秘的な土地のすべての秘密を解き明かすことができる。";
        eng6 = "[fnt_pixel]<おっと、また一人お客が来たみたいだ。馬が合うといい。>";
        skip_txt = "いずれかのキーを押してスキップ";
        #endregion
        break;
    case 8: //deutch
        #region
        eng1 = "[fnt_pixel]Jeder, der schon einmal in einer stinkenden Hafenkneipe getrunken hat, kennt diese Legende. Wie sie entstanden ist, wissen selbst die hartgesottenen Seewölfe nicht mehr."
        eng2 = "[fnt_pixel]Das hält sie aber nicht davon ab, junge Seeleute zu erschrecken"
        eng3 = "[fnt_pixel]Es heißt, dass es im grenzenlosen Ozean eine verfluchte Inselgruppe voller Geheimnisse und Gefahren gibt. Wer den Fluch brechen kann, wird mit unermesslichem Reichtum und Ruhm belohnt.";
        eng4 = "[fnt_pixel]Viele glaubten an die Geschichte und machten sich auf den Weg, um ein Abenteuer zu suchen.";
        eng5 = "[fnt_pixel]Es heißt, dass der Fluch selbst die Schiffe derjenigen findet, die würdig sind, ihren Fuß auf den Boden zu setzen.[delay,5000] \nNur die mutigsten Wegbereiter werden in der Lage sein, alle Geheimnisse dieses mysteriösen Eilands zu enträtseln.";
        eng6 = "[fnt_pixel]<Oh, es scheint, als sei ein weiterer Gast an Land gekommen. Ich hoffe, wir werden uns gut verstehen.>";
        skip_txt = "Drücke eine beliebige Taste zum Überspringen";
        #endregion
        break;
    case 9: //french
        #region
        eng1 = "[fnt_pixel]Quiconque a pris un verre dans un pub portuaire puant connaît la légende. Comment elle est née, même les loups de mer les plus endurcis ne s'en souviennent pas."
        eng2 = "[fnt_pixel]Mais cela ne les empêche pas d'effrayer les jeunes marins."
        eng3 = "[fnt_pixel]On dit que dans l'océan infini se trouve un archipel maudit plein de secrets et de dangers. Celui qui parviendra à briser la malédiction sera récompensé par des richesses et une gloire inouïes.";
        eng4 = "[fnt_pixel]Beaucoup ont cru à cette histoire et sont partis à la recherche de l'aventure.";
        eng5 = "[fnt_pixel]On dit que la malédiction elle-même trouve les navires de ceux qui sont dignes de poser le pied sur son sol.[delay,5000] \nSeuls les pionniers les plus courageux seront en mesure de percer tous les secrets de cette terre mystérieuse.";
        eng6 = "[fnt_pixel]<Oh, il semble qu'un autre invité ait débarqué. J'espère que nous allons nous entendre.>";
        skip_txt = "appuyez sur n'importe quelle touche pour passer";
        #endregion
        break;
    case 10: //Italian
        #region
        eng1 = "[fnt_pixel]Chiunque visiti il puzzolente pub del porto conosce la leggenda. Anche i lupi di mare induriti non ricordano come tutto è iniziato."
        eng2 = "[fnt_pixel]Tuttavia, ciò non impedisce loro di spaventare i giovani marinai."
        eng3 = "[fnt_pixel]Dicono che nell'oceano sconfinato si possa trovare un arcipelago maledetto, pieno di segreti e pericoli. Chiunque riuscirà a spezzare la maledizione sarà ricompensato con indicibili ricchezze e gloria.";
        eng4 = "[fnt_pixel]Molti credettero alla storia e andarono a cercare l'avventura.";
        eng5 = "[fnt_pixel]Dicono che la maledizione stessa trovi le navi di coloro degni di mettere piede nell'arcipelago.[delay,5000] \nSolo i pionieri più coraggiosi potranno svelare tutti i segreti di questa terra misteriosa.";
        eng6 = "[fnt_pixel]<Oh, sembra che un altro viaggiatore sia a terra. Spero che troveremo una lingua comune.>";
        skip_txt = "Premere un tasto qualsiasi per saltare";
        #endregion
        break;
} 
 
}
    
function fnc_lng_tutor1_ctscn_start()
{
    switch(global.language)
    {
    case 0: //English  
    #region
        eng1 = "[fnt_pixel]No no no no! My ship!"
        eng2 = "[fnt_pixel]What happened? I don't remember anything. I must have taken too much rum on board."
        eng3 = "[fnt_pixel]PEW !!! JOHNNY !!!!"
        eng4 = "[fnt_pixel]Hmm, no one's answering. God damn it, I hope they're still alive."
        eng5 = "[fnt_pixel]It's time to take a look around. "
    #endregion
        break;
    case 1: //russian
    #region
        eng1 = "[fnt_pixel_ru]Нет, нет, нет, нет! Мой корабль!"
        eng2 = "[fnt_pixel_ru]Что случилось? Я ничего не помню. Наверное, я взял слишком много рома на борт."
        eng3 = "[fnt_pixel_ru]ПЬЮ!!! ДЖОННИ !!!!"
        eng4 = "[fnt_pixel_ru]Хм, никто не отвечает. Черт возьми, надеюсь, они еще живы."
        eng5 = "[fnt_pixel_ru]Пора осмотреться."
    #endregion
        break;
    case 2: //spanish
        #region
        eng1 = "[fnt_pixel]¡No, no, no, no! ¡Mi barco!"
        eng2 = "[fnt_pixel]¿Qué ha pasado? No recuerdo nada. Debo haber tomado demasiado ron a bordo."
        eng3 = "[fnt_pixel]¡¡¡PEW !!! ¡¡¡¡JOHNNY !!!!"
        eng4 = "[fnt_pixel]Hmm, nadie responde. Maldita sea, espero que todavía estén vivos."
        eng5 = "[fnt_pixel]Es hora de echar un vistazo alrededor."
    #endregion
        break;
    case 3: //chinese
        #region
        eng1 = "[fnt_pixel]不不不不! 我的船!"
        eng2 = "[fnt_pixel]发生了什么? 我什么都不记得了. 我一定是在船上喝了太多朗姆酒."
        eng3 = "[fnt_pixel]PEW !!! JOHNNY !!!!"
        eng4 = "[fnt_pixel]嗯，没人回答. 该死, 我希望他们还活着."
        eng5 = "[fnt_pixel]现在让我们四处看看."
        #endregion
        break;
    case 4: //portug
        #region
        eng1 = "[fnt_pixel]Nãão! Meu navio!"
        eng2 = "[fnt_pixel]O que aconteceu? Não me lembro de nada. Devo ter tomado muito rum a bordo."
        eng3 = "[fnt_pixel]PEW!!! JOHNNY !!!!"
        eng4 = "[fnt_pixel]Ninguém responde. Raios, espero que ainda estejam vivos."
        eng5 = "[fnt_pixel]É hora de dar uma olhada por aí."
    #endregion
        break;
    case 5: //brazil
        #region
        eng1 = "[fnt_pixel]Nãão! Meu navio!"
        eng2 = "[fnt_pixel]O que aconteceu? Eu não me lembro de nada. Acho que levei rum demais a bordo."
        eng3 = "[fnt_pixel]PEW!!! JOHNNY !!!!"
        eng4 = "[fnt_pixel]Hmm, a ninguém responde. Droga, espero que ainda estejam vivos."
        eng5 = "[fnt_pixel]É hora de dar uma olhada ao redor."
    #endregion
        break;
    case 6: //polish
        #region
        eng1 = "[fnt_pixel]O nie, nie nie! Mój statek!"
        eng2 = "[fnt_pixel]Co się stało? Nic nie pamiętam. Musiałem wziąć za dużo rumu na pokład."
        eng3 = "[fnt_pixel]PEW !!! JOHNNY !!!!"
        eng4 = "[fnt_pixel]Hmm, nikt nie odpowiada. Cholera jasna, mam nadzieję, że jeszcze żyją."
        eng5 = "[fnt_pixel]Pora aby rozejrzeć się tu dookoła."
    #endregion
        break;
    case 7: //japanese
        #region
        eng1 = "[fnt_pixel]ダメダメダメ！私の船が！"
        eng2 = "[fnt_pixel]何があった？何も覚えてない。ラム酒を飲みすぎたに違いない。"
        eng3 = "[fnt_pixel]ふー！！！ジョニー！！！"
        eng4 = "[fnt_pixel]誰も答えてくれない。ちくしょう、まだ生きてるといいが。"
        eng5 = "[fnt_pixel]そろそろ周りを見てみるか。"
    #endregion
        break;
    case 8: //deutch
        #region
        eng1 = "[fnt_pixel]Nein, nein, nein, nein! Mein Schiff!"
        eng2 = "[fnt_pixel]Was ist passiert? Ich kann mich an nichts erinnern. Ich hatte wohl zu viel Rum an Bord."
        eng3 = "[fnt_pixel]PEW !!! JOHNNY !!!!"
        eng4 = "[fnt_pixel]Hmm, niemand antwortet. Verdammt noch mal, ich hoffe, sie leben noch."
        eng5 = "[fnt_pixel]Es wird Zeit, sich umzusehen."
    #endregion
        break;
    case 9: //french
        #region
        eng1 = "[fnt_pixel]Non non non non ! Mon bateau !"
        eng2 = "[fnt_pixel]Que s'est-il passé ? Je ne me souviens de rien. J'ai dû prendre trop de rhum à bord."
        eng3 = "[fnt_pixel]PEW !!! JOHNNY !!!!"
        eng4 = "[fnt_pixel]Hmm, personne ne répond. Bon sang, j'espère qu'ils sont encore en vie."
        eng5 = "[fnt_pixel]Il est temps de jeter un coup d'oeil aux alentours."
    #endregion
        break;  
    case 10: // Italian
    #region
        eng1 = "[fnt_pixel]No, no, no, no! Il mio vascello!"
        eng2 = "[fnt_pixel]Quello che è successo? Non ricordo niente. Devo aver preso troppo rum a bordo."
        eng3 = "[fnt_pixel]PEW !!! JOHNNY !!!!"
        eng4 = "[fnt_pixel]Hmm, nessuno risponde. Merda, spero che siano ancora vivi."
        eng5 = "[fnt_pixel]Diamo un'occhiata in giro ora."
    #endregion
        break;
    }
}    

function fnc_lng_t1_end()
{
    switch(global.language)
    {
        case 0: //English    
            #region eng

            eng1 = "[fnt_pixel]I wonder where I ended up. It's damp in here.";
            eng2 = "[fnt_pixel]Hmm, what's that? Doesn't look suspicious at all.";
            eng3 = "[fnt_pixel]This thing must be worth a lot of [c_yellow]gold[/c_yellow].";
            eng4 = "[fnt_pixel]Wait a minute, what's happening?";

            #endregion
            break;
        case 1: //russian
            #region rus

            eng1 = "[fnt_pixel_ru]Интересно, где я оказался. Здесь сыро.";
            eng2 = "[fnt_pixel_ru]Хм, что это? Совсем не выглядит подозрительно.";
            eng3 = "[fnt_pixel_ru]Эта штука, должно быть, стоит кучу [c_yellow]золота[/c_yellow].";
            eng4 = "[fnt_pixel_ru]Погодите-ка, что происходит?";

            #endregion
            break;
        case 2: //spanish
            #region eng

            eng1 = "[fnt_pixel]Me pregunto dónde he acabado. Hay humedad aquí.";
            eng2 = "[fnt_pixel]Hmm, ¿qué es eso? No parece sospechoso en absoluto.";
            eng3 = "[fnt_pixel]Esta cosa debe valer mucho [c_yellow]oro[/c_yellow].";
            eng4 = "[fnt_pixel]Espera un minuto, ¿qué está pasando?";

            #endregion
            break;
        case 3: //chinese
            #region eng

            eng1 = "[fnt_pixel]我想知道我在哪里. 这里非常潮湿.";
            eng2 = "[fnt_pixel]嗯, 那是什么? 看起来一点都不可疑.";
            eng3 = "[fnt_pixel]这东西肯定值不少[c_yellow]金子[/c_yellow].";
            eng4 = "[fnt_pixel]等一下, 发生什么了?";

            #endregion
            break;
        case 4: //portug
            #region eng

            eng1 = "[fnt_pixel]Pergunto-me onde é que eu acabei. Está húmido aqui.";
            eng2 = "[fnt_pixel]O que é aquilo? Não parece nada suspeito.";
            eng3 = "[fnt_pixel]Esta coisa deve valer muito [c_yellow]ouro[/c_yellow].";
            eng4 = "[fnt_pixel]Espera aí, o que está a acontecer?";

            #endregion
            break;
        case 5: //brazil
            #region eng

            eng1 = "[fnt_pixel]Eu me pergunto onde parei. Está úmido aqui.";
            eng2 = "[fnt_pixel]Hum, o que é isso? Não parece nada suspeito.";
            eng3 = "[fnt_pixel]Esta coisa deve valer muito [c_yellow]ouro[/c_yellow].";
            eng4 = "[fnt_pixel]Espere um minuto, o que está acontecendo?";

            #endregion
            break;
        case 6: //polish
            #region eng

            eng1 = "[fnt_pixel]Zastanawiam się, gdzie skończyłem. Tu jest wilgotno";
            eng2 = "[fnt_pixel]Co to jest, hmm? Wcale nie wygląda podejrzanie.";
            eng3 = "[fnt_pixel]To musi być warte wiele [c_yellow]złota[/c_yellow].";
            eng4 = "[fnt_pixel]Chwileczkę, co się dzieje?";

            #endregion
            break;
        case 7: //japanese
            #region eng

            eng1 = "[fnt_pixel]どこまで来たんだ。ここは湿気が多いな。";
            eng2 = "[fnt_pixel]ん、なんだこれ？全然怪しくない。";
            eng3 = "[fnt_pixel]これは相当[c_yellow]な金[/c]目のものに違いない。";
            eng4 = "[fnt_pixel]ちょっと待てよ、一体なんだ？";

            #endregion
            break;
        case 8: //deutch
            #region eng

            eng1 = "[fnt_pixel]Ich frage mich, wo ich hier gelandet bin. Es ist feucht hier drin.";
            eng2 = "[fnt_pixel]Hmm, was ist das? Sieht überhaupt nicht verdächtig aus.";
            eng3 = "[fnt_pixel]Dieses Ding muss eine Menge [c_yellow]Gold[/c] wert sein.";
            eng4 = "[fnt_pixel]Moment mal, was ist hier los?";

            #endregion
            break;
        case 9: //french
            #region eng

            eng1 = "[fnt_pixel]Je me demande où j'ai atterri. C'est humide ici.";
            eng2 = "[fnt_pixel]Hmm, qu'est-ce que c'est ? Ça n'a pas l'air suspect du tout.";
            eng3 = "[fnt_pixel]Cette chose doit valoir beaucoup [c_yellow]d'or[/c].";
            eng4 = "[fnt_pixel]Attends une minute, qu'est-ce qui se passe ?";

            #endregion
            break;
        case 10: //Italian
            #region eng

            eng1 = "[fnt_pixel]Mi chiedo dove sono arrivato. È umido qui.";
            eng2 = "[fnt_pixel]Hmm, che cos'è? Non sembra affatto sospetto.";
            eng3 = "[fnt_pixel]Questa cosa deve valere molto [c_yellow]oro[/c_yellow].";
            eng4 = "[fnt_pixel]Aspetta un attimo, cosa sta succedendo?";

            #endregion
            break;
    }      
}

function fnc_lng_t2_start()
{
    switch(global.language)
    {
        case 0: //English
            #region eng

            eng1 = "[fnt_pixel]Where… where am I?";
            eng2 = "[fnt_pixel]what is happening with me?";
            eng3 = "[fnt_pixel]i feel a strange power in my body...";
            eng4 = "[fnt_pixel]I guess i need to get out of here.";

            #endregion
            break;
        case 1: //russian
            #region rus

            eng1 = "[fnt_pixel_ru]что... где я?";
            eng2 = "[fnt_pixel_ru]что со мной происходит?";
            eng3 = "[fnt_pixel_ru]Я чувствую странную силу в своем теле...";
            eng4 = "[fnt_pixel_ru]Думаю, мне нужно выбраться отсюда.";

            #endregion
            break;
        case 2: //spanish
            #region eng

            eng1 = "[fnt_pixel]¿Dónde... dónde estoy?";
            eng2 = "[fnt_pixel]¿Qué está pasando conmigo?";
            eng3 = "[fnt_pixel]Siento un extraño poder en mi cuerpo...";
            eng4 = "[fnt_pixel]Creo que necesito salir de aquí.";

            #endregion
            break;
        case 3: //chinese
            #region eng

            eng1 = "[fnt_pixel]我… 我在哪里?";
            eng2 = "[fnt_pixel]我怎么了?";
            eng3 = "[fnt_pixel]我感到身体里有一种奇怪的力量…";
            eng4 = "[fnt_pixel]我想我需要离开这里.";

            #endregion
            break;
        case 4: //portug
            #region eng

            eng1 = "[fnt_pixel]Onde... Onde estou?";
            eng2 = "[fnt_pixel]O que se passa comigo?";
            eng3 = "[fnt_pixel]Sinto um poder estranho no meu corpo...";
            eng4 = "[fnt_pixel]Acho que tenho de sair daqui.";

            #endregion
            break;
        case 5: //brazil
            #region eng

            eng1 = "[fnt_pixel]Onde... onde estou?";
            eng2 = "[fnt_pixel]O que está acontecendo comigo?";
            eng3 = "[fnt_pixel]Sinto um poder estranho em meu corpo...";
            eng4 = "[fnt_pixel]Acho que preciso sair daqui.";

            #endregion
            break;
        case 6: //polish
            #region eng

            eng1 = "[fnt_pixel]Gdzie... gdzie ja jestem?";
            eng2 = "[fnt_pixel]Co się ze mną dzieje?";
            eng3 = "[fnt_pixel]Czuję jakąś dziwną moc w moim ciele…";
            eng4 = "[fnt_pixel]Chyba muszę się stąd wydostać.";

            #endregion
            break;
        case 7: //japanese
            #region eng

            eng1 = "[fnt_pixel]ここは...どこだ？";
            eng2 = "[fnt_pixel]何が起こってる？";
            eng3 = "[fnt_pixel]体に変な力が...";
            eng4 = "[fnt_pixel]ここから出ないと。";

            #endregion
            break;
        case 8: //deutch
            #region eng

            eng1 = "[fnt_pixel]Wo... wo bin ich?";
            eng2 = "[fnt_pixel]Was geschieht mit mir?";
            eng3 = "[fnt_pixel]Ich spüre eine seltsame Kraft in meinem Körper...";
            eng4 = "[fnt_pixel]Ich glaube, ich muss hier raus.";

            #endregion
            break;
        case 9: //french
            #region eng

            eng1 = "[fnt_pixel]Où... où suis-je ?";
            eng2 = "[fnt_pixel]Qu'est-ce qui se passe avec moi ?";
            eng3 = "[fnt_pixel]Je sens une étrange puissance dans mon corps...";
            eng4 = "[fnt_pixel]Je crois qu'il faut que je sorte d'ici.";

            #endregion
            break;
        case 10: // Italian
            #region eng

            eng1 = "[fnt_pixel]Do… Dove sono?";
            eng2 = "[fnt_pixel]Cosa mi sta succedendo?";
            eng3 = "[fnt_pixel]Sento uno strano potere nel mio corpo...";
            eng4 = "[fnt_pixel]Penso di dover uscire di qui.";

            #endregion
            break;
    }   
}

function fnc_lng_t2_end1(){
    switch(global.language)
    {
        case 0: //English
            #region eng

            eng1 = "[fnt_pixel]hmm ... That' s something you can get used to. But what the hell is going on in this temple?";
            eng2 = "[fnt_pixel]And I still haven't found a single member of my team. What should I do next?";

            #endregion
            break;
        case 1: //russian
            #region rus

            eng1 = "[fnt_pixel_ru]хм... К этому можно привыкнуть. Но что, черт возьми, происходит в этом храме?";
            eng2 = "[fnt_pixel_ru]И я до сих пор не нашел ни одного члена своей команды. Что мне делать дальше?";

            #endregion
            break;
        case 2: //spanish
            #region eng

            eng1 = "[fnt_pixel]Hmm... Es algo a lo que te puedes acostumbrar. ¿Qué demonios está pasando en este templo?";
            eng2 = "[fnt_pixel]Y aún no he encontrado ni un solo miembro para mi equipo. ¿Qué debo hacer ahora?";

            #endregion
            break;
        case 3: //chinese
            #region eng

            eng1 = "[fnt_pixel]这是你可以习惯的事情. 但这神殿到底是怎么回事?";
            eng2 = "[fnt_pixel]而且我仍然没有为我的团队找到一个成员. 接下来我该怎么办?";

            #endregion
            break;
        case 4: //portug
            #region eng

            eng1 = "[fnt_pixel]Hmm... Isso é algo a que te podes habituar. Mas que raio se está a passar neste templo?";
            eng2 = "[fnt_pixel]E ainda não encontrei um único membro para a minha equipa. O que devo fazer a seguir?";

            #endregion
            break;
        case 5: //brazil
            #region eng

            eng1 = "[fnt_pixel]hmm... Isso é algo com o qual você pode se acostumar. Mas o que diabos está acontecendo neste templo?";
            eng2 = "[fnt_pixel]E ainda não encontrei nenhum membro para minha equipe. O que eu devo fazer agora?";

            #endregion
            break;
        case 6: //polish
            #region eng

            eng1 = "[fnt_pixel]hmm ... Do tego można się przyzwyczaić. Ale co do cholery dzieje się w tej świątyni?";
            eng2 = "[fnt_pixel]Wciąż nie znalazłem ani jednego członka do mojej drużyny. Co mam robić dalej?";

            #endregion
            break;
        case 7: //japanese
            #region eng

            eng1 = "[fnt_pixel]うーん... それは慣れるしかない。この寺は一体どうなってる？";
            eng2 = "[fnt_pixel]それにまだチームのメンバーが一人もいない。どうすればいい？";

            #endregion
            break;
        case 8: //deutch
            #region eng

            eng1 = "[fnt_pixel]hmm ... Daran kann man sich gewöhnen. Aber was zum Teufel ist in diesem Tempel los?";
            eng2 = "[fnt_pixel]Und ich habe immer noch kein einziges Mitglied für meine Mannschaft gefunden. Was soll ich als Nächstes tun?";

            #endregion
            break;
        case 9: //french
            #region eng

            eng1 = "[fnt_pixel]hmm ... C'est une chose à laquelle on peut s'habituer. Mais que diable se passe-t-il dans ce temple ?";
            eng2 = "[fnt_pixel]Et je n'ai toujours pas trouvé un seul membre pour mon équipe. Que dois-je faire ensuite ?";

            #endregion
            break;
        case 10: //Italian
            #region eng

            eng1 = "[fnt_pixel]Questo è qualcosa a cui puoi abituarti. Ma cosa diavolo sta succedendo in questo tempio?";
            eng2 = "[fnt_pixel]E non ho ancora trovato un solo membro per la mia squadra. Cosa dovrei fare dopo?";

            #endregion
            break;
    }      
}
    
function fnc_lng_t2_end2(){
    switch(global.language)
    {
        case 0: //English
            #region eng

            eng1 =  "[fnt_pixel]I can help you with that!";
            eng2 =  "[fnt_pixel]Hello! You must have a lot of questions, like, Who was that strange man jumping out of the bush at me?";
            eng3 =  "[fnt_pixel]Whoa, put the rapier away, Captain, I'm not dangerous at all. He he.";
            eng4 =  "[fnt_pixel]Let me introduce myself, Captain. I'm just a humble owner of a trinket store doing his job and minding no one's business."
            eng5 =  "[fnt_pixel]I'm sure you have a lot of questions, but not all at once, Captain. The hen takes it one day at a time. First, I'll tell you what to do next.";
            eng6 =  "[fnt_pixel]Maybe you can still find your crew. I don't know exactly what happened to them, but that's just the job for you, right?";
            eng7 =  "[fnt_pixel]My friend, captain, to continue your search, you need to get to the next island. I do not recommend that you cross the sea by swimming, it might not be wise.";
            eng8 =  "[fnt_pixel]I can help you with that, captain. We are friends now, aren't we? I give you this boat. You may sail to the next island without too much trouble.";
            eng9 =  "[fnt_pixel]Good luck on your journey! We'll definitely meet again, and don't forget to stop by my shop.";

            #endregion
            break;
        case 1: //russian
            #region rus

            eng1 =  "[fnt_pixel_ru]Я могу помочь тебе с этой проблемой!";
            eng2 =  "[fnt_pixel_ru]Привет! У тебя, наверное, много вопросов, например, кто этот странный человек, выпрыгнувший на меня из куста?";
            eng3 =  "[fnt_pixel_ru]Эй, уберите рапиру, капитан, я совсем не опасен. хе хе.";
            eng4 =  "[fnt_pixel_ru]Позвольте представиться, капитан, меня зовут... неважно, как меня зовут, я просто скромный владелец магазина безделушек"
            eng5 =  "[fnt_pixel_ru]Я уверен, что у вас много вопросов. Но не все сразу, капитан. Курочка по зернышку клюет. Сначала я скажу тебе, что делать дальше.";
            eng6 =  "[fnt_pixel_ru]Может быть, ты еще можешт найти свою команду. Я не знаю точно, что с ними случилось, но это ведь как раз ваша работа, верно?";
            eng7 =  "[fnt_pixel_ru]Друг мой, капитан, чтобы продолжить поиски, тебе нужно добраться до следующего острова. Я не рекомендую вам пересекать море вплавь, это может быть неразумно.";
            eng8 =  "[fnt_pixel_ru]Я могу помочь тебе в этом, капитан. Мы ведь теперь друзья, не так ли? Я дам вам эту лодку. Вы можете доплыть до следующего острова без особых проблем";
            eng9 =  "[fnt_pixel_ru]Удачи вам в путешествии! Мы обязательно встретимся снова, и не забудьте заглянуть в мою лавку";

            #endregion
            break;
        case 2: //spanish
            #region rus

            eng1 =  "[fnt_pixel]¡Puedo ayudarte con eso!";
            eng2 =  "[fnt_pixel]¡Hola! Debes tener montones de preguntas, como, ¿quién era ese hombre extraño que saltaba del arbusto?";
            eng3 =  "[fnt_pixel]Ahórrate el estoque, Capitán, no soy peligroso en absoluto. Je je.";
            eng4 =  "[fnt_pixel]Déjame presentarme, Capitán. Mi nombre es... No importa cómo me llame, sólo soy el humilde propietario de una tienda de baratijas."
            eng5 =  "[fnt_pixel]Seguro que tienes muchas preguntas, pero no todas a la vez, Capitán. La gallina lo toma un día a la vez. Primero, le diré qué hacer a continuación.";
            eng6 =  "[fnt_pixel]Quizás aún puedas encontrar a tu tripulación. No sé exactamente lo que les pasó, pero ese es el trabajo para ti, ¿verdad?";
            eng7 =  "[fnt_pixel]Mi capitán, para continuar tu búsqueda necesitas llegar a la siguiente isla. No te recomiendo que cruces el mar a nado, puede no ser lo más prudente.";
            eng8 =  "[fnt_pixel]Puedo ayudarte con eso, Capitán. Ahora somos amigos, ¿no? Te doy este barco. Puedes navegar hasta la siguiente isla sin demasiados problemas.";
            eng9 =  "[fnt_pixel]¡Buena suerte en tu travesía! Nos volveremos a ver, y no olvides pasar por mi tienda.";

            #endregion
            break;
        case 3: //chinese
            #region eng

            eng1 =  "[fnt_pixel]我可以帮你!";
            eng2 =  "[fnt_pixel]你好! 你一定有很多问题. 例如, 那个从灌木丛中向我扑来的陌生人是谁? at me?";
            eng3 =  "[fnt_pixel]喂, 收起细剑, 舰长! 我一点都不危险. 哈哈";
            eng4 =  "[fnt_pixel]让我自我介绍一下, 船长. 我只是一家小饰品店的谦虚老板, 做着我的工作, 安静地坐着.";
            eng5 =  "[fnt_pixel]我相信你有很多问题, 但我们不应该着急, 船长. 首先, 我会告诉你下一步是什么.";
            eng6 =  "[fnt_pixel]也许你还能找到你的船员. 我不知道他们究竟发生了什么, 但这听起来对你来说是一份完美的工作, 对吧?";
            eng7 =  "[fnt_pixel]船长, 你需要前往附近的岛屿继续搜索. 如果你决定渡海游泳是不明智的.";
            eng8 =  "[fnt_pixel]我可以帮你, 船长. 我们现在是朋友了, 不是吗? 我把这艘船给你, 让你可以顺利航行到下一个岛屿.";
            eng9 =  "[fnt_pixel]祝你旅途愉快! 我们一定会再见面的, 别忘了顺便来我的店.";

            #endregion
            break;
        case 4: //portug
            #region rus

            eng1 =  "[fnt_pixel]Posso ajudá-lo nisso!";
            eng2 =  "[fnt_pixel]Olá! Deves ter muitas perguntas, tipo, quem era aquele homem estranho a saltar-me do mato?";
            eng3 =  "[fnt_pixel]Guarda a rapieira, Capitão, não sou nada perigoso. He he.";
            eng4 =  "[fnt_pixel]Deixe-me apresentar-me, Capitão. O meu nome é... Não importa qual é o meu nome, sou apenas um humilde dono de uma loja de bugigangas."
            eng5 =  "[fnt_pixel]Tenho a certeza que tens muitas perguntas, mas não todas de uma vez, Capitão. A galinha choca ovo uma vez por dia. Primeiro, digo-te o que fazer a seguir.";
            eng6 =  "[fnt_pixel]Talvez ainda possa encontrar a tua tripulação. Não sei exatamente o que lhes aconteceu, mas é um trabalho para ti, certo?";
            eng7 =  "[fnt_pixel]Meu capitão, para continuar a tua busca, precisas chegar à próxima ilha. Não recomendo que atravesses o mar a nado, talvez não seja sensato.";
            eng8 =  "[fnt_pixel]Posso ajudar-te com isso, Capitão. Agora somos amigos, não somos? Eu te dou este barco. Podes navegar para a próxima ilha sem muitos problemas.";
            eng9 =  "[fnt_pixel]Boa sorte na sua viagem! Vamos encontrar-nos outra vez, e não te esqueças de passar na minha loja.";

            #endregion
            break;
        case 5: //brazil
            #region rus

            eng1 =  "[fnt_pixel]Eu posso ajudar com isso!";
            eng2 =  "[fnt_pixel]Olá! Você deve ter muitas perguntas, como, quem era aquele homem estranho pulando em mim do meio do mato?";
            eng3 =  "[fnt_pixel]Opa, guarde o florete, capitão, não sou nada perigoso. kkkk.";
            eng4 =  "[fnt_pixel]Deixe-me apresentar, capitão. Meu nome é... Não importa o meu nome, sou apenas um humilde dono de uma loja de bugigangas."
            eng5 =  "[fnt_pixel]Tenho certeza que você tem muitas perguntas, mas não todas de uma vez, capitão. A galinha bota ovo uma vez por dia. Primeiro, vou dizer o que fazer a seguir.";
            eng6 =  "[fnt_pixel]Talvez você ainda consiga encontrar sua tripulação. Não sei exatamente o que aconteceu com eles, mas esse é o trabalho para você, certo?";
            eng7 =  "[fnt_pixel]Meu capitão, para continuar sua busca, você precisa chegar à próxima ilha. Eu não recomendo que você atravesse o mar nadando, não parece ser sensato.";
            eng8 =  "[fnt_pixel]Posso ajudar com isso, capitão. Somos amigos agora, não somos? Eu te dou este barco. Você pode navegar até a próxima ilha sem muitos problemas.";
            eng9 =  "[fnt_pixel]Boa sorte na sua jornada! Com certeza nos encontraremos novamente e não se esqueça de passar na minha loja.";

            #endregion
            break;
        case 6: //polish
            #region rus

            eng1 =  "[fnt_pixel]Mogę ci pomóc!";
            eng2 =  "[fnt_pixel]Witam! Pewnie masz mnóstwo pytań, na przykład, kim był ten dziwny człowiek wyskakujący z krzaków?";
            eng3 =  "[fnt_pixel]Ło, odłóż to, kapitanie. Ja wcale nie jestem groźny. He he.";
            eng4 =  "[fnt_pixel]Pozwól, że się przedstawię, kapitanie. Nazywam się... Nieważne jak się nazywam, jestem tylko skromnym właścicielem sklepu z drobiazgami."
            eng5 =  "[fnt_pixel]Na pewno masz wiele pytań, ale nie wszystkie naraz, kapitanie. Najpierw powiem, co powinieneś zrobić dalej.";
            eng6 =  "[fnt_pixel]Może uda ci się jeszcze odnaleźć swoją załogę. Nie wiem dokładnie, co się z nimi stało, ale to zadanie akurat, jest dla ciebie, prawda?";
            eng7 =  "[fnt_pixel]Mój kapitanie, aby kontynuować poszukiwania musisz dostać się na następną wyspę. Nie polecam jednak, przeprawiać się przez morze wpływ.";
            eng8 =  "[fnt_pixel]Mogę ci w tym pomóc, kapitanie. Jesteśmy teraz przyjaciółmi, prawda? Daję ci tę łódź. Możecie nią dopłynąć do następnej wyspy bez większych problemów.";
            eng9 =  "[fnt_pixel]Powodzenia w podróży! Na pewno się jeszcze spotkamy i nie zapomnij odwiedzić mojego sklepu.";

            #endregion
            break;
        case 7: //japanese
            #region rus

            eng1 =  "[fnt_pixel]私が手伝ってあげよう！";
            eng2 =  "[fnt_pixel]やあ！聞きたいことがたくさんあるだろう、例えば、茂みから飛び出してきた変な男は誰か？";
            eng3 =  "[fnt_pixel]おっと、レイピアをしまえ、船長、私は全く危険ではない。はは。";
            eng4 =  "[fnt_pixel]自己紹介させてくれ、船長。私の名前は... 名前なんてどうでもいい。ただの小間物屋の店主だ。"
            eng5 =  "[fnt_pixel]聞きたいことは山ほどあるだろうが、一つづつだ、船長。雌鳥は一日一日を大切にする。まず、次にすることを教えてあげよう。";
            eng6 =  "[fnt_pixel]まだクルーが見つかるかもしれない。彼らに何が起こったか正確にはわからないが、君の仕事だろう？";
            eng7 =  "[fnt_pixel]船長、捜索を続けるには次の島へ行く必要がある。泳いで海を渡るのはお勧めしない、賢くはない。";
            eng8 =  "[fnt_pixel]私がお手伝いしよう、船長。もう友達でしょう？この船を君にあげる。次の島まで、それほど苦労せずに航海できるだろう。";
            eng9 =  "[fnt_pixel]旅の幸運を祈る！また必ず会おう。そして、私の店に立ち寄るのを忘れないでくれ。";

            #endregion
            break;
        case 8: //deutch
            #region rus

            eng1 =  "[fnt_pixel]Da kann ich dir helfen!";
            eng2 =  "[fnt_pixel]Hallo! Du hast bestimmt eine Menge Fragen, zum Beispiel: Wer war der seltsame Mann, der mich aus dem Busch ansprang?";
            eng3 =  "[fnt_pixel]Leg den Degen weg, Kapitän, ich bin überhaupt nicht gefährlich. He he.";
            eng4 =  "[fnt_pixel]Darf ich mich vorstellen, Hauptmann? Mein Name ist... Ach egal, wie ich heiße, ich bin nur ein bescheidener Besitzer eines Schmuckladens."
            eng5 =  "[fnt_pixel]Ich bin sicher, du hast viele Fragen, aber nicht alle auf einmal, Kapitän. Die Henne geht einen Tag nach dem anderen an. Zuerst werde ich dir sagen, was du als Nächstes tun sollst.";
            eng6 =  "[fnt_pixel]Vielleicht kannst du deine Mannschaft noch finden. Ich weiß nicht genau, was mit ihnen passiert ist, aber das ist doch deine Aufgabe, oder?";
            eng7 =  "[fnt_pixel]Kapitän, um deine Suche fortzusetzen, musst du zur nächsten Insel gelangen. Ich empfehle dir, das Meer nicht schwimmend zu überqueren, das wäre vielleicht nicht so klug.";
            eng8 =  "[fnt_pixel]Ich kann dir dabei helfen, Kapitän. Wir sind doch jetzt Freunde, nicht wahr? Ich gebe dir dieses Boot. So kannst du ohne große Probleme zur nächsten Insel fahren.";
            eng9 =  "[fnt_pixel]Viel Glück auf deiner Reise! Wir werden uns bestimmt wiedersehen, und vergiss nicht, in meinem Laden vorbeizuschauen.";

            #endregion
            break;
        case 9: //french
            #region rus

            eng1 =  "[fnt_pixel]Je peux vous aider à le faire !";
            eng2 =  "[fnt_pixel]Bonjour ! Vous devez avoir beaucoup de questions, comme, qui était cet homme étrange qui m'a sauté dessus depuis le buisson ?";
            eng3 =  "[fnt_pixel]Whoa, rangez votre rapière, Capitaine, je ne suis pas du tout dangereux. He he.";
            eng4 =  "[fnt_pixel]Laissez-moi me présenter, capitaine. Mon nom est... Peu importe mon nom, je suis juste l'humble propriétaire d'un magasin de bibelots."
            eng5 =  "[fnt_pixel]Je suis sûr que vous avez beaucoup de questions, mais pas toutes en même temps, capitaine. La poule prend les choses un jour après l'autre. D'abord, je vais vous dire ce qu'il faut faire ensuite.";
            eng6 =  "[fnt_pixel]Peut-être que vous pouvez encore trouver votre équipage. Je ne sais pas exactement ce qui leur est arrivé, mais c'est un travail pour vous, non ?";
            eng7 =  "[fnt_pixel]Mon capitaine, pour continuer vos recherches, vous devez vous rendre sur la prochaine île. Je ne vous recommande pas de traverser la mer à la nage, ce n'est peut-être pas prudent.";
            eng8 =  "[fnt_pixel]Je peux vous aider, Capitaine. Nous sommes amis maintenant, n'est-ce pas ? Je vous donne ce bateau. Vous pourrez naviguer jusqu'à la prochaine île sans trop de problèmes.";
            eng9 =  "[fnt_pixel]Bonne chance dans votre voyage ! Nous nous reverrons certainement, et n'oubliez pas de vous arrêter dans ma boutique.";

            #endregion
            break;
        case 10: //Italian
            #region eng

            eng1 =  "[fnt_pixel]Ti posso aiutare con quello!";
            eng2 =  "[fnt_pixel]Ciao! Devi avere molte domande; per esempio: chi era quello strano uomo che saltava fuori dal cespuglio verso di me?";
            eng3 =  "[fnt_pixel]Ehi, metti via lo stocco, Capitano! Non sono affatto pericoloso. Ah ah";
            eng4 =  "[fnt_pixel]Mi presento, Capitano. Sono solo un umile proprietario di un negozio di ninnoli che fa il suo lavoro e non si fa gli affari di nessuno."
            eng5 =  "[fnt_pixel]Sono sicuro che hai molte domande, ma non tutte in una volta, Capitano. Per prima cosa, ti dirò quali sono i tuoi prossimi passi.";
            eng6 =  "[fnt_pixel]Forse riesci ancora a trovare i tuoi compagni. Non so esattamente cosa sia successo loro, ma questo sembra un lavoro perfetto per te, vero?";
            eng7 =  "[fnt_pixel]Mio capitano, per continuare la tua ricerca devi raggiungere l'isola successiva. Non ti consiglio di attraversare il mare a nuoto: potrebbe non essere saggio.";
            eng8 =  "[fnt_pixel]Posso aiutarti in questo, capitano. Siamo amici ora, vero? Ti do questa barca, in modo che tu possa navigare verso la prossima isola senza alcun trambusto.";
            eng9 =  "[fnt_pixel]Buona fortuna con il tuo viaggio! Ci incontreremo sicuramente di nuovo e non dimenticare di passare dal mio negozio.";

            #endregion
            break;
    }      
}
    
function fnc_lng_jnpc1_1(){
   switch(global.language)
    {
        case 0: //English  
            #region eng

            eng1 = choose("[fnt_pixel]A stranger, talk to the Chief.","[fnt_pixel]It is our tradition that you must first be introduced to the Chief.");

            #endregion
            break;
        case 1: //russian
            #region eng

            eng1 = choose("[fnt_pixel_ru]Незнакомец, поговорите с вождем.","[fnt_pixel_ru]По нашей традиции, сначала вас должны представить вождю.");

            #endregion
            break;
        case 2: //spanish
            #region eng

            eng1 = choose("[fnt_pixel]Si eres un forastero, habla con el Jefe.","[fnt_pixel]Es nuestra tradición que primero te presenten al Jefe.");

            #endregion
            break;
        case 3: //chinese
            #region eng

            eng1 = choose("[fnt_pixel]一个陌生人, 与酋长交谈.","[fnt_pixel]我们的传统是, 你必须先被介绍给酋长. ");

            #endregion
            break;
        case 4: //portug
            #region eng

            eng1 = choose("[fnt_pixel]Um estranho, fala com o Chefe.","[fnt_pixel]É nossa tradição que primeiro deves ser apresentado ao Chefe.");

            #endregion
            break;
        case 5: //brazil
            #region eng

            eng1 = choose("[fnt_pixel]Um estranho, fale com o Chefe.","[fnt_pixel]É tradição nossa que primeiro você seja apresentado ao Chefe.");

            #endregion
            break;
        case 6: //polish
            #region eng

            eng1 = choose("[fnt_pixel]Nieznajomy, porozmawiaj z szefem.","[fnt_pixel]Zgodnie z naszą tradycją, najpierw należy przedstawić się Wodzowi.");

            #endregion
            break;
        case 7: //japanese
            #region eng

            eng1 = choose("[fnt_pixel]見知らぬ人、チーフと話すんだ。","[fnt_pixel]チーフに紹介するのが我々の伝統だ。");

            #endregion
            break;
        case 8: //deutch
            #region eng

            eng1 = choose("[fnt_pixel]Ein Fremder, sprich mit dem Häupling","[fnt_pixel]Es ist unsere Tradition, dass du zuerst dem Häupling vorgestellt werden musst.");

            #endregion
            break;
        case 9: //french
            #region eng

            eng1 = choose("[fnt_pixel]Un étranger, parlez au Chef.","[fnt_pixel]Notre tradition veut que vous soyez d'abord présenté au Chef.");

            #endregion
            break;
        case 10: //Italian
            #region eng

            eng1 = choose("[fnt_pixel]Uno sconosciuto, parla con il Capo.","[fnt_pixel]È nostra tradizione che tu debba prima essere presentato al Capo.");

            #endregion
            break;
    }    
}

function fnc_lng_jnpc1_2(){
   switch(global.language)
    {
        case 0: //English  
            #region eng

            eng1 = choose("[fnt_pixel]We created a special cannon! Check it after getting one of the keys.","[fnt_pixel]Check the walls carefully, some of them are fragile. There may be something hiding behind them.");

            #endregion
            break;
        case 1: //russian
            #region eng

            eng1 = choose("[fnt_pixel_ru]Мы создали специальную пушку! Проверьте ее после получения одного из ключей.","[fnt_pixel_ru]Присмотритесь к стенам, некоторые из них хрупкие. За ними может что-то скрываться.");

            #endregion
            break;
        case 2: //spanish
            #region eng

            eng1 = choose("[fnt_pixel]Hemos creado un cañón especial. Revísalo después de hacerte con una de las llaves.","[fnt_pixel]Revisa las paredes con cuidado, algunas son frágiles. Puede haber algo escondido tras ellas.");

            #endregion
            break;
        case 3: //chinese
            #region eng

            eng1 = choose("[fnt_pixel]我们创造了一门独特的大炮! 拿到其中一把钥匙后试一试.","[fnt_pixel]仔细检查墙壁: 其中一些很脆弱.  他们背后可能隐藏着一些东西.");

            #endregion
            break;
        case 4: //portug
            #region eng

            eng1 = choose("[fnt_pixel]Criámos um canhão especial! Verifica depois de teres recebido uma das chaves.","[fnt_pixel]Verifica cuidadosamente as paredes, algumas são frágeis. Pode haver algo escondido atrás delas.");

            #endregion
            break;
        case 5: //brazil
            #region eng

            eng1 = choose("[fnt_pixel]Criamos um canhão especial! Confira depois de obter uma das chaves.","[fnt_pixel]Verifique as paredes com cuidado, algumas delas são frágeis. Pode haver algo escondido atrás.");

            #endregion
            break;
        case 6: //polish
            #region eng

            eng1 = choose("[fnt_pixel]Stworzyliśmy specjalne działo! Sprawdź ją po zdobyciu jednego z kluczy. ","[fnt_pixel]Sprawdź dokładnie ściany, niektóre z nich są kruche. Może się za nimi coś kryć.");

            #endregion
            break;
        case 7: //japanese
            #region eng

            eng1 = choose("[fnt_pixel]特別な大砲を作った！鍵の1つを手に入れたら、確認してみるんだ。","[fnt_pixel]壁をよく見て、中には壊れやすいものも。何か隠れているかもしれない。");

            #endregion
            break;
        case 8: //deutch
            #region eng

            eng1 = choose("[fnt_pixel]Wir haben eine besondere Kanone gebaut! Überprüfe sie, nachdem du einen der Schlüssel erhalten hast.","[fnt_pixel]Sieh dir die Wände genau an, einige von ihnen sind brüchig. Es könnte sich etwas dahinter verstecken.");

            #endregion
            break;
        case 9: //french
            #region eng

            eng1 = choose("[fnt_pixel]Nous avons créé un canon spécial ! Vérifiez-le après avoir obtenu une des clés.","[fnt_pixel]Vérifiez attentivement les murs, certains d'entre eux sont fragiles. Il y a peut-être quelque chose qui se cache derrière.");

            #endregion
            break;
        case 10: // Italian
            #region eng

            eng1 = choose("[fnt_pixel]Abbiamo creato un cannone unico! Fai un tentativo dopo aver ottenuto una delle chiavi.","[fnt_pixel]Controlla attentamente le pareti: alcune sono fragili. Potrebbe esserci qualcosa che si nasconde dietro di loro.");

            #endregion
            break;
    }    
}
    
function fnc_lng_jnpc2_1(){
   switch(global.language)
    {
        case 0: //English  
            #region eng

            eng1 = choose("[fnt_pixel]Don't keep the Chief waiting.","[fnt_pixel]Why are you still here? The Chief's house is over there.");

            #endregion
            break;
        case 1: //russian
            #region eng

            eng1 = choose("[fnt_pixel_ru]Не заставляйте вождя ждать.","[fnt_pixel_ru]Почему вы все еще здесь? Дом вождя дальше по дороге.");

            #endregion
            break;
        case 2: //spanish
            #region eng

            eng1 = choose("[fnt_pixel]No hagas esperar al Jefe.","[fnt_pixel]¿Por qué sigues aquí? La casa del Jefe está por allí.");

            #endregion
            break;
        case 3: //chinese
            #region eng

            eng1 = choose("[fnt_pixel]别让酋长久等了.","[fnt_pixel]你还在这里做什么? 酋长的房子就在那里.");

            #endregion
            break;
        case 4: //portug
            #region eng

            eng1 = choose("[fnt_pixel]Não deixes o chefe a esperar.","[fnt_pixel]Por que ainda estás aqui? A casa do chefe é ali.");

            #endregion
            break;
        case 5: //brazil
            #region eng

            eng1 = choose("[fnt_pixel]Não deixe o chefe esperando.","[fnt_pixel]Por que você ainda esta aqui? A casa do chefe é ali.");

            #endregion
            break;
        case 6: //polish
            #region eng

            eng1 = choose("[fnt_pixel]Nie każ szefowi czekać.","[fnt_pixel]Dlaczego wciąż tu jesteś? Dom szefa jest tam.");

            #endregion
            break;
        case 7: //japanese
            #region eng

            eng1 = choose("[fnt_pixel]チーフを待たせたらだめだ。","[fnt_pixel]なんでまだここに？酋チーフの家はあそこだ。");

            #endregion
            break;
        case 8: //deutch
            #region eng

            eng1 = choose("[fnt_pixel]Lass den Häupling nicht warten.","[fnt_pixel]Warum bist du noch hier? Das Haus des Häuplings ist da drüben..");

            #endregion
            break;
        case 9: //french
            #region eng

            eng1 = choose("[fnt_pixel]Ne faites pas attendre le chef.","[fnt_pixel]Pourquoi êtes-vous encore là ? La maison du chef est là-bas.");

            #endregion
            break;
        case 10: // Italian
            #region eng

            eng1 = choose("[fnt_pixel]Non far aspettare il Capo.","[fnt_pixel]Cosa ci fai ancora qui? La casa del capo è lì.");

            #endregion
            break;
    }    
}    

function fnc_lng_jnpc2_2(){
   switch(global.language)
    {
        case 0: //English  
            #region eng

            eng1 = choose("[fnt_pixel]Spring boots are great stuff! Try jumping on enemies to deliver a crushing blow!","[fnt_pixel]Once you get the keys you can visit our arena and test your skills. There are rewards for winning");

            #endregion
            break;
        case 1: //russian
            #region eng

            eng1 = choose("[fnt_pixel_ru]Пружинные ботинки - отличная вещь! Попробуйте прыгнуть на врагов, чтобы открыть их для сокрушительного удара!","[fnt_pixel_ru]Как только вы получите ключи, вы сможете посетить нашу арену и проверить свои навыки. За победу полагается награда.");

            #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
            #region eng

            eng1 = choose("[fnt_pixel]春天的靴子是个好东西! 试着跳到敌人身上，然后给予粉碎性打击","[fnt_pixel]一旦你有了钥匙，你就可以访问我们的竞技场并测试你的技能。胜利是有奖励的。");

            #endregion
            break;
        case 4: //portug
            break;
        case 5: //brazil
            break;
        case 6: //polish
            break;
        case 7: //turkey
            break;
        case 8: //japanese
            break;
        case 9: //deutch
            break;
        case 10: //french
            break;
        case 11: // Italian
            #region eng

            eng1 = choose("[fnt_pixel_ru]Gli stivali primaverili sono una cosa fantastica! Provate a saltare sui nemici per aprirli per un colpo secco!","[fnt_pixel_ru]Una volta ottenute le chiavi, potrete visitare la nostra arena e mettere alla prova le vostre abilità. Ci sono ricompense per le vittorie.");

            #endregion
            break;
    }    
}    
    
function fnc_lng_jchief1(){
   switch(global.language)
    {
        case 0: //English  
            #region eng

            eng1 =  "[fnt_pixel]Greetings, stranger! I am the chief of this settlement of natives. I know you're tired and hungry, but there's no time to rest. You want to save your crew, don't you?";
            eng2 =  "[fnt_pixel]It won't be easy, but if you put aside fear and greed, you can do it. Your team members are locked in cursed temples, but it's not easy to get in.";
            eng3 =  "[fnt_pixel]You will need keys to unlock the doors to these temples. Our local inventor has a gift for you to help you find the keys.";
            eng4 =  "[fnt_pixel]He's waiting for you outside. Be sure to talk to him.";
            eng5 =  "[fnt_pixel]I hope you find your team in good health. Be sure to check out the trinket store, maybe you'll find something for yourself there.";

            #endregion
            break;
        case 1: //russian
            #region eng
            eng1 =  "[fnt_pixel_ru]Приветствую тебя, чужеземец! Я вождь этого поселения туземцев. Я знаю, что ты устал и голоден, но времени на отдых нет. Ты ведь хочешь спасти свою команду, не так ли?";
            eng2 =  "[fnt_pixel_ru]Это будет нелегко, но если вы отбросите страх и жадность, вы сможете это сделать. Члены вашей команды заперты в проклятых храмах, но попасть внутрь не так-то просто";
            eng3 =  "[fnt_pixel_ru]Вам понадобятся ключи, чтобы отпереть двери в эти храмы. У нашего местного изобретателя есть для вас подарок, который поможет вам найти ключи";
            eng4 =  "[fnt_pixel_ru]Он ждет вас снаружи. Обязательно поговорите с ним";
            eng5 =  "[fnt_pixel_ru]Надеюсь, вы найдете свою команду в добром здравии. Не забудьте заглянуть в магазин безделушек, может быть, вы найдете там что-нибудь для себя.";

            #endregion
            break;
        case 2: //spanish
            #region eng

            eng1 =  "[fnt_pixel]¡Saludos, forastero! Soy el jefe de este asentamiento de nativos. Sé que estás cansado y hambriento, pero no hay tiempo para descansar. Quieres salvar a tu tripulación, ¿verdad?";
            eng2 =  "[fnt_pixel]No será fácil, pero si dejas a un lado el miedo y la codicia, podrás hacerlo. Los miembros de tu equipo están encerrados en templos malditos, pero no es fácil entrar.";
            eng3 =  "[fnt_pixel]Necesitarás llaves para abrir las puertas de estos templos. Nuestro inventor local tiene un regalo para ti que te ayudará a encontrar las llaves.";
            eng4 =  "[fnt_pixel]Te está esperando fuera. Asegúrate de hablar con él.";
            eng5 =  "[fnt_pixel]Espero que encuentres a tu equipo con buena salud. No dejes de visitar la tienda de baratijas, tal vez encuentres algo para ti allí.";

            #endregion
            break;
        case 3: //chinese
            #region eng

            eng1 =  "[fnt_pixel]问候, 陌生人! 我是这个土著定居点的领袖. 我知道你一定又饿又累, 但没有时间休息. 你想拯救你的船员, 对吧?";
            eng2 =  "[fnt_pixel]这并不容易, 但如果你能战胜内心的恐惧和贪婪, 你就能做到. 你的团队成员被锁在被诅咒的神殿中, 但要进去并不容易.";
            eng3 =  "[fnt_pixel]您将需要钥匙来解锁这些寺庙的大门. 我们当地的发明家为您准备了一份礼物, 以帮助您找到它们.";
            eng4 =  "[fnt_pixel]他在外面等你. 一定要和他谈谈. ";
            eng5 =  "[fnt_pixel]我希望你发现你的团队身体健康. 一定要看看饰品店, 说不定你会在那里找到一些有趣的东西. ";

            #endregion
            break;
        case 4: //portug
            #region eng

            eng1 =  "[fnt_pixel]Saudações, estranho! Sou o chefe deste povoado de nativos. Sei que estás cansado e com fome, mas não há tempo para descansar. Queres salvar a tua tripulação, não quer?";
            eng2 =  "[fnt_pixel]Não vai ser fácil, mas se venceres o medo e a ganância, podes conseguir. Os membros da tua equipa estão presos em templos amaldiçoados, mas não é fácil entrar.";
            eng3 =  "[fnt_pixel]Vais precisar de chaves para abrir as portas destes templos. O nosso inventor local tem um dom para te ajudar a encontrar as chaves.";
            eng4 =  "[fnt_pixel]Ele está à tua espera lá fora. Não te esqueças de falar com ele.";
            eng5 =  "[fnt_pixel]Espero que encontre a sua equipa de boa saúde. Certifica-te de verificar a loja de bugigangas, talvez encontre algo para ti mesmo.";

            #endregion
            break;
        case 5: //brazil
            #region eng

            eng1 =  "[fnt_pixel]Saudações, estranho! Eu sou o chefe deste assentamento de nativos. Eu sei que você está cansado e com fome, mas não há tempo para descansar. Você quer salvar sua tripulação, não é?";
            eng2 =  "[fnt_pixel]Não será fácil, mas se você deixar de lado o medo e a ganância, vai conseguir. Os membros de sua equipe estão trancados em templos amaldiçoados, mas não é fácil entrar.";
            eng3 =  "[fnt_pixel]Você vai precisar de chaves para destrancar as portas desses templos. Nosso inventor local tem um presente para te ajudar a encontrar as chaves.";
            eng4 =  "[fnt_pixel]Ele está esperando por você lá fora. Certifique-se de falar com ele.";
            eng5 =  "[fnt_pixel]Espero que você encontre sua equipe e que todos estejam bem. Certifique-se de verificar a loja de bugigangas, talvez você encontre algo para você lá.";

            #endregion
            break;
        case 6: //polish
            #region eng

            eng1 =  "[fnt_pixel]Witaj, nieznajomy! Jestem wodzem tej osady. Wiem, że jesteś zmęczony i głodny, ale to nie czas na odpoczynek. Chcesz uratować swoją załogę, prawda?";
            eng2 =  "[fnt_pixel]Członkowie twojej drużyny są zamknięci w przeklętych świątyniach, ciężko się tam dostać. Jeśli jednak wyzbędziesz się strachu i chciwości, to naprawdę możesz to zrobić.";
            eng3 =  "[fnt_pixel]Będziesz potrzebował kluczy, aby odblokować drzwi tych świątyń. Nasz lokalny wynalazca ma dla ciebie prezent, który pomoże ci znaleźć klucze.";
            eng4 =  "[fnt_pixel]On czeka na Ciebie na zewnątrz. Koniecznie porozmawiajcie z nim.";
            eng5 =  "[fnt_pixel]Mam nadzieję, że znajdziecie swoją drużynę całą i zdrową. Koniecznie zajrzyj do sklepu z drobiazgami, może znajdziesz tam coś dla siebie.";

            #endregion
            break;
        case 7: //japanese
            #region eng

            eng1 =  "[fnt_pixel]やあ、見知らぬ者よ！私はこの原住民の集落の長だ。疲れと空腹は分かるが、休んでいる暇はない。仲間を救いたいんだろう？";
            eng2 =  "[fnt_pixel]簡単にはいかないが、恐怖と欲を捨てれば、できるはずだ。メンバーは呪われた神殿に閉じ込められているが、そこに入るのは簡単ではない。";
            eng3 =  "[fnt_pixel]この寺院の扉を開けるには鍵が必要だ。その鍵を見つけるために、地元の発明家が君に贈り物を持っている。";
            eng4 =  "[fnt_pixel]彼は外で君を待っている。必ず彼に話しかけるんだ。";
            eng5 =  "[fnt_pixel]君のチームが元気であることを祈っている。小物屋さんも覗いてみるんだ、何か見つかるかもしれない。";

            #endregion
            break;
        case 8: //deutch
            #region eng

            eng1 =  "[fnt_pixel]Sei gegrüßt, Fremder! Ich bin der Häuptling dieser Siedlung von Eingeborenen. Ich weiß, dass du müde und hungrig bist, aber es ist keine Zeit zum Ausruhen. Du willst deine Mannschaft retten, stimmt's?";
            eng2 =  "[fnt_pixel]Das wird nicht leicht sein, aber wenn du Angst und Gier beiseite lässt, kannst du es schaffen. Die Mitglieder deiner Mannschaft sind in verfluchten Tempeln eingesperrt, aber es ist nicht leicht, hineinzukommen.";
            eng3 =  "[fnt_pixel]Du brauchst Schlüssel, um die Türen zu diesen Tempeln aufzuschließen. Unser örtlicher Tüftler hat ein Geschenk für dich, das dir helfen wird, die Schlüssel zu finden.";
            eng4 =  "[fnt_pixel]Er wartet draußen auf dich. Rede unbedingt mit ihm.";
            eng5 =  "[fnt_pixel]Ich hoffe, du findest deine Mannschaft bei guter Gesundheit vor. Schau auf jeden Fall im Kramladen vorbei, vielleicht findest du dort etwas für dich.";

            #endregion
            break;
        case 9: //french
            #region eng

            eng1 =  "[fnt_pixel]Salutations, étranger ! Je suis le chef de cette colonie d'indigènes. Je sais que vous êtes fatigué et affamé, mais vous n'avez pas le temps de vous reposer. Vous voulez sauver votre équipage, n'est-ce pas ?";
            eng2 =  "[fnt_pixel]Ce ne sera pas facile, mais si vous mettez de côté la peur et l'avidité, vous pouvez le faire. Les membres de votre équipe sont enfermés dans des temples maudits, mais il n'est pas facile d'y entrer.";
            eng3 =  "[fnt_pixel]Vous aurez besoin de clés pour déverrouiller les portes de ces temples. Notre inventeur local a un cadeau pour vous qui vous aidera à trouver les clés.";
            eng4 =  "[fnt_pixel]Il vous attend dehors. N'oubliez pas de lui parler.";
            eng5 =  "[fnt_pixel]J'espère que vous trouverez votre équipe en bonne santé. N'oubliez pas de faire un tour au magasin de babioles, vous y trouverez peut-être quelque chose pour vous.";

            #endregion
            break;
        case 10: // Italian
            #region eng

            eng1 =  "[fnt_pixel]Saluti, straniero! Sono il capo di questo insediamento di indigeni. So che devi essere affamato ed esausto, ma non c'è tempo per riposare. Vuoi salvare il tuo equipaggio, vero?";
            eng2 =  "[fnt_pixel]Non sarà facile, ma se sottometti la paura e l'avidità in te, puoi farcela. I membri della tua squadra sono rinchiusi in templi maledetti, ma non è facile entrare.";
            eng3 =  "[fnt_pixel]Avrai bisogno di chiavi per sbloccare le porte di questi templi. Il nostro inventore locale ha un regalo per te per aiutarti a trovarli.";
            eng4 =  "[fnt_pixel]Ti sta aspettando fuori. Assicurati di parlare con lui.";
            eng5 =  "[fnt_pixel]Spero che troverai la tua squadra in buona salute. Assicurati di dare un'occhiata al negozio di ninnoli, forse troverai qualcosa di interessante lì.";

            #endregion
            break;
    }    
}   

function fnc_lng_jchief2(){
   switch(global.language)
    {
        case 0: //English  
            #region eng

            eng1 = choose("[fnt_pixel]Good luck with finding your team!","[fnt_pixel]Don't forget to visit the merchant more often.");

            #endregion
            break;
        case 1: //russian
            #region eng
            eng1 = choose("[fnt_pixel_ru]Удачи в поиске команды!","[fnt_pixel_ru]Не забывайте почаще заглядывать к торговцу..");

            #endregion
            break;
        case 2: //spanish
            #region eng

            eng1 = choose("[fnt_pixel]Buena suerte en la búsqueda de tu equipo.","[fnt_pixel]No olvides visitar al mercader más a menudo.");

            #endregion
            break;
        case 3: //chinese
            #region eng

            eng1 = choose("[fnt_pixel]祝你找到你的船员好运!","[fnt_pixel]不要忘记更频繁地拜访商人.");

            #endregion
            break;
        case 4: //portug
            #region eng

            eng1 = choose("[fnt_pixel]Boa sorte em encontrar a tua equipa!","[fnt_pixel]Não te esqueças de visitar o comerciante mais vezes.");

            #endregion
            break;
        case 5: //brazil
            #region eng

            eng1 = choose("[fnt_pixel]Boa sorte em encontrar sua equipe!!","[fnt_pixel]Não se esqueça de visitar o comerciante com mais frequência.");

            #endregion
            break;
        case 6: //polish
            #region eng

            eng1 = choose("[fnt_pixel]Powodzenia w poszukiwaniu swojej drużyny!","[fnt_pixel]Nie zapomnijcie, aby częściej odwiedzać kupca.");

            #endregion
            break;
        case 7: //japanese
            #region eng

            eng1 = choose("[fnt_pixel]チーム探しに幸運を！","[fnt_pixel]また、商人に会いに来てね。");

            #endregion
            break;
        case 8: //deutch
            #region eng

            eng1 = choose("[fnt_pixel]Viel Glück bei der Suche nach deiner Mannschaft!","[fnt_pixel]Vergiss nicht, öfter den Händler aufzusuchen.");

            #endregion
            break;
        case 9: //french
            #region eng

            eng1 = choose("[fnt_pixel]Bonne chance pour trouver votre équipe !","[fnt_pixel]N'oubliez pas de visiter le marchand plus souvent.");

            #endregion
            break;
        case 10: // Italian
            #region eng

            eng1 = choose("[fnt_pixel]Buona fortuna con la ricerca del tuo equipaggio!","[fnt_pixel]Non dimenticare di visitare il commerciante più spesso.");

            #endregion
            break;
    }    
}    
    
function fnc_lng_jv_cmt1(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "[fnt_pixel][wave]Greetings![/wave] how happy I am to see new faces in this village!";
            eng2 = "[fnt_pixel]I'm a local inventor-enthusiast. I invent, build and test all sorts of devices. There's not much to do on the island after all.";
            eng3 = "[fnt_pixel]In fact, I'm the man who makes his dreams come true. That's why they call me - Com Trues.";
            eng4 = "[fnt_pixel]This is a new invention I've been working on a lot lately - [wave]spring boots[/wave]. It hasn't been tested yet, so I'll let you try it out temporarily.";
            eng5 = "[fnt_pixel]By the way, I've built a testing ground not far from here, specifically for these boots. Would you like to go there? You'll get a nice little surprise at the end.";

            #endregion
            break;
        case 1: //russian
            #region eng
            #region  ENG text
            eng1 = "[fnt_pixel_ru][wave]Приветствую вас![/wave] Как я рад видеть новые лица в этой деревне!";
            eng2 = "[fnt_pixel_ru]Я местный изобретатель-энтузиаст. Я изобретаю, строю и испытываю всевозможные устройства. В конце концов, мало ли чем можно заняться на острове";
            eng3 = "[fnt_pixel_ru]На самом деле, я человек, который воплощает мечты в реальность.";
            eng4 = "[fnt_pixel_ru]Это новое изобретение, над которым я много работаю в последнее время - [wave]пружинные сапоги[/wave]. Оно еще не опробовано, поэтому я дам вам его временно опробовать";
            eng5 = "[fnt_pixel_ru]Кстати, недалеко отсюда я построил полигон специально для этих сапог. Не хотите ли отправиться туда? В конце вас ждет небольшой приятный сюрприз";

            #endregion

            #endregion
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "[fnt_pixel][wave]¡Hola![/wave]¡Cuánto me alegra ver caras nuevas en este pueblo!";
            eng2 = "[fnt_pixel]Soy un inventor-entusiasta local. Invento, construyo y pruebo todo tipo de artefactos. Después de todo, no hay mucho que hacer en la isla.";
            eng3 = "[fnt_pixel]De hecho, soy el hombre que hace realidad sus sueños. Por eso me llaman - Com Trues.";
            eng4 = "[fnt_pixel]Este es un nuevo invento en el que he estado trabajando mucho últimamente - [wave]botas de primavera[/wave]. Aún no ha sido probado, así que te dejaré probarlo temporalmente.";
            eng5 = "[fnt_pixel]Por cierto, he construido un campo de pruebas no muy lejos de aquí, especialmente para estas botas. ¿Te gustaría ir allí? Te llevarás una agradable sorpresa al final.";

            #endregion
            break;
        case 3: //chinese
            #region  СN text
            eng1 = "[fnt_pixel][wave]欢迎![/wave] 在这个村子里看到新面孔, 我多么高兴啊!";
            eng2 = "[fnt_pixel]我是当地发明家的粉丝. 我发明, 制造和测试各种设备. 嗯… 岛上没什么可做的.";
            eng3 = "[fnt_pixel]老实说, 我是实现梦想的人. 这就是为什么他们称我为 - 成人.";
            eng4 = "[fnt_pixel]这是我最近一直在努力的一项新发明 - [wave]弹簧靴[/wave]. 它们尚未经过测试, 所以我会让您先尝试一下.";
            eng5 = "[fnt_pixel]对了, 我在离这里不远的地方专门为这双靴子建了一个试验场. 你想去那里吗? 完成后, 你会感到惊喜.";

            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "[fnt_pixel][wave]Saudações![/wave] Como estou feliz por ver caras novas nesta aldeia!";
            eng2 = "[fnt_pixel]Sou um inventor local entusiasta. Invento, construo e testei todo o tipo de dispositivos. Afinal, não há muito o que fazer na ilha.";
            eng3 = "[fnt_pixel]Na verdade, sou o homem que transforma sonhos em realidade. É por isso que me chamam Reali Dadis.";
            eng4 = "[fnt_pixel]Esta é uma nova invenção em que tenho trabalhado muito ultimamente - [wave]sd botas de mola[/wave]. Ainda não foram testadas, por isso vou deixar-te experimentar temporariamente.";
            eng5 = "[fnt_pixel]A propósito, construí um campo de provas não muito longe daqui, especificamente para estas botas. Gostarias de ir lá? Vais ter uma bela surpresa no final.";

            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "[fnt_pixel][wave]Saudações![/wave] Fico muito feliz em ver caras novas nesta aldeia!";
            eng2 = "[fnt_pixel]Sou um inventor-entusiasta daqui. Eu invento, construo e testo todos os tipos de dispositivos. Afinal de contas, não há muito o que fazer na ilha.";
            eng3 = "[fnt_pixel]Na verdade, sou o homem que transforma sonhos em realidade. É por isso que me chamam - Reali Dadis.";
            eng4 = "[fnt_pixel]Esta é uma nova invenção na qual tenho trabalhado muito ultimamente - [wave]botas de mola[/wave]. Ainda não foram testadas, então vou deixar você experimentá-las temporariamente.";
            eng5 = "[fnt_pixel]A propósito, construí um campo de testes não muito longe daqui, especialmente para essas botas. Você gostaria de ir para lá? Vai ter uma pequena surpresa no final.";

            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "[fnt_pixel][wave]Witaj![/wave] Jakże się cieszę, że widzę nowe twarze w tej wiosce!";
            eng2 = "[fnt_pixel]Jestem miejscowym wynalazcą- pasjonatem. Wymyślam, tworzę i testuję wszelkiego rodzaju urządzenia. W końcu na wyspie nie ma zbyt wiele do roboty.";
            eng3 = "[fnt_pixel]W rzeczywistości jestem człowiekiem, który spełnia swoje marzenia. Dlatego też nazywają mnie - Com Trues.";
            eng4 = "[fnt_pixel]To nowy wynalazek, nad którym ostatnio dużo pracuję - [wave]buty sprężynowe[/wave]. Nie zostały jeszcze sprawdzane, więc pozwolę Wam je tymczasowo przetestować.";
            eng5 = "[fnt_pixel]Przy okazji, niedaleko stąd zbudowałem poligon, stworzony tylko dla tych butów. Chciałbyś się tam wybrać? Na koniec czeka cię miła niespodzianka.";

            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "[fnt_pixel][wave]こんにちは![/wave] この村に新しい出会いがあって、とても嬉しい！";
            eng2 = "[fnt_pixel]私はこの村の発明家。いろいろな装置を作ってはテストしている。そもそも、この島ですることはあまりない。";
            eng3 = "[fnt_pixel]実は、夢を叶える男なんだ。だから、みんなは私のことを「カム・トゥルー」と呼ぶ。";
            eng4 = "[fnt_pixel]これは最近取り掛かっている新発明、 [wave]スプリングブーツだ[/wave]。 まだテストしていないから、一時的に試してもらうことにする。";
            eng5 = "[fnt_pixel]ちなみに、このブーツの実験場を、ここからそう遠くないところに作った。行ってみたい？最後にちょっとしたサプライズがある。";

            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "[fnt_pixel][wave]Sei gegrüßt![/wave] Ich freue mich, neue Gesichter in diesem Dorf zu sehen!";
            eng2 = "[fnt_pixel]Ich bin ein lokaler Tüftler. Ich erfinde, baue und teste alle Arten von Geräten. Es gibt schließlich nicht viel zu tun auf der Insel.";
            eng3 = "[fnt_pixel]Eigentlich bin ich der Mann, der seine Träume wahr werden lässt. Deshalb nennen sie mich - Wird War.";
            eng4 = "[fnt_pixel]Das ist eine neue Erfindung, an der ich in letzter Zeit viel gearbeitet habe - [wave]Springstiefel[/wave]. Sie wurde noch nicht getestet, also lasse ich dich sie vorübergehend ausprobieren.";
            eng5 = "[fnt_pixel]Übrigens habe ich nicht weit von hier ein Testgelände gebaut, das speziell für diese Stiefel gedacht ist. Hast du Lust, dorthin zu gehen? Am Ende wirst du eine nette kleine Überraschung erleben.";

            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "[fnt_pixel][wave]Salutations ![/wave] Comme je suis heureux de voir de nouveaux visages dans ce village !";
            eng2 = "[fnt_pixel]Je suis un inventeur-enthousiaste local. J'invente, je construis et je teste toutes sortes d'appareils. Il n'y a pas grand-chose à faire sur l'île, après tout.";
            eng3 = "[fnt_pixel]En fait, je suis l'homme qui fait de ses rêves une réalité. C'est pourquoi on m'appelle - Réa Lité.";
            eng4 = "[fnt_pixel]C'est une nouvelle invention sur laquelle j'ai beaucoup travaillé ces derniers temps - [wave]les bottes à ressort[/wave].Elle n'a pas encore été testée, alors je vous laisse l'essayer temporairement.";
            eng5 = "[fnt_pixel]D'ailleurs, j'ai construit un terrain d'essai pas loin d'ici, spécialement pour ces bottes. Vous aimeriez y aller ? Vous aurez une belle petite surprise à la fin.";

            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            eng1 = "[fnt_pixel][wave]Ben arrivato![/wave] Quanto sono felice di vedere facce nuove in questo villaggio!";
            eng2 = "[fnt_pixel]Sono un appassionato di inventori locali. Invento, costruisco e collaudo tutti i tipi di dispositivi. Beh... non c'è molto da fare sull'isola.";
            eng3 = "[fnt_pixel]In tutta onestà, sono l'uomo che realizza i suoi sogni. Ecco perché mi chiamano - Real.";
            eng4 = "[fnt_pixel]Questa è una nuova invenzione su cui ho lavorato molto di recente: [wave]stivali con molle[/wave]. Non sono ancora stati testati, quindi ti lascerò prima provarli un po'.";
            eng5 = "[fnt_pixel]A proposito, ho costruito un terreno di prova non lontano da qui, appositamente per questi stivali. Ti piacerebbe andarci? Avrai una bella sorpresa quando avrai finito.";

            #endregion
            break;
    }    
}    

function fnc_lng_jv_cmt2(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "[fnt_pixel]Shall we go to the proving ground?";

            #endregion
            break;
        case 1: //russian
            #region кruг

            eng1 = "[fnt_pixel_ru]Отправляемся на испытательный полигон?";

            #endregion
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "[fnt_pixel]¿Vamos al campo de pruebas?";

            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]我们去试验场好吗?";

            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "[fnt_pixel]Vamos para o campo de provas?";

            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "[fnt_pixel]Vamos para o campo de testes?";

            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "[fnt_pixel]Zatem, idziemy na poligon?";
            #endregion          
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "[fnt_pixel]実験場へ行く？";

            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "[fnt_pixel]Gehen wir zum Testgelände?";

            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "[fnt_pixel]Si on allait sur le terrain d'essai ?";

            #endregion
            break;
        case 10: //Italian
            #region  ENG text
            eng1 = "[fnt_pixel]Andiamo al campo di prova?";

            #endregion
            break;
    }    
}    

function fnc_lng_jv_cmt3(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "[fnt_pixel]You're doing a great job! I hope you liked the little gift you received by the end of the task ?";
            eng2 = "[fnt_pixel]Let those boots help you with your exploration. And don't forget to return them when you leave the island. It's a one-of-a-kind piece!";
            #endregion
            break;
        case 1: //russian
            #region кruг

            eng1 = "[fnt_pixel_ru]Вы отлично справились! Надеюсь, вам понравился маленький подарок в конце полигона?";
            eng2 = "[fnt_pixel_ru]Пусть эти ботинки помогут вам в исследовании. И не забудьте вернуть их, когда покинете остров. Это единственная в своем роде вещь!";

            #endregion
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "[fnt_pixel]¡Estás haciendo un gran trabajo! Espero que te haya gustado el regalito que has recibido al final de la tarea.";
            eng2 = "[fnt_pixel]Que esas botas te ayuden en tu exploración. Y no olvides devolverlas cuando abandones la isla. Es una pieza única.";
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]你做得很好! 我希望你喜欢你在任务结束时收到的小礼物?";
            eng2 = "[fnt_pixel]让这些靴子帮助您进行探索. 离开岛屿时别忘了归还它们. 这是一件独一无二的作品.";
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "[fnt_pixel]Está a fazer um excelente trabalho! Espero que tenhas gostado do pequeno presente que recebeste no final da tarefa.";
            eng2 = "[fnt_pixel]Deixa que essas botas te ajudem com a tua exploração. E não te esqueças de devolvê-las quando sair da ilha. É uma peça única";
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "[fnt_pixel]Você está fazendo um ótimo trabalho! Espero que tenha gostado do presentinho que recebeu no final da tarefa.";
            eng2 = "[fnt_pixel]Deixe essas botas te ajudarem na sua exploração. E não se esqueça de devolvê-las quando sair da ilha. É uma peça única";
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "[fnt_pixel]Robisz świetną robotę! Mam nadzieję, że spodobał Ci się prezent, który otrzymałeś na zakończenie zadania?";
            eng2 = "[fnt_pixel]Niech te buty pomogą Ci w eksploracji Archipelagu. Nie zapomnij zwrócić ich po opuszczeniu wyspy. To jedyna rzecz w swoim rodzaju.";
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "[fnt_pixel]素晴らしい！タスクの最後のプレゼントは喜んでもらえた？";
            eng2 = "[fnt_pixel]そのブーツで探検は大助かり。島を出るときには忘れずに返済んだ。世界にひとつしかないものだから。";
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "[fnt_pixel]Du machst das toll Ich hoffe, das kleine Geschenk, das du am Ende der Aufgabe erhalten hast, hat dir gefallen?";
            eng2 = "[fnt_pixel]Diese Stiefel sollen dir bei deiner Erkundung helfen. Und vergiss nicht, sie zurückzugeben, wenn du die Insel verlässt. Sie sind ein Unikat.";
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "[fnt_pixel]Vous faites un bon travail ! J'espère que vous avez apprécié le petit cadeau que vous avez reçu à la fin de la mission ?task ?";
            eng2 = "[fnt_pixel]Laissez ces bottes vous aider dans votre exploration. Et n’oubliez pas de les rendre quand vous partirez de l'île. C'est une pièce unique.";
            #endregion
            break;
        case 10: //Italian
            #region  ENG text
            eng1 = "[fnt_pixel]Stai facendo un ottimo lavoro! Spero ti sia piaciuto il piccolo regalo che hai ricevuto alla fine del compito?";
            eng2 = "[fnt_pixel]Lascia che quegli stivali ti aiutino nella tua esplorazione. E non dimenticare di restituirli quando lasci l'isola. È un pezzo unico";
            #endregion
            break;
    }    
}     
    
function fnc_lng_jcv_cmt_1(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "[fnt_pixel]A little briefing. [c_blue]Press the jump button while you're in the air and you activate the boots.";
            eng2 = "[fnt_pixel]You can use them to jump over some enemies and even spikes! The important thing to remember is that successfully pushing off with the boots recharges your dash.";
            eng3 = "[fnt_pixel]Hope to meet you at the end of this course. Good luck!";
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "[fnt_pixel_ru]Небольшой инструктаж. [c_blue]Нажми кнопку прыжка, когда вы находитесь в воздухе, и вы активируете сапоги";
            eng2 = "[fnt_pixel_ru]С их помощью вы можете прыгнуть на некоторых врагов и даже шипы! Важно помнить, что успешное отталкивание с помощью ботинок перезаряжает ваш рывок.";
            eng3 = "[fnt_pixel_ru]Надеюсь встретиться с вами в конце этого обучения. Удачи!";
            #endregion           
            break;
        case 2: //spanish
            #region  кг text
            eng1 = "[fnt_pixel]Un pequeño consejo. [c_blue]Pulsa el botón de salto mientras estás en el aire y activarás las botas.";
            eng2 = "[fnt_pixel]Puedes usarlas para saltar sobre algunos enemigos ¡e incluso sobre pinchos! Lo importante es que recuerdes que al impulsarte con éxito con las botas se recarga tu impulso.";
            eng3 = "[fnt_pixel]Espero encontrarte al final de este recorrido. ¡Suerte!";
            #endregion  
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]一点简报: [c_blue]在空中按跳跃键激活靴子. ";
            eng2 = "[fnt_pixel]你可以用它们跳过一些敌人甚至尖刺! 重要的是要记住, 成功地推动靴子可以为你的冲刺充电";
            eng3 = "[fnt_pixel]希望在本课程结束时与您见面. 祝你好运 !";
            #endregion
            break;
        case 4: //portug
            #region  кг text
            eng1 = "[fnt_pixel]Um pequeno briefing. [c_blue]Prima o botão de salto enquanto estiveres no ar e ativa as botas.";
            eng2 = "[fnt_pixel]Podes usá-las para saltar por cima de alguns inimigos e até de picos! O importante a lembrar é que ao ser bem sucedido ao soltar-se com as botas recarregas o seu dash";
            eng3 = "[fnt_pixel]Espero encontrar-te no final deste curso. Boa sorte!";
            #endregion  
            break;
        case 5: //brazil
            #region  кг text
            eng1 = "[fnt_pixel]Uma pequena observação. [c_blue]Pressione o botão de salto enquanto estiver no ar e ative as botas.";
            eng2 = "[fnt_pixel]Você pode usá-las para pular sobre alguns inimigos e até picos! Importante lembrar que ao ser bem sucedido ao soltar-se com as botas recarrega o seu dash";
            eng3 = "[fnt_pixel]Espero te encontrar no final deste curso. Boa sorte!";
            #endregion  
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "[fnt_pixel]Mała odprawa. [c_blue]Naciśnij przycisk skoku, gdy jesteś w powietrzu, a aktywujesz buty.";
            eng2 = "[fnt_pixel]Możesz ich użyć, aby przeskoczyć nad niektórymi wrogami i kolcami! Ważna rzecz! Twoja moc ładuje się z każdym udanym odepchnięciem butami.";
            eng3 = "[fnt_pixel]Mam nadzieję, że spotkamy się na końcu tego kursu. Powodzenia !!!";
            #endregion
            break;
        case 7: //japanese
            #region  кг text
            eng1 = "[fnt_pixel]簡単なブリーフィング。[c_blue]空中にいるときにジャンプボタンを押すと、ブーツが起動する。";
            eng2 = "[fnt_pixel]これを使うと、一部の敵やトゲを飛び越えることができる。ブーツで飛び出すと、ダッシュ力がチャージされるのがポイントだ。";
            eng3 = "[fnt_pixel]では、コースの最後で会おう。幸運を！";
            #endregion  
            break;
        case 8: //deutch
            #region  кг text
            eng1 = "[fnt_pixel]Eine kleine Einweisung. [c_blue]Drücke die Sprungtaste, während du in der Luft bist, und du aktivierst die Stiefel.";
            eng2 = "[fnt_pixel]Mit ihnen kannst du über einige Gegner und sogar über Stacheln springen! Wichtig ist, dass du dich mit den Stiefeln erfolgreich abstoßen kannst, um deinen Dash wieder aufzuladen.";
            eng3 = "[fnt_pixel]Ich hoffe, wir sehen uns am Ende dieses Kurses. Viel Glück!";
            #endregion  
            break;
        case 9: //french
            #region  кг text
            eng1 = "[fnt_pixel]Un petit briefing. [c_blue]Appuyez sur le bouton de saut lorsque vous êtes en l'air et vous activez les bottes.";
            eng2 = "[fnt_pixel]Vous pouvez les utiliser pour sauter par-dessus certains ennemis et même des piques ! Ce qu'il faut retenir, c'est que si vous réussissez à sauter avec les bottes, vous pourrez recharger votre dash.";
            eng3 = "[fnt_pixel]J'espère vous rencontrer à la fin de ce cours. Bonne chance !";
            #endregion  
            break;
        case 10: //Italian
            #region  ENG text
            eng1 = "[fnt_pixel]Un piccolo briefing: [c_blue]premi il tasto di saltare mentre sei in aria per attivare gli stivali.";
            eng2 = "[fnt_pixel]Puoi usarli per saltare alcuni nemici e persino punte! La cosa importante da ricordare è che spingere con successo con gli stivali ricarica la tua corsa";
            eng3 = "[fnt_pixel]Spero di incontrarti alla fine di questo corso. In bocca al lupo !";
            #endregion
            break;
    }    
}        

function fnc_lng_jcv_cmt_2(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "[fnt_pixel]Press the jump button while you're in the air and you activate the boots.";
            eng2 = "[fnt_pixel]Jump over enemies or spikes. Successfully pushing off with your boots recharges your dash. Good luck!";
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "[fnt_pixel_ru]Нажмите кнопку прыжка, когда вы находитесь в воздухе, и вы активируете ботинки";
            eng2 = "[fnt_pixel_ru]Прыгайте по врагам или шипам. Успешное отталкивание сапогами перезаряжает ваш рывок. Удачи!";
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "[fnt_pixel]Pulsa el botón de salto mientras estás en el aire y activarás las botas.";
            eng2 = "[fnt_pixel]Salta sobre enemigos o pinchos. Saltar con éxito con las botas recarga tu dash. ¡Buena suerte!";
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]在空中按跳跃键激活靴子. ";
            eng2 = "[fnt_pixel]跳过敌人或尖刺. 成功推动你的靴子为你的冲刺充电. 祝你好运!";
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "[fnt_pixel]Prima o botão de salto enquanto estiveres no ar e ativa as botas.";
            eng2 = "[fnt_pixel]Salta sobre inimigos ou picos. Ao ser bem sucedido ao soltar-se com as botas recarregas o seu dash. Boa sorte!";
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "[fnt_pixel]Pressione o botão de salto enquanto estiver no ar e ative as botas.";
            eng2 = "[fnt_pixel]Salte sobre inimigos ou picos. Ao ser bem sucedido ao soltar-se com as botas recarrega o seu dash. Boa sorte!";
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "[fnt_pixel]Naciśnij przycisk skoku, gdy jesteś w powietrzu, aby aktywować buty.";
            eng2 = "[fnt_pixel]Przeskocz nad niektórymi wrogami i kolcami! Ważna rzecz! Twoja moc ładuje się z każdym udanym odepchnięciem butami.";
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "[fnt_pixel]空中にいるときにジャンプボタンを押すと、ブーツが起動する。";
            eng2 = "[fnt_pixel]敵やトゲを飛び越える。ブーツで押し切ることに成功すると、ダッシュ力がチャージされる。幸運を！";
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "[fnt_pixel]Drücke die Sprungtaste, während du in der Luft bist, und du aktivierst die Stiefel.";
            eng2 = "[fnt_pixel]Springe über Feinde oder Stacheln. Wenn du dich erfolgreich mit deinen Stiefeln abstößt, wird dein Dash wieder aufgeladen. Viel Glück!";
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "[fnt_pixel]Appuyez sur le bouton de saut lorsque vous êtes en l'air et vous activez les bottes.";
            eng2 = "[fnt_pixel]Sautez par-dessus les ennemis ou les pointes. Si vous réussissez à sauter avec vos bottes, vous rechargez votre dash. Bonne chance !";
            #endregion
            break;
        case 10: //Italian
            #region  ENG text
            eng1 = "[fnt_pixel]Premi il tasto di saltare mentre sei in aria per attivare gli stivali.";
            eng2 = "[fnt_pixel]Salta sui nemici o sugli spuntoni. Spingere con successo con gli stivali ricarica la tua corsa. In bocca al lupo!";
            #endregion
            break;
    }    
}  

function fnc_lng_jcv_cmt_11(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "[fnt_pixel]Phew, that was great. See how easy they are to use? Time to go back to the village.";
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "[fnt_pixel_ru]Фух, это было здорово. Видите, как легко ими пользоваться? Пора возвращаться в деревню.";
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "[fnt_pixel]Uf, ha sido genial. ¿Ves qué fáciles son de usar? Es hora de volver al pueblo.";
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]那太好了. 看看它们有多容易使用? 是时候回村了.";
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "[fnt_pixel]Isso foi fantástico. Vês como são fáceis de usar? Hora de voltar para a aldeia.";
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "[fnt_pixel]Ufa, isso foi ótimo. Viu como são fáceis de usar? Hora de voltar para a aldeia.";
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "[fnt_pixel]Phew, to było świetne. Widzisz, jak łatwo jest ich używać? Czas wrócić do wioski.";
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "[fnt_pixel]ふー、すごい。使い方は簡単だろ？そろそろ村に戻ろう。";
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "[fnt_pixel]Puh, das war toll. Siehst du, wie einfach sie zu benutzen sind? Zeit, zurück ins Dorf zu gehen.";
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "[fnt_pixel]Ouf, c'était génial. Vous voyez comme ils sont faciles à utiliser ? Il est temps de retourner au village.";
            #endregion
            break;
        case 10: //Italian
            #region  ENG text
            eng1 = "[fnt_pixel]Uff, è stato grandioso. Vedi quanto sono facili da usare? È ora di tornare al villaggio.";
            #endregion
            break;
    }    
} 


function fnc_lng_merch3()
{
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

function fnc_lng_merch_j_f1()
{
    switch(global.language)
    {
        case 0:
            #region English
            eng1 = "[fnt_pixel] DELO SDELANO, HOCHESH MONETY ILI PLIVI";
            #endregion            
            break;
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            break;
        case 6:
            break;
        case 7:
            break;
        case 8:
            break;
        case 9:
            break;
        case 10:
            break;
    }
}

function fnc_lng_merch_j_f2()
{
    switch(global.language)
    {
        case 0:
            #region English
            eng1 = "[fnt_pixel]Are we leaving already??";
            #endregion            
            break;
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            break;
        case 6:
            break;
        case 7:
            break;
        case 8:
            break;
        case 9:
            break;
        case 10:
            break;
    }
}

function fnc_lng_merch_j_f3()
{
    switch(global.language)
    {
        case 0:
            #region English
            eng1 = "[fnt_pixel] Oh, you saved old Pew. Great job. Now are you ready to move on?";
            #endregion            
            break;
        case 1:
            break;
        case 2:
            break;
        case 3:
            break;
        case 4:
            break;
        case 5:
            break;
        case 6:
            break;
        case 7:
            break;
        case 8:
            break;
        case 9:
            break;
        case 10:
            break;
    }
}

function fnc_lng_fgroundedf_1_r33_1(){
    switch(global.language)
    {
        case 0: //English   
            eng1 =  "[fnt_pixel]Just look at the big fish caught in my nets.";
            eng2 =  "[fnt_pixel]Well, hello Captain, I've been waiting for you."
            eng3 =  "[fnt_pixel]And you have changed a little."
            eng4 =  "[fnt_pixel]What? Has the temple blessed you with power?"
            eng5 =  "[fnt_pixel]Fabulous!"
            eng6 =  "[fnt_pixel]Well, Captain - don't hold yourself back."
            eng7 =  "[fnt_pixel]Let's have some fun."
            eng8 =  "[fnt_pixel]Show me what you are capable of."

            break;
        case 1: //russian
            eng1 =  "[fnt_pixel_ru]Только посмотрите, какая крупная рыба попалась в мои сети.";
            eng2 =  "[fnt_pixel_ru]Ну, здравствуй, капитан, я ждал тебя."
            eng3 =  "[fnt_pixel_ru]А ты немного изменился."
            eng4 =  "[fnt_pixel_ru]Что, храм наградил тебя силой?"
            eng5 =  "[fnt_pixel_ru]Потрясающе!"
            eng6 =  "[fnt_pixel_ru]Ну, кэп, не сдерживай себя."
            eng7 =  "[fnt_pixel_ru]Давай повеселимся."
            eng8 =  "[fnt_pixel_ru]Покажи мне, на что ты способен."
            break;
        case 2: //spanish
            eng1 =  "[fnt_pixel]Mira qué peces más grandes he atrapado en mis redes.";
            eng2 =  "[fnt_pixel]Bueno, hola Capitán, he estado esperándote"
            eng3 =  "[fnt_pixel]Y has cambiado un poco"
            eng4 =  "[fnt_pixel]¿Qué? ¿El templo te ha bendecido con poder?"
            eng5 =  "[fnt_pixel]Fabuloso"
            eng6 =  "[fnt_pixel]Bueno, Capitán, no te contengas."
            eng7 =  "[fnt_pixel]Vamos a divertirnos."
            eng8 =  "[fnt_pixel]Muéstrame de lo que eres capaz."
            break;
        case 3: //chinese
            eng1 =  "[fnt_pixel]看看我网里钓到的大鱼.";
            eng2 =  "[fnt_pixel]所以! 嗨船长! 我在等你."
            eng3 =  "[fnt_pixel]而你变了一点"
            eng4 =  "[fnt_pixel]什么? 神殿是否赐予你力量"
            eng5 =  "[fnt_pixel]优秀!"
            eng6 =  "[fnt_pixel]好吧, 船长 - 不要让自己退缩"
            eng7 =  "[fnt_pixel]让我们玩得开心"
            eng8 =  "[fnt_pixel]让我看看你能做什么."
            break;
        case 4: //portug
            eng1 =  "[fnt_pixel]Simplesmente olha para os peixes grandes capturados nas minhas redes.";
            eng2 =  "[fnt_pixel]Olá Capitão, tenho estado à tua espera."
            eng3 =  "[fnt_pixel]E mudaste um pouco."
            eng4 =  "[fnt_pixel]O que? O templo abençoou-te com poder"
            eng5 =  "[fnt_pixel]Fabuloso!"
            eng6 =  "[fnt_pixel]Bem, capitão - não te retraias"
            eng7 =  "[fnt_pixel]Vamos divertir-nos."
            eng8 =  "[fnt_pixel]Mostrem-me do que são capazes."
            break;
        case 5: //brazil    
            eng1 =  "[fnt_pixel]Simplesmente olhe para os peixes grandes capturados em minhas redes.";
            eng2 =  "[fnt_pixel]Bem, olá capitão, estava esperando por você"
            eng3 =  "[fnt_pixel]E você mudou um poucole."
            eng4 =  "[fnt_pixel]Que? O templo te abençoou com poder"
            eng5 =  "[fnt_pixel]Fabuloso!"
            eng6 =  "[fnt_pixel]Bem, capitão - não se retraia"
            eng7 =  "[fnt_pixel]Vamos nos divertir"
            eng8 =  "[fnt_pixel]Mostre-me do que você é capaz."
            break;
        case 6: //polish
            eng1 =  "[fnt_pixel]Spójrzcie tylko na te duże ryby złapane w moje sieci.";
            eng2 =  "[fnt_pixel]Witaj kapitanie, czekałem na ciebie."
            eng3 =  "[fnt_pixel]I trochę się zmieniłeś."
            eng4 =  "[fnt_pixel]Co? Czy świątynia pobłogosławiła cię mocą?"
            eng5 =  "[fnt_pixel]Bajeczne!"
            eng6 =  "[fnt_pixel]Cóż, kapitanie - nie powstrzymuj się."
            eng7 =  "[fnt_pixel]Zabawmy się trochę"
            eng8 =  "[fnt_pixel]Pokaż mi, do czego jesteś zdolny."
            break;
        case 7: //japanese
            eng1 =  "[fnt_pixel]私の網にかかった大きな魚を見て。";
            eng2 =  "[fnt_pixel]やあ船長、待ってたよ。"
            eng3 =  "[fnt_pixel]少し変わったね"
            eng4 =  "[fnt_pixel]なに？寺院から力を授かった？"
            eng5 =  "[fnt_pixel]素晴らしい!"
            eng6 =  "[fnt_pixel]さあ、船長 - 自分を抑え込まないで。"
            eng7 =  "[fnt_pixel]楽しもう"
            eng8 =  "[fnt_pixel]あなたの実力を見せてください。"
            break;
        case 8: //deutch
            eng1 =  "[fnt_pixel]Sieh dir nur die großen Fische an, die sich in meinen Netzen verfangen haben.";
            eng2 =  "[fnt_pixel]Hallo Kapitän, ich habe auf dich gewartet"
            eng3 =  "[fnt_pixel]Und du hast dich ein wenig verändert"
            eng4 =  "[fnt_pixel]Was? Hat der Tempel dir Kraft verliehen"
            eng5 =  "[fnt_pixel]Fabelhaft!"
            eng6 =  "[fnt_pixel]Nun, Kapitän - halte dich nicht zurück"
            eng7 =  "[fnt_pixel]Lass uns etwas Spaß haben"
            eng8 =  "[fnt_pixel]Zeigen Sie mir, wozu Sie fähig sind."
            break;
        case 9: //french
            eng1 =  "[fnt_pixel]Regardez les gros poissons pris dans mes filets.";
            eng2 =  "[fnt_pixel]Eh bien, bonjour Capitaine, je vous ai attendu."
            eng3 =  "[fnt_pixel]Et vous avez un peu changé"
            eng4 =  "[fnt_pixel]Quoi ? Est-ce que le temple vous a béni avec un pouvoir ?"
            eng5 =  "[fnt_pixel]Fabuleux!"
            eng6 =  "[fnt_pixel]Eh bien, Capitaine - ne vous retenez pas."
            eng7 =  "[fnt_pixel]Amusons-nous un peu."
            eng8 =  "[fnt_pixel]Montre-moi ce dont tu es capable."
            break;
        case 10: //Italian
            eng1 =  "[fnt_pixel]Guarda i pesci grossi catturati nelle mie reti.";
            eng2 =  "[fnt_pixel]Dunque! Ciao Capitano! Ti stavo aspettando"
            eng3 =  "[fnt_pixel]E tu sei cambiato un po'"
            eng4 =  "[fnt_pixel]Che cosa? Il tempio ti ha benedetto con il potere?"
            eng5 =  "[fnt_pixel]Favoloso"
            eng6 =  "[fnt_pixel]Allora, Capitano -  non trattenerti"
            eng7 =  "[fnt_pixel]Divertiamoci!"
            eng8 =  "[fnt_pixel]Mostrami di cosa sei capace."
            break;
    }   
}

function fnc_lng_fgroundedf_1_r33_2(){
    switch(global.language)
    {
        case 0: //English   
            eng1 = "[fnt_pixel]Absolutely useless.";
            eng2 = "[fnt_pixel]But please, do not despair!";
            eng3 = "[fnt_pixel]It's not over for you ... yet.";
            eng4 = "[fnt_pixel]I will give you the opportunity to escape.";
            eng5 = "[fnt_pixel]Don't disappoint me Captain, let's have some fun!";

            break;
        case 1: //russian
            eng1 = "[fnt_pixel_ru]Абсолютно бесполезно.";
            eng2 = "[fnt_pixel_ru]Но, пожалуйста, не отчаивайтесь!";
            eng3 = "[fnt_pixel_ru]Для тебя еще не все кончено... пока.";
            eng4 = "[fnt_pixel_ru]Я дам вам возможность сбежать.";
            eng5 = "[fnt_pixel_ru]Не разочаровывай меня, Кэп, давай повеселимся!";
            break;
        case 2: //spanish
            eng1 = "[fnt_pixel]Absolutamente inservible.";
            eng2 = "[fnt_pixel]Pero por favor, ¡no desesperes!";
            eng3 = "[fnt_pixel]No ha terminado para ti ... todavía.";
            eng4 = "[fnt_pixel]Te daré la oportunidad de escapar.";
            eng5 = "[fnt_pixel]No me decepcione Capitán, ¡vamos a divertirnos!";
            break;
        case 3: //chinese
            eng1 = "[fnt_pixel]绝对没用.";
            eng2 = "[fnt_pixel]但请不要绝望!";
            eng3 = "[fnt_pixel]对你来说还没有结束";
            eng4 = "[fnt_pixel]我给你逃跑的机会.";
            eng5 = "[fnt_pixel]不要让我失望船长, 让我们玩得开心!";
            break;
        case 4: //portug
            eng1 = "[fnt_pixel]Absolutamente inútil.";
            eng2 = "[fnt_pixel]Mas, por favor, não te desesperes!";
            eng3 = "[fnt_pixel]Ainda não acabou para ti... Ainda.";
            eng4 = "[fnt_pixel]Vou dar-te a oportunidade de escapar.";
            eng5 = "[fnt_pixel]Não me desapontes, Capitão, vamos divertir-nos!";
            break;
        case 5: //brazil
            eng1 = "[fnt_pixel]Absolutamente inútil.";
            eng2 = "[fnt_pixel]Mas, por favor, não se desespere!";
            eng3 = "[fnt_pixel]Não acabou para você... ainda.";
            eng4 = "[fnt_pixel]Eu vou te dar a oportunidade de escapar.";
            eng5 = "[fnt_pixel]Não me decepcione Capitão, vamos nos divertir!";
            break;
        case 6: //polish
            eng1 = "[fnt_pixel]Absolutnie bezużyteczne.";
            eng2 = "[fnt_pixel]Ale proszę, nie rozpaczaj!";
            eng3 = "[fnt_pixel]To jeszcze nie koniec dla ciebie... jeszcze.";
            eng4 = "[fnt_pixel]Dam ci szansę na ucieczkę.";
            eng5 = "[fnt_pixel]Nie zawiedź mnie kapitanie. Zabawmy się trochę!";
            break;
        case 7: //japanese
            eng1 = "[fnt_pixel]まったくダメだ。";
            eng2 = "[fnt_pixel]でも、どうか絶望しないで！";
            eng3 = "[fnt_pixel]まだ終わりではない...まだ。";
            eng4 = "[fnt_pixel]逃げる機会を与えてやる。";
            eng5 = "[fnt_pixel]私を失望させないでくレ、船長、楽しもう！";
            break;
        case 8: //deutch
            eng1 = "[fnt_pixel]Absolut nutzlos.";
            eng2 = "[fnt_pixel]Aber bitte, verzweifle nicht!";
            eng3 = "[fnt_pixel]Es ist noch nicht vorbei für dich ... noch nicht.";
            eng4 = "[fnt_pixel]Ich werde dir die Möglichkeit geben, zu entkommen.";
            eng5 = "[fnt_pixel]Enttäusche mich nicht, Kapitän, lass uns ein bisschen Spaß haben!";
            break;
        case 9: //french
            eng1 = "[fnt_pixel]Absolument inutile.";
            eng2 = "[fnt_pixel]Mais s'il vous plaît, ne désespérez";
            eng3 = "[fnt_pixel]Ce n'est pas fini pour vous ... encore.";
            eng4 = "[fnt_pixel]Je vous donnerai l'occasion de vous échapper.";
            eng5 = "[fnt_pixel]Ne me décevez pas Capitaine, amusons-nous un peu !";
            break;
        case 10: //Italian
            eng1 = "[fnt_pixel]Assolutamente inutile.";
            eng2 = "[fnt_pixel]Ma per favore, non disperare!";
            eng3 = "[fnt_pixel]Non è finita per te… ancora.";
            eng4 = "[fnt_pixel]Ti darò una possibilità di fuga.";
            eng5 = "[fnt_pixel]Non deludermi, Capitano, divertiamoci!";
            break;
    }   
}

function fnc_lng_fgroundedf_2_r15_1(){
    switch(global.language)
    {
        case 0: //English   
            eng1 = "[fnt_pixel]Well, well, here's the captain.";
            eng2 = "[fnt_pixel]It's time to see whose powers are greater.";
            eng3 = "[fnt_pixel]And don't throw your paw at me, it won't work against me.";
            eng4 = "[fnt_pixel]Well, let's do it!";

            break;
        case 1: //russian
            eng1 = "[fnt_pixel_ru]Так, так, а вот и капитан.";
            eng2 = "[fnt_pixel_ru]Пришло время посмотреть, чья сила больше.";
            eng3 = "[fnt_pixel_ru]И не пытайтесь цепляться за на меня лапой, против меня это не сработает.";
            eng4 = "[fnt_pixel_ru]Ну, давайте сделаем это!";            
            break;
        case 2: //spanish
            eng1 = "[fnt_pixel]Bueno, bueno, aquí está el capitán.";
            eng2 = "[fnt_pixel]Es hora de ver qué poderes son mayores";
            eng3 = "[fnt_pixel]Y no me tires la zarpa, no funcionará contra mí.";
            eng4 = "[fnt_pixel]Bueno, ¡hagámoslo!";  
            break;
        case 3: //chinese
            eng1 = "[fnt_pixel]好吧, 好吧, 船长来了.";
            eng2 = "[fnt_pixel]是时候看看谁的力量更大了";
            eng3 = "[fnt_pixel]别朝我扔你的爪子, 它不会对我起作用.";
            eng4 = "[fnt_pixel]好吧, 让我们开始吧!";
            break;
        case 4: //portug
            eng1 = "[fnt_pixel]Bem, bem, aqui está o capitão.";
            eng2 = "[fnt_pixel]É hora de ver de quem são os poderes maiores";
            eng3 = "[fnt_pixel]E não me atires a pata, não vai funcionar contra mim.";
            eng4 = "[fnt_pixel]Bem, vamos lá!!";   
            break;
        case 5: //brazil
            eng1 = "[fnt_pixel]Bem, bem, aqui está o capitão.";
            eng2 = "[fnt_pixel]É hora de ver quais poderes são maiores";
            eng3 = "[fnt_pixel]E não jogue sua pata em mim, não vai funcionar contra mim.";
            eng4 = "[fnt_pixel]Bem, vamos lá!";   
            break;
        case 6: //polish
            eng1 = "[fnt_pixel]Proszę, proszę, a oto i kapitan.";
            eng2 = "[fnt_pixel]Czas zobaczyć, czyje moce są potężniejsze.";
            eng3 = "[fnt_pixel]I nie rzucaj na mnie łapą, to nie zadziała przeciwko mnie.";
            eng4 = "[fnt_pixel]No to do dzieła!";
            break;
        case 7: //japanese
            eng1 = "[fnt_pixel]さて、さて、船長の登場だ。";
            eng2 = "[fnt_pixel]誰の力が大きいか見る時だ";
            eng3 = "[fnt_pixel]前脚を投げつけても無駄だ。";
            eng4 = "[fnt_pixel]さあ、やるぞ！";   
            break;
        case 8: //deutch
            eng1 = "[fnt_pixel]So, so, hier ist der Kapitän.";
            eng2 = "[fnt_pixel]Es ist an der Zeit zu sehen, wessen Kräfte größer sind";
            eng3 = "[fnt_pixel]Und wirf deine Kralle nicht nach mir, sie wird nicht gegen mich wirken.";
            eng4 = "[fnt_pixel]Also, los geht's!";   
            break;
        case 9: //french
            eng1 = "[fnt_pixel]Bien, bien, voici le capitaine.";
            eng2 = "[fnt_pixel]Il est temps de voir qui a les plus grands pouvoirs...";
            eng3 = "[fnt_pixel]Et ne me lancez pas votre patte, ça ne marchera pas contre moi.";
            eng4 = "[fnt_pixel]Eh bien, allons-y !";   
            break;
        case 10: //Italian
            eng1 = "[fnt_pixel]Bene, bene, ecco il capitano.";
            eng2 = "[fnt_pixel]È tempo di vedere quali poteri sono maggiori";
            eng3 = "[fnt_pixel]E non tirarmi la zampa, non funzionerà contro di me.";
            eng4 = "[fnt_pixel]Bene, facciamolo!";
            break;
    }   
}

function fnc_lng_fgroundedf_2_r15_2(){
    switch(global.language)
    {
        case 0: //English   
            eng1 = "[fnt_pixel]Captain.... Captain is that you?";
            eng2 = "[fnt_pixel]What happened to me? Where's our team?"
            eng3 = "[fnt_pixel]Did I... attack you? I screwed up again, Captain."
            eng4 = "[fnt_pixel]I lost control because of that damn mask."
            eng5 = "[fnt_pixel]It won't let me go, Captain. I can't control it."
            eng6 = "[fnt_pixel]Help me..... please."
            eng7 = "[fnt_pixel]Please.... make it stop."

            break;
        case 1: //russian
            eng1 = "[fnt_pixel_ru]Капитан.... Капитан - это вы?";
            eng2 = "[fnt_pixel_ru]Что со мной случилось? Где наша команда?"
            eng3 = "[fnt_pixel_ru]Я... напал на тебя? Я опять облажался, капитан"
            eng4 = "[fnt_pixel_ru]Я потерял контроль из-за этой чертовой маски."
            eng5 = "[fnt_pixel_ru]Она не отпускает меня, капитан. Я не могу это контролировать."
            eng6 = "[fnt_pixel_ru]Помогите мне, пожалуйста."
            eng7 = "[fnt_pixel_ru]Пожалуйста, остановите это."          
            break;
        case 2: //spanish
            eng1 = "[fnt_pixel]Capitán.... Capitán, ¿eres tú?";
            eng2 = "[fnt_pixel]¿Qué me ha pasado? ¿Dónde está nuestro equipo?"
            eng3 = "[fnt_pixel]¿Yo... te ataqué? La cagué de nuevo, Capitán."
            eng4 = "[fnt_pixel]Perdí el control por culpa de esa maldita máscara."
            eng5 = "[fnt_pixel]No me deja ir, Capitán. No puedo controlarla.."
            eng6 = "[fnt_pixel]Por favor, ayuda....."
            eng7 = "[fnt_pixel]Por favor .... párala."
            break;
        case 3: //chinese
            eng1 = "[fnt_pixel]舰长...舰长, 是你吗?";
            eng2 = "[fnt_pixel]我发生什么事了? 我们的船员去哪儿了?"
            eng3 = "[fnt_pixel]我...攻击你了吗? 我又搞砸了, 船长."
            eng4 = "[fnt_pixel]我因为那个该死的面具失去了控制."
            eng5 = "[fnt_pixel]我不能运行它, 船长.  我无法控制"
            eng6 = "[fnt_pixel]请帮我. "
            eng7 = "[fnt_pixel]请...让它停止."
            break;
        case 4: //portug
            eng1 = "[fnt_pixel]Capitão... Capitão, és tu?";
            eng2 = "[fnt_pixel]O que me aconteceu? Onde está a nossa equipa?"
            eng3 = "[fnt_pixel]Eu... Ataquei a ti? Estraguei tudo outra vez, Capitão."
            eng4 = "[fnt_pixel]Perdi o controlo por causa daquela maldita máscara."
            eng5 = "[fnt_pixel]Não me deixa ir, Capitão. Não consigo controlar isto."
            eng6 = "[fnt_pixel]Ajuda-me..... Por favor."
            eng7 = "[fnt_pixel]Por favor... faz isso parar."
            break;
        case 5: //brazil
            eng1 = "[fnt_pixel]Capitão... Capitão, é você?";
            eng2 = "[fnt_pixel]O que aconteceu comigo? Onde está nossa equipe?"
            eng3 = "[fnt_pixel]Eu... te ataquei? Eu estraguei tudo de novo, capitão."
            eng4 = "[fnt_pixel]Perdi o controle por causa daquela maldita máscara."
            eng5 = "[fnt_pixel]Não me deixe ir, capitão. Eu não posso controlar isso."
            eng6 = "[fnt_pixel]Me ajude, por favor."
            eng7 = "[fnt_pixel]Por favor... faça isso parar."
            break;
        case 6: //polish
            eng1 = "[fnt_pixel]Kapitan.... Kapitanie, czy to ty?";
            eng2 = "[fnt_pixel]Co się ze mną stało? Gdzie jest nasza drużyna?"
            eng3 = "[fnt_pixel]Czy ja... Zaatakowałem Cię? Znowu spieprzyłem, kapitanie."
            eng4 = "[fnt_pixel]Straciłem kontrolę przez tę cholerną maskę. "
            eng5 = "[fnt_pixel]Nie pozwala mi odejść, kapitanie. Nie mogę tego kontrolować."
            eng6 = "[fnt_pixel]Pomóż mi… proszę"
            eng7 = "[fnt_pixel]Proszę.... spraw, żeby to się skończyło."
            break;
        case 7: //japanese
            eng1 = "[fnt_pixel]船長... 船長、あなたですか？";
            eng2 = "[fnt_pixel]私は一体？チームはどこ？"
            eng3 = "[fnt_pixel]私は...君を攻撃した？また失敗したんだ、船長！"
            eng4 = "[fnt_pixel]あのマスクのせいでコントロールを失った"
            eng5 = "[fnt_pixel]あれが私を解放してくれない、船長。制御できない。"
            eng6 = "[fnt_pixel]助けてくれ......頼む。"
            eng7 = "[fnt_pixel]お願いだ...止めさせてくれ。"
            break;
        case 8: //deutch
            eng1 = "[fnt_pixel]Kapitän.... Kapitän, bist du das?";
            eng2 = "[fnt_pixel]Was ist mit mir passiert? Wo ist unsere Mannschaft?"
            eng3 = "[fnt_pixel]Habe ich dich... angegriffen? Ich habe es wieder vermasselt, Kapitän."
            eng4 = "[fnt_pixel]Ich habe wegen dieser verdammten Maske die Kontrolle verloren."
            eng5 = "[fnt_pixel]Es lässt mich nicht los, Kapitän. Ich kann es nicht kontrollieren."
            eng6 = "[fnt_pixel]Hilf mir..... bitte."
            eng7 = "[fnt_pixel]Bitte.... mach, dass es aufhört."
            break;
        case 9: //french
            eng1 = "[fnt_pixel]Capitaine.... Capitaine, c'est vous ?";
            eng2 = "[fnt_pixel]Qu'est-ce qui m'est arrivé ? Où est notre équipe ?"
            eng3 = "[fnt_pixel]Je vous ai... attaqué ? J'ai encore merdé, Capitaine."
            eng4 = "[fnt_pixel]J'ai perdu le contrôle à cause de ce fichu masque."
            eng5 = "[fnt_pixel]Il ne veut pas me laisser partir, capitaine. Je ne peux pas le contrôler."
            eng6 = "[fnt_pixel]Aidez-moi..... s'il vous plaît."
            eng7 = "[fnt_pixel]S'il vous plaît, faites que ça s'arrête."
            break;
        case 10: //Italian
            eng1 = "[fnt_pixel]Capitano.... Capitano, sei tu?";
            eng2 = "[fnt_pixel]Cosa mi è successo? Dov'è sparito il nostro equipaggio?"
            eng3 = "[fnt_pixel]Ti ho... attaccato? Ho sbagliato di nuovo, Capitano."
            eng4 = "[fnt_pixel]Ho perso il controllo a causa di questa fottuta maschera."
            eng5 = "[fnt_pixel]Non mi lascerà andare, Capitano. Non riesco a controllarlo."
            eng6 = "[fnt_pixel]Aiutami… per favore."
            eng7 = "[fnt_pixel]Fallo smetttere… per favore."
            break;
    }      
}

function fnc_lng_prologue_end(){
    switch(global.language)
    {
        case 0: //English   
            text1= "Congratulations!";
            text2= @"You did a great job and 
successfully completed the demo!";
            text3= "We hope you enjoyed it";
            text4= @"Be sure to check out the full game's steam page and 
don't forget to add it to your wishlist!";
            text5= "Thanks for playing!";

            text6= "take survey"
            text7= "restart";

            break;
        case 1: //russian
            text1= "Поздравляем!";
            text2= @"Вы отлично справились с заданием и 
успешно завершили демо";
            text3= "надеемся, вам понравилось";
            text4= @"Обязательно ознакомьтесь с полной версией игры на 
странице steam!";
            text5= "Спасибо за игру!";

            text6= "пройти опрос"
            text7= "выход"; 
            break;
        case 2: //spanish
            text1= "¡Enhorabuena!";
            text2= @"Has hecho un gran trabajo 
y has completado con éxito el prólogo";
            text3= "Esperamos que lo hayas disfrutado.";
            text4= @"¡No olvides visitar la página de Steam 
del juego completo y añadirlo a tu lista de deseos!";
            text5= "¡Gracias por jugar!";

            text6= "haz una encuesta"
            text7= "salir";
            break;
        case 3: //chinese
            text1= "祝贺你!";
            text2= @"你做得很好, 成功完成了序章";
            text3= "我们希望你喜欢我们的游戏";
            text4= @"请务必查看完整游戏的 Steam 页面, 
不要忘记将其添加到您的愿望清单!";
            text5= "感谢参与!";

            text6= "参与调查"
            text7= "退到主菜單";

            break;
        case 4: //portug
            text1= "Parabéns!";
            text2= @"Fizeste um grande trabalho 
e completaste o prólogo com sucesso.";
            text3= "Esperamos que tenhas gostado.";
            text4= @"Certifica-te de conferir a página Steam
do jogo completo e não te esqueças 
de adicioná-lo à tua lista de desejos!";
            text5= "Obrigado por jogar!";

            text6= "participar da enquete"
            text7= "sair";
            break;
        case 5: //brazil
            text1= "Parabéns!";
            text2= @"Você fez um ótimo trabalho 
e concluiu o prólogo com sucesso";
            text3= "Esperamos que você tenha se divertido";
            text4= @"Cheque a página Steam do jogo
completo e não se esqueça de adicioná-lo
à sua lista de desejos!";
            text5= "Obrigado por jogar!";

            text6= "tparticipar da enquete"
            text7= "sair";
            break;
        case 6: //polish
            text1= "Gratulacje!";
            text2= @"Świetną robota. 
Pomyślnie ukończyłeś demo!";
            text3= "Mamy nadzieję, że ci się podobało.";
            text4= @"Koniecznie sprawdź pełną stronę gry na steamie 
i nie zapomnij dodać jej do swojej listy życzeń!";
            text5= "Dziękujęmy za grę";

            text6= "Wypełnij ankietę."
            text7= "Wyjście";
            break;
        case 7: //japanese
            text1= "おめでとうございます！";
            text2= @"プロローグをクリアした";
            text3= "楽しんでいただけたら幸いです";
            text4= @"ゲーム本編のSteamページをぜひチェックして、
ウィッシュリストに追加するのをお忘れなく！";
            text5= "プレイしていただきありがとうございました！";

            text6= "アンケートに答える"
            text7= "終了";
            break;
        case 8: //deutch
            text1= "Herzlichen Glückwunsch!";
            text2= @"Du hast einen tollen Job gemacht und 
den Prolog erfolgreich abgeschlossen";
            text3= "Wir hoffen, es hat dir gefallen";
            text4= @"Schau dir unbedingt die Steam-Seite 
des vollständigen Spiels an und vergiss nicht, 
es auf deine Wunschliste zu setzen!";
            text5= "Danke fürs Spielen!";

            text6= "Mach eine Umfrage"
            text7= "beenden";
            break;
        case 9: //french
            text1= "Félicitations !";
            text2= @"Vous avez fait du bon travail
et terminé le prologue avec succès.";
            text3= "Nous espérons que vous l'avez apprécié.";
            text4= @"N'oubliez pas de consulter la page Steam 
du jeu complet et de l'ajouter à votre liste de souhaits !";
            text5= "Merci d'avoir joué !";

            text6= "répondre à un sondage"
            text7= "quitter";
            break;
        case 10: // Italian
            text1= "Congratulazioni!";
            text2= @"Hai fatto un ottimo lavoro e hai completato
con successo il prologo!";
            text3= "Speriamo che ti sia piaciuto il nostro gioco";
            text4= @"Assicurati di controllare la pagina di Steam 
del gioco completo e non dimenticare di aggiungerlo alla 
tua lista dei desideri!";
            text5= "Grazie per aver giocato!";

            text6= "fare un sondaggio"
            text7= "exit";
            break;
    } 
}
    
    
function fnc_lng_jjake1(){
   switch(global.language)
    {
        case 0: //English  
            #region eng

            eng1 = "[fnt_pixel]SPASIBO CHTO SPAS";

            #endregion
            break;
        case 1: //russian
            #region eng

            eng1 = choose("[fnt_pixel_ru]Не заставляйте вождя ждать.","[fnt_pixel_ru]Почему вы все еще здесь? Дом вождя дальше по дороге.");

            #endregion
            break;
        case 2: //spanish
            #region eng

            eng1 = choose("[fnt_pixel]No hagas esperar al Jefe.","[fnt_pixel]¿Por qué sigues aquí? La casa del Jefe está por allí.");

            #endregion
            break;
        case 3: //chinese
            #region eng

            eng1 = choose("[fnt_pixel]别让酋长久等了.","[fnt_pixel]你还在这里做什么? 酋长的房子就在那里.");

            #endregion
            break;
        case 4: //portug
            #region eng

            eng1 = choose("[fnt_pixel]Não deixes o chefe a esperar.","[fnt_pixel]Por que ainda estás aqui? A casa do chefe é ali.");

            #endregion
            break;
        case 5: //brazil
            #region eng

            eng1 = choose("[fnt_pixel]Não deixe o chefe esperando.","[fnt_pixel]Por que você ainda esta aqui? A casa do chefe é ali.");

            #endregion
            break;
        case 6: //polish
            #region eng

            eng1 = choose("[fnt_pixel]Nie każ szefowi czekać.","[fnt_pixel]Dlaczego wciąż tu jesteś? Dom szefa jest tam.");

            #endregion
            break;
        case 7: //japanese
            #region eng

            eng1 = choose("[fnt_pixel]チーフを待たせたらだめだ。","[fnt_pixel]なんでまだここに？酋チーフの家はあそこだ。");

            #endregion
            break;
        case 8: //deutch
            #region eng

            eng1 = choose("[fnt_pixel]Lass den Häupling nicht warten.","[fnt_pixel]Warum bist du noch hier? Das Haus des Häuplings ist da drüben..");

            #endregion
            break;
        case 9: //french
            #region eng

            eng1 = choose("[fnt_pixel]Ne faites pas attendre le chef.","[fnt_pixel]Pourquoi êtes-vous encore là ? La maison du chef est là-bas.");

            #endregion
            break;
        case 10: // Italian
            #region eng

            eng1 = choose("[fnt_pixel]Non far aspettare il Capo.","[fnt_pixel]Cosa ci fai ancora qui? La casa del capo è lì.");

            #endregion
            break;
    }    
}     
    
function fnc_lng_jmerch_to_map(){
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


