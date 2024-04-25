// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/*
switch(global.language)
{
    case 0: //English        
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
    case 7: //turkey
        break;
    case 8: //japanese
        break;
    case 9: //deutch
        break;
    case 10: //french
        break;
}
*/




function fnc_lng_globalmap(){
    switch(global.language)
    {
        case 0: //English 
            #region eng
            iJungle = "-Jungle island-";
            iDesert = "-Desert island-";
            iSnow = "-Snow island-";
            iLava = "-Lava island-";
            iShadow = "-Shadow island-";
            #endregion
            break;
        case 1: //russian
            #region eng
            iJungle = "-о. Джунглей-";
            iDesert = "-о. Пустынный-";
            iSnow = "-о. Снежный-";
            iLava = "-о. Лавовый-";
            iShadow = "-о. Теневой-";
            #endregion
            break;
        case 2: //spanish
        #region eng
            iJungle = "Isla de la jungla";
            iDesert = "Isla desierta";
            iSnow = "Isla de nieve";
            iLava = "Isla de lava";
            iShadow = "Isla de las sombras";
            #endregion
            break;
        case 3: //chinese
            #region cn
            iJungle = "从林岛";
            iDesert = "沙漠荒岛";
            iSnow = "雪岛";
            iLava = "熔岩岛";
            iShadow = "暗影岛";
            #endregion
            break;
        case 4: //portug
        #region eng
            iJungle = "Ilha da Selva";
            iDesert = "Ilha Deserta";
            iSnow = "Ilha da Neve";
            iLava = "Ilha da Lava";
            iShadow = "Ilha das Sombras";
            #endregion
            break;
        case 5: //brazil
        #region eng
            iJungle = "Ilha da Selva";
            iDesert = "Ilha Deserta";
            iSnow = "Ilha da Neve";
            iLava = "Ilha da Lava";
            iShadow = "Ilha das Sombras";
            #endregion
            break;
        case 6: //polish
        #region eng
            iJungle = "Wyspa dżungla";
            iDesert = "Pustynna wyspa";
            iSnow = "Śnieżna wyspa";
            iLava = "Wyspa lawa";
            iShadow = "Wyspa cieni";
            #endregion
            break;
        case 7: //japanese
        #region eng
            iJungle = "ジャングル島";
            iDesert = "砂漠の島";
            iSnow = "雪の島";
            iLava = "溶岩島";
            iShadow = "シャドー島";
            #endregion
            break;
        case 8: //deutch
        #region eng
            iJungle = "Dschungelinsel";
            iDesert = "Wüsteninsel";
            iSnow = "Schneeinsel";
            iLava = "Lavainsel";
            iShadow = "Schatteninsel";
            #endregion
            break;
        case 9: //french
        #region eng
            iJungle = "Île de la jungle";
            iDesert = "Île déserte";
            iSnow = "Île de neige";
            iLava = "Île de la lave";
            iShadow = "Île de l'ombre";
            #endregion
            break;
        case 10: // Italian
        #region ITA
            iJungle = "L'isola della giungla";
            iDesert = "L'isola deserta";
            iSnow = "L'isola di neve";
            iLava = "L'isola lavica";
            iShadow = "L'isola delle ombre";
            #endregion
            break;
    }
}
    
