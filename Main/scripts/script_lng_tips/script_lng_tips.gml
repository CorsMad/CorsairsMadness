// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function fnc_lng_tip_bluesphere()
{
    switch(global.language)
{
    case 0: //English   
    #region
        text = "Jump while on the blue sphere";
    #endregion
        break;
    case 1: //russian
    #region
        text = "Прыгните, находясь на синей сфере";
    #endregion
        break;
    case 2: //spanish
    #region
        text = "Salta sobre la esfera azul";
    #endregion
        break;
    case 3: //chinese
    #region
        text = "在蓝色球体上跳跃";
    #endregion
        break;
    case 4: //portug
    #region
        text = "Salta enquanto estiveres na esfera azul";
    #endregion
        break;
    case 5: //brazil
    #region
        text = "Pule enquanto estiver na esfera azul";
    #endregion
        break;
    case 6: //polish
    #region
        text = "Skocz, gdy jesteś na niebieskiej kuli";
    #endregion
        break;
    case 7: //japanese
    #region
        text = "青い球体に乗ったままジャンプ";
    #endregion
        break;
    case 8: //deutch
    #region
        text = "Springe auf der blauen Kugel";
    #endregion
        break;
    case 9: //french
    #region
        text = "Sauter sur la sphère bleue";
    #endregion
        break;
    case 10: // Italian
        #region
        text = "Salta mentre sulla sfera blu";
        #endregion
        break;
}   
}

function fnc_lng_tip_green_lantern(){
    switch(global.language)
    {
        case 0: //English
            #region eng

            text = "Hit green lantern"

            #endregion
            break;
        case 1: //russian
            #region rus

            text = "ударьте зеленый фонарь"

            #endregion
            break;
        case 2: //spanish
            #region eng

            text = "golpea la linterna verde"

            #endregion
            break;
        case 3: //chinese
            #region eng

            text = "罢工绿灯笼"

            #endregion
            break;
        case 4: //portug
            #region eng

            text = "bate na lanterna verde"

            #endregion
            break;
        case 5: //brazil
            #region eng

            text = "bata na lanterna verde"

            #endregion
            break;
        case 6: //polish
            #region eng

            text = "Uderz w Zieloną Latarnię."

            #endregion
            break;
        case 7: //japanese
            #region eng

            text = "グリーンランタンを攻撃"

            #endregion
            break;
        case 8: //deutch
            #region eng

            text = "Triff die grüne Laterne"

            #endregion
            break;
        case 9: //french
            #region eng

            text = "frappez la lanterne verte"

            #endregion
            break;
        case 10: // Italian
            #region eng

            text = "Colpisci lanterna verde"

            #endregion
            break;
    } 
}
    
function fnc_lng_tip_pink_lantern(){
    switch(global.language)
    {
        case 0: //English
            #region eng

            text = "Hit pink lantern with dash"

            #endregion
            break;
        case 1: //russian
            #region rus

            text = "попадите по розовому фонарю рывком"

            #endregion
            break;
        case 2: //spanish
            #region eng

            text = "golpea la linterna rosa con el dash"

            #endregion
            break;
        case 3: //chinese
            #region eng

            text = "用飞跃击中粉红灯笼"

            #endregion
            break;
        case 4: //portug
            #region eng

            text = "bata na lanterna rosa com o dash"

            #endregion
            break;
        case 5: //brazil
            #region eng

            text = "bata na lanterna rosa com o dash"

            #endregion
            break;
        case 6: //polish
            #region eng

            text = "uderzył szarpnięciem w różową latarnię."

            #endregion
            break;
        case 7: //japanese
            #region eng

            text = "ピンクランタンにダッシュでぶつかる"

            #endregion
            break;
        case 8: //deutch
            #region eng

            text = "Triff die rosa Laterne mit Dash"

            #endregion
            break;
        case 9: //french
            #region eng

            text = "frappez la lanterne rose avec le dash"

            #endregion
            break;
        case 10: //Italian
            #region eng

            text = "usa il balzo per colpire la lanterna rosa"

            #endregion
            break;
    } 
}    
    
