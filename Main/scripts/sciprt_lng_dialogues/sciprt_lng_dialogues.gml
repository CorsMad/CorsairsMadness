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
    case 11: //Italian
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
        case 11: //Italian
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
            break;
        case 3: //chinese
            #region eng

            eng1 = "[fnt_pixel]这是你可以习惯的事情. 但这神殿到底是怎么回事?";
            eng2 = "[fnt_pixel]而且我仍然没有为我的团队找到一个成员. 接下来我该怎么办?";

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
        case 11: //Italian
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
            eng4 =  "[fnt_pixel]Let me introduce myself, Captain, my name is... it doesn't matter what my name is, I'm just a humble owner of a trinket store."
            eng5 =  "[fnt_pixel]I'm sure you have a lot of questions. But not all at once, captain. The hen takes it one day at a time. First, I'll tell you what to do next.";;
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
            break;
        case 3: //chinese
            #region eng

            eng1 =  "[fnt_pixel]我可以帮你!";
            eng2 =  "[fnt_pixel]你好! 你一定有很多问题. 例如, 那个从灌木丛中向我扑来的陌生人是谁? at me?";
            eng3 =  "[fnt_pixel]喂, 收起细剑, 舰长! 我一点都不危险. 哈哈";
            eng4 =  "[fnt_pixel]我想自我介绍一下, 船长. 我叫… 其实我叫什么并不重要. 我只是一个不起眼的小饰品店老板.";
            eng5 =  "[fnt_pixel]我相信你有很多问题, 但我们不应该着急, 船长. 首先, 我会告诉你下一步是什么.";
            eng6 =  "[fnt_pixel]也许你还能找到你的船员. 我不知道他们究竟发生了什么, 但这听起来对你来说是一份完美的工作, 对吧?";
            eng7 =  "[fnt_pixel]船长, 你需要前往附近的岛屿继续搜索. 如果你决定渡海游泳是不明智的.";
            eng8 =  "[fnt_pixel]我可以帮你, 船长. 我们现在是朋友了, 不是吗? 我把这艘船给你, 让你可以顺利航行到下一个岛屿.";
            eng9 =  "[fnt_pixel]祝你旅途愉快! 我们一定会再见面的, 别忘了顺便来我的店.";

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
        case 11: //Italian
            #region eng

            eng1 =  "[fnt_pixel]Ti posso aiutare con quello!";
            eng2 =  "[fnt_pixel]Ciao! Devi avere molte domande; per esempio: chi era quello strano uomo che saltava fuori dal cespuglio verso di me?";
            eng3 =  "[fnt_pixel]Ehi, metti via lo stocco, Capitano! Non sono affatto pericoloso. Ah ah";
            eng4 =  "[fnt_pixel]Vorrei presentarmi, Capitano. Mi chiamo... Non importa come mi chiamo. Sono solo un umile proprietario di un negozio di ninnoli."
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
            break;
        case 3: //chinese
            #region eng

            eng1 = choose("[fnt_pixel]一个陌生人, 与酋长交谈.","[fnt_pixel]我们的传统是, 你必须先被介绍给酋长. ");

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
        case 11: //Italian
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
            break;
        case 3: //chinese
            #region eng

            eng1 = choose("[fnt_pixel]我们创造了一门独特的大炮! 拿到其中一把钥匙后试一试.","[fnt_pixel]仔细检查墙壁: 其中一些很脆弱.  他们背后可能隐藏着一些东西.");

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
            break;
        case 3: //chinese
            #region eng

            eng1 = choose("[fnt_pixel]别让酋长久等了.","[fnt_pixel]你还在这里做什么? 酋长的房子就在那里.");

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
            break;
        case 3: //chinese
            #region eng

            eng1 = choose("[fnt_pixel]祝你找到你的船员好运!","[fnt_pixel]不要忘记更频繁地拜访商人.");

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
            eng5 = "[fnt_pixel]By the way, I've built a proving ground not far from here, specifically for these boots. Would you like to go there? You'll get a nice little surprise at the end.";

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
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]我们去试验场好吗?";

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
        case 11: //Italian
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
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]你做得很好! 我希望你喜欢你在任务结束时收到的小礼物?";
            eng2 = "[fnt_pixel]让这些靴子帮助您进行探索. 离开岛屿时别忘了归还它们. 这是一件独一无二的作品.";
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
        case 11: //Italian
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
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]一点简报: [c_blue]在空中按跳跃键激活靴子. ";
            eng2 = "[fnt_pixel]你可以用它们跳过一些敌人甚至尖刺! 重要的是要记住, 成功地推动靴子可以为你的冲刺充电";
            eng3 = "[fnt_pixel]希望在本课程结束时与您见面. 祝你好运 !";
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
        case 11: //Italian
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
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]在空中按跳跃键激活靴子. ";
            eng2 = "[fnt_pixel]跳过敌人或尖刺. 成功推动你的靴子为你的冲刺充电. 祝你好运!";
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
        case 11: //Italian
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
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]那太好了. 看看它们有多容易使用? 是时候回村了.";
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
        case 11: //Italian
            #region  ENG text
            eng1 = "[fnt_pixel]Uff, è stato grandioso. Vedi quanto sono facili da usare? È ora di tornare al villaggio.";
            #endregion
            break;
    }    
} 