function fnc_lng_globalmap_confirm(){
    switch(global.language)
    {
        case 0: //English 
            #region eng
            text1 = "travel to";
            text2 = "jungle island?";

            textyes = "yes";
            textno = "no";
            #endregion
            break;
        case 1: //russian
            #region eng
            text1 = "плыть к";
            text2 = "острову джунглей?";

            textyes = "да";
            textno = "нет";
            #endregion
            break;
        case 2: //spanish
            #region eng
            text1 = "¿Viajar a la";
            text2 = "isla de la selva?";

            textyes = "sí";
            textno = "no";
            #endregion
            break;
        case 3: //chinese
            #region eng
            text1 = "你想去从林岛旅游吗?";
            text2 = "";

            textyes = "对";
            textno = "不";
            #endregion
            break;
        case 4: //portug
            #region eng
            text1 = "Viajar para";
            text2 = "a Ilha da Selva?";

            textyes = "sim";
            textno = "não";
            #endregion
            break;
        case 5: //brazil
            #region eng
            text1 = "Viajar para";
            text2 = "a Ilha da Selva?";

            textyes = "sim";
            textno = "não";
            #endregion
            break;
        case 6: //polish
            #region eng
            text1 = "Podróż na";
            text2 = "wyspę dżungli?";

            textyes = "Tak";
            textno = "Nie";
            #endregion
            break;
        case 7: //japanese
            #region eng
            text1 = "ジャングル島へ行くには？";
            text2 = "";

            textyes = "はい";
            textno = "いいえ";
            #endregion
            break;
        case 8: //deutch
            #region eng
            text1 = "Reise zur ";
            text2 = "Dschungelinsel ?";

            textyes = "ja";
            textno = "nein";
            #endregion
            break;
        case 9: //french
            #region eng
            text1 = "Comment se rendre sur";
            text2 = "l'île de la jungle ?";

            textyes = "oui";
            textno = "non";
            #endregion
            break;
        case 10: // Italian
            #region ITAL
            text1 = "Vuoi viaggiare";
            text2 = "nell'isola della giungla?";

            textyes = "Sì";
            textno = "No";
            #endregion
            break;
    }
}    
        
function fnc_lng_jv_cmt_c(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "start course";
            eng2 = "back"
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "начать";
            eng2 = "назад"
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "Comienza";
            eng2 = "atrás"
            #endregion
            break;
        case 3: //chinese
            #region  CN text
            eng1 = "开始旅程";
            eng2 = "回去"
            #endregion 
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "iniciar";
            eng2 = "voltar"
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "iniciar";
            eng2 = "voltar"
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "start";
            eng2 = "Powrót"
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "コーススタート";
            eng2 = "バック"
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "Beginne ";
            eng2 = "zurück"
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "Beginne ";
            eng2 = "retour"
            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            eng1 = "inizio";
            eng2 = "Torna"
            #endregion
            break;
    }    
}        
  
function fnc_lng_jcv_cmt_c(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "to village";
            eng2 = "back"
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "в деревню";
            eng2 = "назад"
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "al pueblo";
            eng2 = "atrás"
            #endregion
            break;
        case 3: //chinese
            #region  CN text
            eng1 = "到村里";
            eng2 = "回去"
            #endregion  
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "para a aldeia";
            eng2 = "voltar"
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "à aldeia";
            eng2 = "voltar"
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "do wioski";
            eng2 = "Powrót"
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "村へ";
            eng2 = "バック"
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "zum Dorf";
            eng2 = "zurück"
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "au village";
            eng2 = "back"
            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            eng1 = "al villaggio";
            eng2 = "retour"
            #endregion
            break;
    }    
}      
  
function fnc_lng_jmerch_c(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "talk";
            eng2 = "trade";
            eng3 = "exit";
            eng4 = "Let's set sail!";
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "говорить";
            eng2 = "магазин";
            eng3 = "назад";
			eng4 = "Отчаливаем!";
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "hablar";
            eng2 = "comercio"
            eng3 = "salir"
			eng4 = "¡Zarpemos ahora!";
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "说出来";
            eng2 = "营业"
            eng3 = "退出"
			eng4 = "让我们现在就启航！";
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "falar";
            eng2 = "negociar"
            eng3 = "salir"
			eng4 = "Vamos zarpar agora!";
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "falar";
            eng2 = "negociar"
            eng3 = "salir"
			eng4 = "Vamos zarpar agora!";
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "porozmawiaj";
            eng2 = "handel"
            eng3 = "Wyjście"
			eng4 = "Wyruszajmy w rejs teraz!";
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "話す";
            eng2 = "交換"
            eng3 = "終了"
			eng4 = "さあ、出航しましょう！";
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "rede mit";
            eng2 = "Handel"
            eng3 = "beenden"
			eng4 = "Lassen Sie uns jetzt in See stechen!";
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "parler";
            eng2 = "commerce"
            eng3 = "quitter"
			eng4 = "Mettons les voiles maintenant !";
            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            eng1 = "parla";
            eng2 = "negozia"
            eng3 = "Exit"
			eng4 = "Andiamo a navigare ora!";
            #endregion
            break;
    }    
}        
   