function fnc_lng_tip_downstrike()
{
    switch(global.language)
    {
        case 0: //English 
            text = "press"
            text2 = "while in air to strike down";
            break;
        case 1: //russian
            text = "нажмите"
            text2 = "в воздухе,чтобы ударить вниз";
            break;
        case 2: //spanish
            text = "pulsa "
            text2 = "en el aire para derribar";
            break;
        case 3: //chinese
            text = "在空中按"
            text2 = "击落";
            break;
        case 4: //portug
            text = "prima"
            text2 = @"enquanto estiveres 
no ar para dar o golpe";
            break;
        case 5: //brazil
            text = "pressione"
            text2 = @"enquanto estiver 
no ar para dar o golpe";
            break;
        case 6: //polish
            text = "naciśnij"
            text2 = @"będąc w powietrzu, 
aby uderzyć w dół";
            break;
        case 7: //japanese
            text = "空中で"
            text2 = "キーを押すと下攻撃";
            break;
        case 8: //deutch
            text = "Drücke"
            text2 = @"in der Luft,
um nach unten zu schlagen";
            break;
        case 9: //french
            text = "appuyez sur"
            text2 = "en l'air pour frapper vers le bas";
            break;
        case 10: //Italian
            text = "Premi"
            text2 = "mentre sei in aria per abbattere";
            break;
    }   
}

function fnc_lng_tip_dash()
{
    switch(global.language)
    {
        case 0: //English    
            text1 = "press";
            text = "to dash";
            break;
        case 1: //russian
            text1 = "нажмите";
            text = "для рывка";
            break;
        case 2: //spanish
            text1 = "pulsa";
            text = "para correr";
            break;
        case 3: //chinese
            text1 = "按";
            text = "突";
            break;
        case 4: //portug
            text1 = "prima";
            text = "para usares o dash";
            break;
        case 5: //brazil
            text1 = "pressione";
            text = "para usar o dash";
            break;
        case 6: //polish
            text1 = "wciśnij";
            text = "by zrobić przeskoczyćh";
            break;
        case 7: //japanese
            text1 = "";
            text = "を押すとダッシュ";
            break;
        case 8: //deutch
            text1 = "Drücke";
            text = "um zu dashen";
            break;
        case 9: //french
            text1 = "appuyez sur";
            text = "pour vous élancer";
            break;
        case 10: // Italian
            text1 = "Premi";
            text = "per lanciarsi";
            break;
    }   
}

function fnc_lng_tip_red_pad()
{
    switch(global.language)
    {
        case 0: //English
            text = "Dash while on a red sphere";
            break;
        case 1: //russian
            text = "Нажмите рывок, находясь на красной сфере";
            break;
        case 2: //spanish
            text = "salta sobre la esfera roja";
            break;
        case 3: //chinese
            text = "在红球体上突";
            break;
        case 4: //portug
            text = "corre enquanto estiveres numa esfera vermelha";
            break;
        case 5: //brazil
            text = "corra enquanto estiver em uma esfera vermelha";
            break;
        case 6: //polish
            text = "Przyspiesz, gdy jesteś na czerwonej kuli";
            break;        
        case 7: //japanese
            text = "赤い球体でダッシュ";
            break;
        case 8: //deutch
            text = "Dash auf der roten Kugel";
            break;
        case 9: //french
            text = "s'élancer sur une sphère rouge";
            break;
        case 10: // Italian
            text = "Lanciati mentre sulla sfera rossa";
            break;
    }
}

