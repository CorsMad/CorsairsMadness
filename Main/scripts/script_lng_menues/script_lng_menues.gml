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
            eng4 = "set sail";
            #endregion
            break;
        case 1: //russian
            #region  кг text
            eng1 = "говорить";
            eng2 = "магазин"
            eng3 = "назад"
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "hablar";
            eng2 = "comercio"
            eng3 = "salir"
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "说出来";
            eng2 = "营业"
            eng3 = "退出"
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "falar";
            eng2 = "negociar"
            eng3 = "salir"
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "falar";
            eng2 = "negociar"
            eng3 = "salir"
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "porozmawiaj";
            eng2 = "handel"
            eng3 = "Wyjście"
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "話す";
            eng2 = "交換"
            eng3 = "終了"
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "rede mit";
            eng2 = "Handel"
            eng3 = "beenden"
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "parler";
            eng2 = "commerce"
            eng3 = "quitter"
            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            eng1 = "parla";
            eng2 = "negozia"
            eng3 = "Exit"
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
            eng1 = "говорить";
            eng2 = "магазин"
            eng3 = "назад"
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            eng1 = "hablar";
            eng2 = "comercio"
            eng3 = "salir"
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            eng1 = "说出来";
            eng2 = "营业"
            eng3 = "退出"
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            eng1 = "falar";
            eng2 = "negociar"
            eng3 = "salir"
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            eng1 = "falar";
            eng2 = "negociar"
            eng3 = "salir"
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            eng1 = "porozmawiaj";
            eng2 = "handel"
            eng3 = "Wyjście"
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            eng1 = "話す";
            eng2 = "交換"
            eng3 = "終了"
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            eng1 = "rede mit";
            eng2 = "Handel"
            eng3 = "beenden"
            #endregion
            break;
        case 9: //french
            #region  ENG text
            eng1 = "parler";
            eng2 = "commerce"
            eng3 = "quitter"
            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            eng1 = "parla";
            eng2 = "negozia"
            eng3 = "Exit"
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
            endurance   = "endurance test"
            lvl1        = "Bomb Catacombs"
            lvl2        = "tropical hazard"
            temple      = "Jungle Temple"
            lair        = "Temple Lair"
            
            #region LEVEL NAMES
            dlvl1       = "sand caves";
            dlvl2       = "A storm in the desert";
            slvl1       = "Snowy peaks";
            slvl2       = "Trouble on the mountain";
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
            lvl1        = "1й уровень"
            lvl2        = "2й уровень"
            temple      = "Храм"
            lair        = "Логово"
            #endregion           
            break;
        case 2: //spanish
            #region  ENG text
            village     = "Pueblo"
            endurance   = "arena"
            lvl1        = "nivel 1"
            lvl2        = "nivel 2"
            temple      = "Templo"
            lair        = "Guarida"
            #endregion
            break;
        case 3: //chinese
            #region  ENG text
            village     = "从林村"
            endurance   = "竞技场"
            lvl1        = "第1级"
            lvl2        = "第2级"
            temple      = "寺庙"
            lair        = "巢穴"
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            village     = "Aldeia"
            endurance   = "arena"
            lvl1        = "nível 1"
            lvl2        = "nível 2"
            temple      = "Templo"
            lair        = "Lair"
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            village     = "Aldeia"
            endurance   = "arena"
            lvl1        = "nível 1"
            lvl2        = "nível 2"
            temple      = "Templo"
            lair        = "Lair"
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            village     = "Wioska"
            endurance   = "arena"
            lvl1        = "Poziom 1"
            lvl2        = "Poziom 2"
            temple      = "Świątynia"
            lair        = "Legowisko "
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            village     = "ビレッジ"
            endurance   = "アリーナ"
            lvl1        = "レベル1"
            lvl2        = "レベル2"
            temple      = "神殿"
            lair        = "レア"
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            village     = "Dorf"
            endurance   = "arena"
            lvl1        = "Ebene 1"
            lvl2        = "Ebene 2"
            temple      = "Tempel"
            lair        = "Versteck"
            #endregion
            break;
        case 9: //french
            #region  ENG text
            village     = "Village"
            endurance   = "Arène"
            lvl1        = "niveau 1"
            lvl2        = "niveau 2"
            temple      = "Temple"
            lair        = "Repaire"
            #endregion
            break;
        case 10: //Italian
            #region  ENG text
            village     = "il villaggio di"
            endurance   = "arena"
            lvl1        = "Livello 1"
            lvl2        = "Livello 2"
            temple      = "Il tempio"
            lair        = "Il Covo"
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
    