function fnc_lng_merch1(){
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
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = choose("[fnt_pixel]你为什么不先和酋长谈谈？","[fnt_pixel]我劝你去见酋长.");
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
        case 11: //Italian
            #region  ENG text
            eng1 = choose("[fnt_pixel]Perché non parli prima con un capo?","[fnt_pixel]Ti consiglio di andare dal capo.");
            #endregion
            break;
    }    
}  

function fnc_lng_merch2()
{
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "[fnt_pixel]Well, I'm glad you got here safely. I knew you were the one for me. Heh heh...";
            eng2 = "[fnt_pixel]As you can see, there's a lot of interesting things in my shop. I'd sell you anything for the right price. Speaking of money.";
            eng3 = "[fnt_pixel]You might find some green coins along the way, be sure to collect them-they're very valuable, you know. For example, you can give them to me, and I'll make you stronger";
            eng4 = "[fnt_pixel]Also, I saw you in action in that underground temple. Some enemies will drop dark essence. Depending on your actions, your style rating will go up and more essence will drop out!";
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
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "[fnt_pixel]好吧, 我很高兴你安全到达这里. 我知道我可以指望你. 哈哈…";
            eng2 = "[fnt_pixel]如您所见, 我的店里有很多有趣的东西. 我会以合适的价格卖给你任何东西. 但是说到钱...";
            eng3 = "[fnt_pixel]沿途你会发现一些绿色硬币. 一定要收集它们——它们非常有价值. 比如你可以给我, 我会让你变得更强.";
            eng4 = "[fnt_pixel]另外，我看到你在那个地下寺庙里的行动。一些敌人会掉落黑暗精华。根据你的行动，你的风格等级会上升，更多的精华会掉落出来!";
            eng5 = "[fnt_pixel]以后可以用来换取你的修炼.";
            eng6 = "[fnt_pixel]在这一点上, 我向你致敬. 我亲爱的朋友, 船长, 我相信你一定能够拯救你的船员并安全返回. 祝你好运!";
            eng7 = "[fnt_pixel]与此同时, 这里有一份备忘录可以帮助你了解你的战斗. ";
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
        case 11: //Italian
            #region  ENG text
            eng1 = "[fnt_pixel]Danque, sono contento che tu sia arrivato qui sano e salvo. Sapevo di poter contare su di te. Ah ah...";
            eng2 = "[fnt_pixel]Come puoi vedere, ci sono molte cose interessanti nel mio negozio. Ti venderei qualsiasi cosa al giusto prezzo. Ma parlando di soldi...";
            eng3 = "[fnt_pixel]Troverai alcune monete verdi lungo la strada. Assicurati di collezionarli: sono molto preziosi. Ad esempio, puoi darmeli e io ti renderò più forte";
            eng4 = "[fnt_pixel]Inoltre, ti ho visto in azione in quel tempio sotterraneo. Alcuni nemici lasceranno cadere l'essenza oscura. A seconda delle tue azioni, il tuo punteggio di stile aumenterà e cadrà più essenza!";
            eng5 = "[fnt_pixel]Più tardi potrò scambiarlo con la tua formazione.";
            eng6 = "[fnt_pixel]A questo punto, ti saluto. Mio caro amico, capitano, sono sicuro che riuscirai a salvare il tuo equipaggio e a tornare sano e salvo. Buona fortuna per il tuo viaggio!";
            eng7 = "[fnt_pixel]Nel frattempo, ecco un promemoria per aiutarti a capire le tue battaglie.";
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
            break;
        case 3: //chinese   
            #region  ENG text
            eng1 = choose("[fnt_pixel]那么, 你还等什么呢? 去吧. 再次祝您旅途愉快!","[fnt_pixel]滴答滴答, 时间不多了. 去拯救你的船员. 祝你好运!");
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
        case 11: //Italian
            #region  ENG text
            eng1 = choose("[fnt_pixel]Allora, cosa stai aspettando? Vai. Ancora una volta, buona fortuna per il tuo viaggio!","[fnt_pixel]Tic tac, il tempo stringe. Vai a salvare il tuo equipaggio. In bocca al lupo!");
            #endregion
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
        case 11: //Italian
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
            break;
        case 3: //chinese
            eng1 = "[fnt_pixel]绝对没用.";
            eng2 = "[fnt_pixel]但请不要绝望!";
            eng3 = "[fnt_pixel]对你来说还没有结束";
            eng4 = "[fnt_pixel]我给你逃跑的机会.";
            eng5 = "[fnt_pixel]不要让我失望船长, 让我们玩得开心!";
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
        case 11: //Italian
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
            break;
        case 3: //chinese
            eng1 = "[fnt_pixel]好吧, 好吧, 船长来了.";
            eng2 = "[fnt_pixel]是时候看看谁的力量更大了";
            eng3 = "[fnt_pixel]别朝我扔你的爪子, 它不会对我起作用.";
            eng4 = "[fnt_pixel]好吧, 让我们开始吧!";
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
        case 11: //Italian
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
        case 11: //Italian
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