function fnc_lng_jmerch_coin_exch(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            eng1 = "7";
            eng2 = "exit";
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "7";
            eng2 = "назад"
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "7";
            eng2 = "salir"
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "7";
            eng2= "退出"
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "7";
            eng2 = "salir"
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "7";
            eng3 = "salir"
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "7";
            eng2 = "Wyjście"
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "7";
            eng2 = "終了"
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "7";
            eng2 = "beenden"
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "7";
            eng2 = "quitter"
            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            eng1 = "7";
            eng2 = "Exit"
            #endregion
            break;
    }    
}           
    
function fnc_lng_jmap()
{
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            village     = "Village"
            endurance   = "arena"            
            temple      = "Temple entrance"
            lair        = "Temple Lair"
            
            #region LEVEL NAMES
			lvl1        = "Bomb Catacombs"
            lvl2        = "tropical hazard"
            dlvl1       = "sand caves";
            dlvl2       = "A storm in the desert";
            slvl1       = "Snowy peaks";
            slvl2       = "A steep descent";
            glvl1       = "Buried in the rain";
            glvl2       = "Melody of Terror";
            llvl1       = "Active Volcanoes";
            llvl2       = "Flaming abyss";
            #endregion
            
            #endregion
            break;
        case 1: //russian
            #region  кг text
            village     = "деревня"
            endurance   = "арена"
            temple      = "вход в Храм"
            lair        = "Логово храма"
            #endregion         
			#region LEVEL NAMES
			lvl1        = "Катакомбы Бомб"
            lvl2        = "Тропическая угроза"
            dlvl1       = "Песчаные пещеры";
            dlvl2       = "Буря в пустыне";
            slvl1       = "Снежные вершины";
            slvl2       = "Крутой спуск";
            glvl1       = "Похороненный под дождем";
            glvl2       = "Мелодия Ужаса";
            llvl1       = "Активные вулканы";
            llvl2       = "Пламенная бездна";
            #endregion
            break;
        case 2: //spanish
            #region  ENG text
            village     = "Pueblo"
            endurance   = "arena"
            temple      = "Entrada del templo"
            lair        = "Guarida del templo"

			
			lvl1        = "Catacumbas de la Bomba";
			lvl2        = "Peligro Tropical";
			dlvl1       = "Cuevas de Arena";
			dlvl2       = "Una tormenta en el desierto";
			slvl1       = "Picos nevados";
			slvl2       = "Un descenso empinado";
			glvl1       = "Enterrado en la lluvia";
			glvl2       = "Melodía del Terror";
			llvl1       = "Volcanes Activos";
			llvl2       = "Abismo en llamas";
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            village     = "从林村"
            endurance   = "竞技场"
            temple      = "门入口"
            lair        = "潜伏点"
			
			lvl1        =  "弹墓地";
			lvl2        =  "带危险";
			dlvl1       =  "洞";
			dlvl2       =  "漠的风暴";
			slvl1       =  "山之巅";
			slvl2       =  "峭的下降";
			glvl1       =  "中埋葬";
			glvl2       =  "怖的旋律";
			llvl1       =  "火山";
			llvl2       =  "焰深渊";
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            village     = "Aldeia"
            endurance   = "arena"
            temple      = "Entrada do Templo"
            lair        = "Antro do Templo"

			lvl1        =  "Catacumbas da Bomba";
			lvl2        =  "Perigo Tropical";
			dlvl1       =  "Cavernas de Areia";
			dlvl2       =  "Uma tempestade no deserto";
			slvl1       =  "Picos Nevados";
			slvl2       =  "Uma descida íngreme";
			glvl1       =  "Enterrado na chuva";
			glvl2       =  "Melodia do Terror";
			llvl1       =  "Vulcões Ativos";
			llvl2       =  "Abismo Flamejante";
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            village     = "Aldeia"
            endurance   = "arena"
            temple      = "Entrada do Templo"
            lair        = "Covil do Templo"

			lvl1        =  "Catacumbas da Bomba";
			lvl2        =  "Perigo Tropical";
			dlvl1       =  "Cavernas de Areia";
			dlvl2       =  "Uma tempestade no deserto";
			slvl1       =  "Picos Nevados";
			slvl2       =  "Uma descida íngreme";
			glvl1       =  "Enterrado na chuva";
			glvl2       =  "Melodia do Terror";
			llvl1       =  "Vulcões Ativos";
			llvl2       =  "Abismo em Chamas";
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            village     = "Wioska"
            endurance   = "arena"
            temple      = "Wejście do świątyni"
            lair        = "Kryjówka świątynna"

			lvl1        =  "Katakumby Bomb";
			lvl2        =  "Tropikalne zagrożenie";
			dlvl1       =  "Piaskowe jaskinie";
			dlvl2       =  "Burza na pustyni";
			slvl1       =  "Śnieżne szczyty";
			slvl2       =  "Strome zejście";
			glvl1       =  "Zakopany w deszczu";
			glvl2       =  "Melodia Terroru";
			llvl1       =  "Aktywne Wulkany";
			llvl2       =  "Płonąca przepaść";
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            village     = "ビレッジ"
            endurance   = "アリーナ"
            temple      = "寺院の入口"
            lair        = "寺院の巣窟"


			lvl1        =  "爆弾地下墓地";
			lvl2        =  "トロピカルハザード";
			dlvl1       =  "砂の洞窟";
			dlvl2       =  "砂漠の嵐";
			slvl1       =  "雪のピーク";
			slvl2       =  "急な下降";
			glvl1       =  "雨に埋もれた";
			glvl2       =  "テラーのメロディ";
			llvl1       =  "活動的な火山";
			llvl2       =  "炎の深淵";
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            village     = "Dorf"
            endurance   = "arena"
            temple      = "Tempel Eingang";
            lair        = "Tempel Versteck";

			lvl1        =  "Bombenkatakomben";
			lvl2        =  "Tropisches Risiko";
			dlvl1       =  "Sandhöhlen";
			dlvl2       =  "Ein Sturm in der Wüste";
			slvl1       =  "Schneebedeckte Gipfel";
			slvl2       =  "Ein steiler Abstieg";
			glvl1       =  "Im Regen begraben";
			glvl2       =  "Melodie des Terrors";
			llvl1       =  "Aktive Vulkane";
			llvl2       =  "Flammender Abgrund";
            #endregion
            break;
        case 9: //french
            #region  ENG text
            village     = "Village"
            endurance   = "Arène"
            temple      = "Entrée du Temple";
            lair        = "Repaire du Temple";

			lvl1        =  "Catacombes de la Bombe";
			lvl2        =  "Danger Tropical";
			dlvl1       =  "Grottes de Sable";
			dlvl2       =  "Une tempête dans le désert";
			slvl1       =  "Pics Enneigés";
			slvl2       =  "Une descente abrupte";
			glvl1       =  "Enterré sous la pluie";
			glvl2       =  "Mélodie de la Terreur";
			llvl1       =  "Volcans Actifs";
			llvl2       =  "Abîme en Flammes";
            #endregion
            break;
        case 10: //Italian
            #region  ENG text
            village     = "il villaggio di"
            endurance   = "arena"
            temple      = "Entrata del tempio";
            lair        = "Tana del tempio";

			lvl1        =  "Catacombe della Bomba";
			lvl2        =  "Pericolo tropicale";
			dlvl1       =  "Grotte di sabbia";
			dlvl2       =  "Una tempesta nel deserto";
			slvl1       =  "Cime nevose";
			slvl2       =  "Una discesa ripida";
			glvl1       =  "Sepolto nella pioggia";
			glvl2       =  "Melodia del Terrore";
			llvl1       =  "Vulcani attivi";
			llvl2       =  "Abisso fiammeggiante";
            #endregion
            break;
    }    
}      