function fnc_lng_tip_possessed(){
   switch(global.language)
    {
        case 0: //English  
        #region  ENG text
            confirm = "confirm";
            confirmy = "yes";
            confirmn = "no";

            text1 = @"Every fourth successful strike against an enemy 
other than a red one will be special.";
            text2 = @"Combine different strikes to improve your rating.";
            text3 = @"The higher the rating, the more dark 
essence will be dropped from defeated enemies.";

            textair = "in the air";
            textground = "on the ground";
            #endregion
            break;
        case 1: //russian
        #region  кг text
            text1 = @"каждый четвертый успешный удар по врагу 
кроме красных будет специальным.";
            text2 = @"Комбинируйте разные атаки чтобы улучшить рейтинг.";
            text3 = @"чем выше рейтнг, тем больше темной 
эссенции будет выпадать из врагов.";

            textair = "в воздухе";
            textground = "на земле";
            #endregion           
            break;
        case 2: //spanish
        #region  ENG text
            confirm = "Confirmar";
            confirmy = "sí";
            confirmn = "no";

            text1 = @"Cada cuarto golpe exitoso contra un enemigo 
que no sea rojo será especial.";
            text2 = @"Combina diferentes golpes para mejorar tu puntuación.";
            text3 = @"Cuanto mayor sea la puntuación,
más esencia oscura soltarán los enemigos derrotados.";

            textair = "en el aire";
            textground = "en el suelo";
            #endregion
            break;
        case 3: //chinese
        #region  CN text
            confirm = "证实";
            confirmy = "对";
            confirmn = "no";

            text1 = @"对除红色敌人以外的敌人的每四次成功打击都是特殊的."; 
            text2 = @"结合不同的罢工以提高您的评级.";
            text3 = @"等级越高, 被击败的敌人掉落的黑暗精华就越多.";

            textair = "在空中";
            textground = "在地面上";
            #endregion
            break;
        case 4: //portug
        #region  ENG text
            confirm = "Confirmar";
            confirmy = "sim";
            confirmn = "não";

            text1 = @"Cada quarto ataque bem-sucedido contra um inimigo 
que não seja vermelho será especial.";
            text2 = @"Combina diferentes greves para melhorar a tua classificação.";
            text3 = @"Quanto maior for a classificação, 
mais a essência escura sairá dos inimigos derrotados.";

            textair = "no ar";
            textground = "no chão";
            #endregion
            break;
        case 5: //brazil
        #region  ENG text
            confirm = "Confirmar";
            confirmy = "sim";
            confirmn = "não";

            text1 = @"Cada quarto ataque bem-sucedido contra um inimigo 
que não seja vermelho será especial.";
            text2 = @"Combine diferentes golpes para melhorar sua classificação.";
            text3 = @"Quanto maior a classificação, 
mais essência negra sairá dos inimigos derrotados.";

            textair = "no ar";
            textground = "no chão";
            #endregion
            break;
        case 6: //polish
        #region  ENG text
            confirm = "Potwierdź";
            confirmy = "Tak";
            confirmn = "Nie";

            text1 = @"Co czwarte celne trafienie w przeciwnika będzie specjalne.
Z wyjątkiem czerwonego";
            text2 = @"Połącz różne uderzenia, aby poprawić swój rating.";
            text3 = @"Im wyższy rating, tym więcej mrocznej
esencji oddadzą pokonani wrogowie.";

            textair = "W powietrzu";
            textground = "Na ziemi.";
            #endregion
            break;
        case 7: //japanese
        #region  ENG text
            confirm = "確認";
            confirmy = "はい";
            confirmn = "いいえ";

            text1 = @"赤以外の敵に4回目の攻撃を成功させるごとに、 
特別な効果が得られる。";
            text2 = @"さまざまなストライクを組み合わせて、レーティングを上げよう。";
            text3 = @"レーティングが高いほど、 
倒した敵からダークエッセンスが多くドロップされる。";

            textair = "空中で";
            textground = "地上で";
            #endregion
            break;
        case 8: //deutch
        #region  ENG text
            confirm = "Bestätigen";
            confirmy = "ja";
            confirmn = "nein";

            text1 = @"Jeder vierte erfolgreiche Schlag gegen einen anderen 
als einen roten Feind ist speziell.";
            text2 = @"Kombiniere verschiedene Schläge, 
um deine Bewertung zu verbessern.";
            text3 = @"Je höher die Wertung, 
desto mehr dunkle Essenz erhältst 
du von den besiegten Feinden.";

            textair = "in der Luft";
            textground = "auf dem Boden";
            #endregion
            break;
        case 9: //french
        #region  ENG text
            confirm = "Confirmez";
            confirmy = "oui";
            confirmn = "non";

            text1 = @"Chaque quatrième coup réussi contre un ennemi 
autre qu'un rouge sera spécial.";
            text2 = @"Combinez différents coups pour améliorer votre classement.";
            text3 = @"Plus la note est élevée,
plus les ennemis vaincus laissent échapper de l'essence noire.";

            textair = "dans les airs";
            textground = "au sol";
            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            confirm = "Conferma";
            confirmy = "Sì";
            confirmn = "No";

            text1 = @"Ogni quarto colpo andato a segno contro un nemico
diverso da quello rosso sarà speciale.";
            text2 = @"Combina diversi colpi per migliorare la tua valutazione.";
            text3 = @"Più alto è il punteggio, più essenza oscura
verrà rilasciata dai nemici sconfitti.";

            textair = "nell'aria ";
            textground = "a terra";
            #endregion
            break;
    }    
}    
  