function fnc_lng_boat_choose(){

    switch(global.language)
    {
        case 0: //English   
            text_l = "More Enemies";
            text_l_g = "West Coast";
            text_r_g = "East Coast";
            text_r = "More platforming";

            break;
        case 1: //russian
            text_l =    "больше врагов";
            text_l_g =  "западный берег";
            text_r_g =  "восточный берег";
            text_r =    "больше платформинга";
            break;
        case 2: //spanish
            text_l = "Más enemigos";
            text_l_g = "Costa oeste";
            text_r_g = "Costa este";
            text_r = "Más plataformas";
            break;
        case 3: //chinese
            text_l = "更多敌人";
            text_l_g = "西海岸";
            text_r_g = "东海岸";
            text_r = "更多平台化";
            break;
        case 4: //portug
            text_l = "Mais inimigos";
            text_l_g = "Costa Oeste";
            text_r_g = "Costa leste";
            text_r = "Mais plataformas";
            break;
        case 5: //brazil
            text_l = "Mais inimigos";
            text_l_g = "Costa oeste";
            text_r_g = "Costa leste";
            text_r = "Mais plataformas";
            break;
        case 6: //polish
            text_l = "Więcej wrogów";
            text_l_g = "Zachodnie wybrzeże";
            text_r_g = "Wschodnie wybrzeże";
            text_r = "Więcej platformówek";
            break;
        case 7: //japanese
            text_l = "より多くの敵";
            text_l_g = "西海岸";
            text_r_g = "東海岸";
            text_r = "より多くのプラットフォーム";
            break;
        case 8: //deutch
            text_l = "Mehr Feinde";
            text_l_g = "Westküste";
            text_r_g = "Ostküste";
            text_r = "Mehr Plattformen";
            break;
        case 9: //french
            text_l = "Plus d'ennemis";
            text_l_g = "Côte ouest";
            text_r_g = "Côte estt";
            text_r = "Plus de plateformes";
            break;
        case 10: // Italian
            text_l = "Più nemici";
            text_l_g = "Costa occidentale ";
            text_r_g = "Costa orientale";
            text_r = "Più piattaforma";

            break;
    }
    
}
    