function fnc_lng_tip_possessed2(){
   switch(global.language)
    {
        case 0: //English  
        #region  ENG text
            confirm = "confirm";
            confirmy = "yes";
            confirmn = "no";

            text1 = @"When you deal damage to enemies,
you fill up your power bar.";
            text2 = @"The higher your rating, the faster it fills up.";
            text3 = @"When it is full, you can use a special move.";
            text4 = @"These moves can be purchased at the store."
            textair = "in the air";
            textground = "on the ground";
            #endregion
            break;
        case 1: //russian
        #region  кг text
            text1 = @"каждый четвертый успешный удар по врагу 
кроме красных будет специальным.";
            text2 = @"Комбинируйте разные атаки чтобы улучшить рейтинг.";
            text3 = @"чем выше рейтнг, тем больше темной 
эссенции будет выпадать из врагов.";

            textair = "в воздухе";
            textground = "на земле";
            #endregion           
            break;
        case 2: //spanish
        #region  ENG text
            confirm = "Confirmar";
            confirmy = "sí";
            confirmn = "no";

            text1 = @"Cada cuarto golpe exitoso contra un enemigo 
que no sea rojo será especial.";
            text2 = @"Combina diferentes golpes para mejorar tu puntuación.";
            text3 = @"Cuanto mayor sea la puntuación,
más esencia oscura soltarán los enemigos derrotados.";

            textair = "en el aire";
            textground = "en el suelo";
            #endregion
            break;
        case 3: //chinese
        #region  CN text
            confirm = "证实";
            confirmy = "对";
            confirmn = "no";

            text1 = @"对除红色敌人以外的敌人的每四次成功打击都是特殊的."; 
            text2 = @"结合不同的罢工以提高您的评级.";
            text3 = @"等级越高, 被击败的敌人掉落的黑暗精华就越多.";

            textair = "在空中";
            textground = "在地面上";
            #endregion
            break;
        case 4: //portug
        #region  ENG text
            confirm = "Confirmar";
            confirmy = "sim";
            confirmn = "não";

            text1 = @"Cada quarto ataque bem-sucedido contra um inimigo 
que não seja vermelho será especial.";
            text2 = @"Combina diferentes greves para melhorar a tua classificação.";
            text3 = @"Quanto maior for a classificação, 
mais a essência escura sairá dos inimigos derrotados.";

            textair = "no ar";
            textground = "no chão";
            #endregion
            break;
        case 5: //brazil
        #region  ENG text
            confirm = "Confirmar";
            confirmy = "sim";
            confirmn = "não";

            text1 = @"Cada quarto ataque bem-sucedido contra um inimigo 
que não seja vermelho será especial.";
            text2 = @"Combine diferentes golpes para melhorar sua classificação.";
            text3 = @"Quanto maior a classificação, 
mais essência negra sairá dos inimigos derrotados.";

            textair = "no ar";
            textground = "no chão";
            #endregion
            break;
        case 6: //polish
        #region  ENG text
            confirm = "Potwierdź";
            confirmy = "Tak";
            confirmn = "Nie";

            text1 = @"Co czwarte celne trafienie w przeciwnika będzie specjalne.
Z wyjątkiem czerwonego";
            text2 = @"Połącz różne uderzenia, aby poprawić swój rating.";
            text3 = @"Im wyższy rating, tym więcej mrocznej
esencji oddadzą pokonani wrogowie.";

            textair = "W powietrzu";
            textground = "Na ziemi.";
            #endregion
            break;
        case 7: //japanese
        #region  ENG text
            confirm = "確認";
            confirmy = "はい";
            confirmn = "いいえ";

            text1 = @"赤以外の敵に4回目の攻撃を成功させるごとに、 
特別な効果が得られる。";
            text2 = @"さまざまなストライクを組み合わせて、レーティングを上げよう。";
            text3 = @"レーティングが高いほど、 
倒した敵からダークエッセンスが多くドロップされる。";

            textair = "空中で";
            textground = "地上で";
            #endregion
            break;
        case 8: //deutch
        #region  ENG text
            confirm = "Bestätigen";
            confirmy = "ja";
            confirmn = "nein";

            text1 = @"Jeder vierte erfolgreiche Schlag gegen einen anderen 
als einen roten Feind ist speziell.";
            text2 = @"Kombiniere verschiedene Schläge, 
um deine Bewertung zu verbessern.";
            text3 = @"Je höher die Wertung, 
desto mehr dunkle Essenz erhältst 
du von den besiegten Feinden.";

            textair = "in der Luft";
            textground = "auf dem Boden";
            #endregion
            break;
        case 9: //french
        #region  ENG text
            confirm = "Confirmez";
            confirmy = "oui";
            confirmn = "non";

            text1 = @"Chaque quatrième coup réussi contre un ennemi 
autre qu'un rouge sera spécial.";
            text2 = @"Combinez différents coups pour améliorer votre classement.";
            text3 = @"Plus la note est élevée,
plus les ennemis vaincus laissent échapper de l'essence noire.";

            textair = "dans les airs";
            textground = "au sol";
            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            confirm = "Conferma";
            confirmy = "Sì";
            confirmn = "No";

            text1 = @"Ogni quarto colpo andato a segno contro un nemico
diverso da quello rosso sarà speciale.";
            text2 = @"Combina diversi colpi per migliorare la tua valutazione.";
            text3 = @"Più alto è il punteggio, più essenza oscura
verrà rilasciata dai nemici sconfitti.";

            textair = "nell'aria ";
            textground = "a terra";
            #endregion
            break;
    }    
}      
  