function fnc_lng_cannon_choose(){
    switch(global.language)
    {
        case 0: //English   
            text_l = "More Enemies";
            text_l_g = "jump to\nWest Coast";
            text_r_g = "jump to\nEast Coast";
            text_r = "More platforming";
            text_b = "back";

            break;
        case 1: //russian
            text_l =    "больше врагов";
            text_l_g =  "прыгнуть на\nзападный берег";
            text_r_g =  "прыгнуть на\nвосточный берег";
            text_r =    "больше платформинга";
            text_b =    "назад";
            break;
        case 2: //spanish
            text_l = "Más enemigos";
            text_l_g = "Salta a\nla costa oeste";
            text_r_g = "Salta a\nla costa este";
            text_r = "Más plataformas";
            text_b = "atrás";
            break;
        case 3: //chinese
            text_l = "更多敌人";
            text_l_g = "跳上西海岸";
            text_r_g = "跳上东海岸";
            text_r = "更多平台化";
            text_b = "回去";
            break;
        case 4: //portug
            text_l = "Mais inimigos";
            text_l_g = "Saltar para\nCosta Oeste";
            text_r_g = "Saltar para\nCosta Leste";
            text_r = "Mais plataformas";
            text_b = "voltar";
            break;
        case 5: //brazil
            text_l = "Mais inimigos";
            text_l_g = "Saltar para\nCosta Oeste";
            text_r_g = "Saltar para\nCosta Leste";
            text_r = "Mais plataformas";
            text_b = "voltar";
            break;
        case 6: //polish
            text_l = "Więcej wrogów";
            text_l_g = "Skocz na\nZachodnie wybrzeże";
            text_r_g = "Skocz na\nWschodnie wybrzeże";
            text_r = "Więcej platformówek";
            text_b = "Powrót";
            break;
        case 7: //japanese
            text_l = "より多くの敵";
            text_l_g = "西海岸へ移動";
            text_r_g = "東海岸へ移動";
            text_r = "より多くのプラットフォーム";
            text_b = "バック";
            break;
        case 8: //deutch
            text_l = "Mehr Feinde";
            text_l_g = "Springe zur\nWestküste";
            text_r_g = "Springe zur\nOstküste";
            text_r = "Mehr Plattformen";
            text_b = "zurück";
            break;
        case 9: //french
            text_l = "Plus d'ennemis";
            text_l_g = "Sauter vers\nla côte ouest";
            text_r_g = "Sauter vers\nla côte est";
            text_r = "Plus de plateformes";
            text_b = "retour";
            break;
        case 10: // Italian
            text_l = "Più nemici";
            text_l_g = "Salta sulla\ncosta occidentalest";
            text_r_g = "Salta sulla\ncosta orientale ";
            text_r = "Più piattaforma";
            text_b = "Torna";
            break;
    }
}
    