function fnc_lng_tip_hook_hand()
{
    switch(global.language)
    {
        case 0: //English    
            text1 = "press";
            text = "to Use your hook-hand";
            break;
        case 1: //russian
            text1 = "нажмите";
            text = "чтобы использовать рукохват";
            break;
        case 2: //spanish
            text1 = "pulsa";
            text = "para usar tu mano-gancho";
            break;
        case 3: //chinese
            text1 = "按";
            text = "使用你的钩手";
            break;
        case 4: //portug
            text1 = "prima";
            text = "para usar a sua mão de gancho";
            break;
        case 5: //brazil
            text1 = "pressione";
            text = "para usar sua mão de gancho";
            break;
        case 6: //polish
            text1 = "naciśnij";
            text = "aby użyć ręki z hakiem";
            break;
        case 7: //japanese
            text1 = "";
            text = "を押すとフックハンドが使えます";
            break;
        case 8: //deutch
            text1 = "Drücke";
            text = "um deine Hakenhand zu benutzen";
            break;
        case 9: //french
            text1 = "appuyez sur";
            text = "pour utiliser votre main crochet";
            break;
        case 10: // Italian
            text1 = "premi";
            text = "per usare la mano uncinata";
            break;
    }   
}    

function fnc_lng_tip_tp()
{
    switch(global.language)
    {
        case 0: //English    
            text1 = "now you can use cloud to go through walls";
            text = "You can hold down the ability button to cancel the cloud.";

            break;
        case 1: //russian
            text1 = "нажмите";
            text = "чтобы использовать рукохват";
            text2 = "You can hold down the same button to cancel the cloud."
            break;
        case 2: //spanish
            text1 = "pulsa";
            text = "para usar tu mano-gancho";
            text2 = "You can hold down the same button to cancel the cloud."
            break;
        case 3: //chinese
            text1 = "按";
            text = "使用你的钩手";
            text2 = "You can hold down the same button to cancel the cloud."
            break;
        case 4: //portug
            text1 = "prima";
            text = "para usar a sua mão de gancho";
            text2 = "You can hold down the same button to cancel the cloud."
            break;
        case 5: //brazil
            text1 = "pressione";
            text = "para usar sua mão de gancho";
            text2 = "You can hold down the same button to cancel the cloud."
            break;
        case 6: //polish
            text1 = "naciśnij";
            text = "aby użyć ręki z hakiem";
            text2 = "You can hold down the same button to cancel the cloud."
            break;
        case 7: //japanese
            text1 = "";
            text = "を押すとフックハンドが使えます";
            text2 = "You can hold down the same button to cancel the cloud."
            break;
        case 8: //deutch
            text1 = "Drücke";
            text = "um deine Hakenhand zu benutzen";
            text2 = "You can hold down the same button to cancel the cloud."
            break;
        case 9: //french
            text1 = "appuyez sur";
            text = "pour utiliser votre main crochet";
            text2 = "You can hold down the same button to cancel the cloud."
            break;
        case 10: // Italian
            text1 = "premi";
            text = "per usare la mano uncinata";
            text2 = "You can hold down the same button to cancel the cloud."
            break;
    }   
}    



function fnc_lng_save_game(){
switch(global.language)
{
    case 0: //English 
        eng1 = "game saved";
        break;
    case 1: //russian
        eng1 = "сохранено";
        break;
    case 2: //spanish
        eng1 = "partida guardada";
        break;
    case 3: //chinese
        eng1 = "保存";
        break;
    case 4: //portug
        eng1 = "jogo guardado";
        break;
    case 5: //brazil
        eng1 = "Jogo Salvo";
        break;
    case 6: //polish
        eng1 = "gra zapisana";
        break;
    case 7: //japanese
        eng1 = "ゲームセーブ";
        break;
    case 8: //deutch
        eng1 = "Spiel gespeichert";
        break;
    case 9: //french
        eng1 = "partie sauvegardée";
        break;
    case 10: //ital
        eng1 = "Partita salvata";
        break;
}   
}