function fnc_lng_store(){
    switch(global.language)
    {
        case 0: //eng
            #region eng
            
            confirm = "confirm?";
            confirmy = "yes";
            confirmn = "no";
            
            store = "shop";
            
            sservice = "self \nservice";
            
            nameh_anchor    =  "anchor";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "parrot";

            namep_double_strike     = "front strike";
            namep_lunge             = "double-side";
            namep_toss_up           = "round strike";
            namep_top_down          = "three spheres"

            nameb_qhands        = "Quick Hands";
            nameb_dpistol       = "Double pistol";
            nameb_blunderbuss   = "blunderbuss";
            nameb_parrotc       = "parrot cage";

            name_use = "use:"; //"use:"
            name_or = "or";
            
            tipWS = "select:";
            tipBS = "switch weapon:";
            #region mainmenu
                menu[0, 0] = "Human";
                menu[0, 1] = "possessed";
                menu[0, 2] = "boat";
                menu[0, 3] = "green coins";
                menu[0, 4] = "\n\n\n\n\n\n\nEXIT"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\nBACK";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\nBACK";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\nBACK";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "";//"Double fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\nBACK";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "Deals damage on hit.";
                dHMenu[0,1] = "Deals damage on hit\nand bounces back.";
                dHMenu[0,2] = "goes through \nall the enemies \nin its trajectory.";

                dHMenu[1,0] = "Spins around.\nDeals damage on hit";
                dHMenu[1,1] = "Spins around and \nthe radius gradually increases.";
                dHMenu[1,2] = "Spins around, \nradius gradually increases.\n2 more bombs appear after \ngrenade explosion.";

                dHMenu[2,0] = "The electric charge \nflies forward, periodically \ncreating an area of damage.";
                dHMenu[2,1] = "The electric charge \nflies a little farther, \nperiodically creating a larger \narea of damage.";
                dHMenu[2,2] = "The electric charge \nflies in a wave trajectory, \nperiodically creating a larger \narea of damage.";

                dHMenu[3,0] = "Robo Parrot fires a bullet \nflying forward.";
                dHMenu[3,1] = "Robo Parrot fires a bullet \nflying at the nearest enemy.";
                dHMenu[3,2] = "Robo Parrot fires a bullet \nflying at the nearest enemy. \nOn contact, the bullet explodes.";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Lunges his arm far forward \nand does a lot of damage.";
                dPMenu[1,0] = "Lunges his arms back and forth, \ndealing heavy damage."; 
                dPMenu[2,0] = "Makes a round strike, \ndealing massive amounts of damage."; 
                dPMenu[3,0] = "Launches 3 orbs that fly at \nthe nearest enemy.";

                #endregion

                #region Лодка

                dBMenu[0,0] = "Fires 2 quick shots in a row.";
                dBMenu[0,1] = "Fires 3 quick shots in a row.";
                dBMenu[0,2] = "Fires 3 quick shots in a row. \nThe third bullet is reinforced.";
  
                dBMenu[1,0] = "fires 2 pistols at the same time.";
                dBMenu[1,1] = "fires 2 pistols at the same time.\nBullets do more damage.";
                dBMenu[1,2] = "fires 2 pistols at the same time.\nBullets do massive damage";
 
                dBMenu[2,0] = "Blunderbuss fires 3 bullets \nin a spread.";
                dBMenu[2,1] = "Blunderbuss fires 4 bullets \nin a spread.";
                dBMenu[2,2] = "Blunderbuss fires 5 bullets \nin a spread.";
 
                dBMenu[3,0] = "The robo-parrot flies into the \nnearest enemy \nand deals damage.";
                dBMenu[3,1] = "The robo-parrot flies into the \nnearest enemy \nand deals more damage.";
                dBMenu[3,2] = "The robo-parrot flies into the \nnearest enemy \nand explodes on touch.";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 1: //Russian 
            #region rus
            store = "магазин";
            
            confirm = "подтвердить?";
            confirmy = "да";
            confirmn = "нет";
            
            nameh_anchor    =  "якорь";
            nameh_grenade   =  "граната";
            nameh_shockball =  "шокшар";
            nameh_parrot    =  "попугай";

            namep_double_strike     = "двойной удар";
            namep_lunge             = "выпад";
            namep_toss_up           = "подброс";
            namep_top_down          = "удар вниз"

            nameb_qhands        = "Проворные руки";
            nameb_dpistol       = "Двойные пистоли";
            nameb_blunderbuss   = "мушкетон";
            nameb_parrotc       = "попугай в клет.";

            name_use = "исп:";
            name_or = "или";
            
            #region mainmenu
                menu[0, 0] = "Человек";
                menu[0, 1] = "Одержимый";
                menu[0, 2] = "Лодка";
                menu[0, 3] = "Зеленые монеты";
                menu[0, 4] = "\n\n\n\n\n\n\n\n\n\n\nвыход"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\n\n\n\n\nназад";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\n\n\n\n\nназад";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\n\n\n\n\nназад";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\n\n\n\n\n\nназад";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "наносит урон \nпри касании";
                dHMenu[0,1] = "наносит урон \nпри касании\nи отскакивает назад";
                dHMenu[0,2] = "проходит \nсквозь всех врагов \nна своем пути";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Наносит большой урон, \nотбрасывая врагов \nна которкую дистанцию";
                dPMenu[1,0] = "Удар вперед, \nбросающий врагов \nвдаль"; 
                dPMenu[2,0] = "Подбрасывает врагов \nв воздух \n<только на земле>"; 
                dPMenu[3,0] = "опрокидывает врагов \nвниз \n<только в воздухе>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Стрельба из \nдвух пистолей";
                dBMenu[1,1] = "Усиленная стрельба \nиз двух пистолей";
                dBMenu[1,2] = "Усиленная стрельба \nиз двух пистолей \nс высоким уроном";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


#endregion
            
            #endregion
            break;
        case 2: //spanish
            #region spa
            
            confirm = "Confirmar?";
            confirmy = "sí";
            confirmn = "no";
            
            store = "tienda";
            
            nameh_anchor    =  "ancla";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de choque";
            nameh_parrot    =  "loro";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "manos rápidas";
            nameb_dpistol       = "pistola doble";
            nameb_blunderbuss   = "trabuco";
            nameb_parrotc       = "loro";

            name_use = "usar:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "humano";
                menu[0, 1] = "poseído";
                menu[0, 2] = "barco";
                menu[0, 3] = "monedas de jade";
                menu[0, 4] = "\n\n\n\n\n\n\nsalir"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\natrás";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\natrás";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\natrás";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\natrás";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "Inflige daño \nal golpear";
                dHMenu[0,1] = "Inflige daño \nal golpear\ny rebota";
                dHMenu[0,2] = "Atraviesa a todos\nlos enemigos \nen su trayectoria";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Dos cañones\nde disparo alterno";
                dBMenu[1,1] = "Dos cañones\nde disparo simultáneo";
                dBMenu[1,2] = "Disparo simultáneo\nde dos cañones\nde gran daño.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 3: //chinese
            #region CN
            
            confirm = "证实?";
            confirmy = "对";
            confirmn = "不";
            
            store = "商店";
            
            nameh_anchor    =  "锚";
            nameh_grenade   =  "手榴弹";
            nameh_shockball =  "震撼球";
            nameh_parrot    =  "鹦鹉";

            namep_double_strike     = "双击";
            namep_lunge             = "蹲下";
            namep_toss_up           = "折腾";
            namep_top_down          = "自上而下的罢工"

            nameb_qhands        = "快手";
            nameb_dpistol       = "双枪";
            nameb_blunderbuss   = "雷筒";
            nameb_parrotc       = "鹦鹉笼";

            name_use = "用:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "人类";
                menu[0, 1] = "着魔的";
                menu[0, 2] = "船";
                menu[0, 3] = "绿色硬币";
                menu[0, 4] = "\n\n\n\n\n\n\n退出"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\n回去";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\n回去";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\n回去";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\n回去";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "每击造成伤害";
                dHMenu[0,1] = "每击造成伤害反弹";
                dHMenu[0,2] = "穿过路径上的所有敌人";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "两支手枪交替射击";
                dBMenu[1,1] = "两支手枪同时射击";
                dBMenu[1,2] = "高伤害和枪同时射击";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 4: //portug
            #region eng
            
            confirm = "Confirmar?";
            confirmy = "sim";
            confirmn = "não";
            
            store = "loja";
            
            nameh_anchor    =  "âncora";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de choque";
            nameh_parrot    =  "papagaio";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "ajudinhas";
            nameb_dpistol       = "pistola dupla";
            nameb_blunderbuss   = "bacamarte";
            nameb_parrotc       = "papagaio";

            name_use = "utilizar:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "humano";
                menu[0, 1] = "possuído";
                menu[0, 2] = "barco";
                menu[0, 3] = "moedas jade";
                menu[0, 4] = "\n\n\n\n\n\n\nsair"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\nvoltar";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\nvoltar";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\nvoltar";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\nvoltar";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "Causa dano \nao acertar";
                dHMenu[0,1] = "Causa dano \nao acertar e rebate";
                dHMenu[0,2] = "passa por \ntodos os inimigos \nem sua trajetória";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Duas armas \nde disparo alternado";
                dBMenu[1,1] = "Disparo simultâneo \nde duas armas";
                dBMenu[1,2] = "Disparo simultâneo \nde duas armas \nde alto dano.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 5: //brazil
            #region eng
            
            confirm = "Confirmar?";
            confirmy = "sim";
            confirmn = "não";
            
            store = "loja";
            
            nameh_anchor    =  "âncora";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de choque";
            nameh_parrot    =  "papagaio";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "ajudinhas";
            nameb_dpistol       = "pistola dupla";
            nameb_blunderbuss   = "bacamarte";
            nameb_parrotc       = "papagaio";

            name_use = "usar:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "humano";
                menu[0, 1] = "possuído";
                menu[0, 2] = "barco";
                menu[0, 3] = "moedas jade";
                menu[0, 4] = "\n\n\n\n\n\n\nsair"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\nsair";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\nBACK";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\nsair";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\nsair";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "Causa dano \nao acertar";
                dHMenu[0,1] = "Causa dano \nao acertar e rebate";
                dHMenu[0,2] = "passa por todos\nos inimigos \nem sua trajetória";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Duas armas \nde disparo alternado";
                dBMenu[1,1] = "Disparo simultâneo \nde duas armas";
                dBMenu[1,2] = "Disparo simultâneo \nde duas armas \nde alto dano.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 6: //polish
            #region eng
            
            confirm = "Potwierdź?";
            confirmy = "Tak";
            confirmn = "Nie";
            
            store = "Sklep";
            
            nameh_anchor    =  "kotwic";
            nameh_grenade   =  "granat";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "papuga";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "szybkie ręce";
            nameb_dpistol       = "podwójny pistolet";
            nameb_blunderbuss   = "blunderbuss";
            nameb_parrotc       = "papuga";

            name_use = "użyj:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "człowiek";
                menu[0, 1] = "opętany";
                menu[0, 2] = "łódź";
                menu[0, 3] = "zielone monety";
                menu[0, 4] = "\n\n\n\n\n\n\nWyjście"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\nPowrót";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\nPowrót";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\nPowrót";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\nPowrót";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "Zadaje obrażenia od \ntrafienia";
                dHMenu[0,1] = "Zadaje obrażenia od \ntrafienia i odbija \nsię od ziemi";
                dHMenu[0,2] = "Jej trajektoria \nsprawia, że \nprzechodzi przez \nwszystkich wrogów";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Dwa działa \nstrzelające \nna przemian";
                dBMenu[1,1] = "Jednoczesne \nużycie dwóch dział";
                dBMenu[1,2] = "Mocne obrażenia \nzadawane przez dwa \ndziała strzelające \njednocześnie.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 7: //japanese
            #region eng
            
            confirm = "確認?";
            confirmy = "sim";
            confirmn = "não";
            
            store = "店";
            
            nameh_anchor    =  "アンカー";
            nameh_grenade   =  "手榴弾";
            nameh_shockball =  "ショックボール";
            nameh_parrot    =  "オウム";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "クイックハンド";
            nameb_dpistol       = "二丁拳銃";
            nameb_blunderbuss   = "雷管";
            nameb_parrotc       = "オウムの檻";

            name_use = "使用:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "人間";
                menu[0, 1] = "憑かれた";
                menu[0, 2] = "船";
                menu[0, 3] = "翡翠コイン";
                menu[0, 4] = "\n\n\n\n\n\n\n終了"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\nバック";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\nBACK";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\nバック";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\nバック";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "命中時ダメージ";
                dHMenu[0,1] = "命中時ダメージとバウンドバック";
                dHMenu[0,2] = "弾道上の全ての敵を貫通する";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "2丁拳銃交互発射";
                dBMenu[1,1] = "2丁拳銃同時発射";
                dBMenu[1,2] = "高ダメージの2丁拳銃同時発射";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 8: //deutch
            #region eng
            
            confirm = "Bestätigen?";
            confirmy = "ja";
            confirmn = "nein";
            
            store = "Laden";
            
            nameh_anchor    =  "Anker";
            nameh_grenade   =  "Granate";
            nameh_shockball =  "Schockball";
            nameh_parrot    =  "Papagei";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "schnelle Hände";
            nameb_dpistol       = "Doppelpistole";
            nameb_blunderbuss   = "Donnerbüchsebuss";
            nameb_parrotc       = "Papageienkäfig";

            name_use = "benutzen:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "menschlich";
                menu[0, 1] = "besessen";
                menu[0, 2] = "Boot";
                menu[0, 3] = "Jademünzen";
                menu[0, 4] = "\n\n\n\n\n\n\nbeenden"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\nzurück";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\nzurück";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\nzurück";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\nzurück";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "Verursacht Schaden \nbei einem Treffer";
                dHMenu[0,1] = "Verursacht bei einem \nTreffer Schaden \nund prallt zurück";
                dHMenu[0,2] = "geht durch \nalle Gegner in \nseiner Flugbahn";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Zwei Kanonen, \ndie abwechselnd \nfeuern";
                dBMenu[1,1] = "Zwei Kanonen, \ndie gleichzeitig \nfeuern";
                dBMenu[1,2] = "Zwei Waffen mit \nhohem Schaden, \ndie gleichzeitig \nfeuern.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 9: //french
            #region eng
            
            confirm = "Confirmez?";
            confirmy = "oui";
            confirmn = "non";
            
            store = "boutique";
            
            nameh_anchor    =  "ancre";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "balle de choc";
            nameh_parrot    =  "perroquet";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "mains rapides";
            nameb_dpistol       = "double pistolet";
            nameb_blunderbuss   = "tromblon";
            nameb_parrotc       = "perroquet";

            name_use = "utiliser:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "humain";
                menu[0, 1] = "possédé";
                menu[0, 2] = "bateau";
                menu[0, 3] = "pièces de jade";
                menu[0, 4] = "\n\n\n\n\n\n\nquitter"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\nretour";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\nBACK";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\nretour";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\nretour";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "Inflige des dégâts \nen cas d'attaque";
                dHMenu[0,1] = "Inflige des dégâts \nen cas de coup \net rebondit";
                dHMenu[0,2] = "traverse tous les \nennemis sur \nsa trajectoire";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Tir alterné \nde deux pistolets";
                dBMenu[1,1] = "Tir simultané \nde deux pistolets";
                dBMenu[1,2] = "Deux armes à feu \nà dégâts élevés \ntirant simultanément.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
        case 10: // Italian
            #region eng
            
            confirm = "Conferma?";
            confirmy = "Sì";
            confirmn = "No";
            
            store = "negozio";
            
            nameh_anchor    =  "Ancora";
            nameh_grenade   =  "granata";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "pappagallo";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "mani veloci";
            nameb_dpistol       = "doppia canna";
            nameb_blunderbuss   = "fulmine";
            nameb_parrotc       = "pappagallo";

            name_use = "usa:";
            name_or = "/";
            
            
            #region mainmenu
                menu[0, 0] = "umano";
                menu[0, 1] = "posseduto";
                menu[0, 2] = "la nave";
                menu[0, 3] = "monete verdi";
                menu[0, 4] = "\n\n\n\n\n\n\nEXIT"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
                #endregion

            #region human
                menu[1, 0] = ""//"anchor";
                menu[1, 1] = ""//"bomb";
                menu[1, 2] = ""//"electroball";
                menu[1, 3] = ""//"Parrot";
                menu[1, 4] = "\n\n\n\n\n\n\nTorna";
                #endregion

            #region possessed
                menu[2, 0] = "";//"Double attack";
                menu[2, 1] = "";//"lunge attack";
                menu[2, 2] = "";//"toss attack";
                menu[2, 3] = "";//"down attack";
                menu[2, 4] = "\n\n\n\n\n\n\nTorna";
                #endregion

            #region boat
                menu[3, 0] = "";//"Rapid fire";
                menu[3, 1] = "";//"Double fire";
                menu[3, 2] = "";//"blunderbuss";
                menu[3, 3] = "";//"Parrot cage";
                menu[3, 4] = "\n\n\n\n\n\n\nTorna";
                #endregion

            #region Jade coins
                menu[4, 0] = "";//"Rapid fire";
                menu[4, 1] = "";//"Double fire";
                menu[4, 2] = "\n\n\n\n\n\n\n\n\nTorna";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек



                dHMenu[0,0] = "infligge danni \nper colpo";
                dHMenu[0,1] = "infligge danni \nper colpo\ne rimbalza indietro";
                dHMenu[0,2] = "attraversa tutti \ni nemici\nsulla sua traiettoria";

                dHMenu[1,0] = "";
                dHMenu[1,1] = "";
                dHMenu[1,2] = "";

                dHMenu[2,0] = "";
                dHMenu[2,1] = "";
                dHMenu[2,2] = "";

                dHMenu[3,0] = "";
                dHMenu[3,1] = "";
                dHMenu[3,2] = "";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Deals heavy damage \nby knocking enemies \nback a short distance";
                dPMenu[1,0] = "Strikes forward, \nthrowing the enemy \nfar away"; 
                dPMenu[2,0] = "Throws the enemy \nin the air \n<on the ground only>"; 
                dPMenu[3,0] = "Throws the opponent \ndown \n<in the air only>";

                #endregion

                #region Лодка

                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "alternato sparare \ndi due pistole";
                dBMenu[1,1] = "simultaneo sparare \ndi due pistole";
                dBMenu[1,2] = "alto danno \ne simultaneo sparare \ndi due pistole";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
                /*
                dBMenu[4,0] = "Bounces back at solid objects \n2 times";
                dBMenu[4,1] = "Bounces back at solid objects \n4 times";
                dBMenu[4,2] = "Bounces back at solid objects \n6 times";
                */
                #endregion


            #endregion
            
            #endregion
            break;
    }
}

function fnc_lng_level_confirm1(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            title = "choose your gear";                       
            
            nameh_anchor    =  "anchor";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "parrot";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nCONFIRM"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Deals damage on hit";
            dHMenu[0,1] = "Deals damage on hit\nand bounces back";
            dHMenu[0,2] = "goes through \nall the enemies \nin its path";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 1: //russian
        #region RUS
             title = "выберите снаряжение";                       
            
            nameh_anchor    =  "якорь";
            nameh_grenade   =  "граната";
            nameh_shockball =  "шокшар";
            nameh_parrot    =  "попугай";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n\n\n\n\nподтвердить"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n\n\n\n\nназад"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "наносит урон \nпри касании";
            dHMenu[0,1] = "наносит урон \nпри касании\nи отскакивает назад";
            dHMenu[0,2] = "проходит \nсквозь всех врагов \nна своем пути";

            dHMenu[1,0] = "";
            dHMenu[1,1] = "";
            dHMenu[1,2] = "";
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = "";
            dHMenu[2,2] = "";
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = "";
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
          #endregion
            break;
        case 2: //spanish
            #region  ENG text
            title = "Elige tu equipo";                       
            
            nameh_anchor    =  "ancla";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de choque";
            nameh_parrot    =  "loro";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConfirmar"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\natrás"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\natrás";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\natrás";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\natrás";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\natrás";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Inflige daño \nal golpear";
            dHMenu[0,1] = "Inflige daño \nal golpear\ny rebota";
            dHMenu[0,2] = "Atraviesa a todos\nlos enemigos \nen su trayectoria";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 3: //chinese
         #region  ENG text
            title = "选择你的装备";                       
            
            nameh_anchor    =  "锚";
            nameh_grenade   =  "手榴弹";
            nameh_shockball =  "震撼球";
            nameh_parrot    =  "鹦鹉";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n证实"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n回去"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\n回去";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "每击造成伤害";
            dHMenu[0,1] = "每击造成伤害反弹";
            dHMenu[0,2] = "穿过路径上的所有敌人";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 4: //portug
            #region  ENG text
            title = "Escolhe o teu equipamento";                       
            
            nameh_anchor    =  "âncora";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de ch";
            nameh_parrot    =  "papagaio";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConfirmar"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nvoltar"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nvoltar";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nvoltar";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nvoltar";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nvoltar";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Causa dano \nao acertar";
            dHMenu[0,1] = "Causa dano \nao acertar e rebate";
            dHMenu[0,2] = "passa por \ntodos os inimigos \nem sua trajetória";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            title = "Escolha seu equipamento";                       
            
            nameh_anchor    =  "âncora";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de choque";
            nameh_parrot    =  "papagaio";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConfirmar"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nsair"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nsair";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nsair";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nsair";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nsair";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Causa dano \nao acertar";
            dHMenu[0,1] = "Causa dano \nao acertar e rebate";
            dHMenu[0,2] = "passa por todos\nos inimigos \nem sua trajetória";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            title = "Wybierz swój ekwipunek";                       
            
            nameh_anchor    =  "kotwic";
            nameh_grenade   =  "granat";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "papuga";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nPotwierdź"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nPowrót"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nPowrót";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nPowrót";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nPowrót";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nPowrót";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Zadaje obrażenia od \ntrafienia";
            dHMenu[0,1] = "Zadaje obrażenia od \ntrafienia i odbija \nsię od ziemi";
            dHMenu[0,2] = "Jej trajektoria \nsprawia, że \nprzechodzi przez \nwszystkich wrogów";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            title = "装備の選択";                       
            
            nameh_anchor    =  "アンカー";
            nameh_grenade   =  "手榴弾";
            nameh_shockball =  "ショックボール";
            nameh_parrot    =  "オウム";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n確認"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nバック"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nバック";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nバック";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nバック";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nバック";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "命中時ダメージ";
            dHMenu[0,1] = "命中時ダメージとバウンドバック";
            dHMenu[0,2] = "弾道上の全ての敵を貫通する";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            title = "Wähle deine Ausrüstung";                       
            
            nameh_anchor    =  "Anker";
            nameh_grenade   =  "Granate";
            nameh_shockball =  "Schockball";
            nameh_parrot    =  "Papagei";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nBestätigen"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nzurück"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nzurück";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nzurück";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nzurück";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nzurück";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Verursacht Schaden \nbei einem Treffer";
            dHMenu[0,1] = "Verursacht bei einem \nTreffer Schaden \nund prallt zurück";
            dHMenu[0,2] = "geht durch \nalle Gegner in \nseiner Flugbahn";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 9: //french
            #region  ENG text
            title = "Choisissez votre équipement";                       
            
            nameh_anchor    =  "ancre";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "balle de choc";
            nameh_parrot    =  "perroquet";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConfirmez"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nretour"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nretour";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nretour";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nretour";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nretour";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Inflige des dégâts \nen cas d'attaque";
            dHMenu[0,1] = "Inflige des dégâts \nen cas de coup \net rebondit";
            dHMenu[0,2] = "traverse tous les \nennemis sur \nsa trajectoire";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            title = "Scegli la tua attrezzatura";                       
            
            nameh_anchor    =  "Ancora";
            nameh_grenade   =  "granata";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "pappagallo";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConferma"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nTorna";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "infligge danni \nper colpo";
            dHMenu[0,1] = "infligge danni \nper colpo\ne rimbalza indietro";
            dHMenu[0,2] = "attraversa tutti \ni nemici\nsulla sua traiettoria";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
    }    
}      

function fnc_lng_level_confirm2(){
   switch(global.language)
    {
        case 0: //English  
            #region  ENG text
            title = "choose your gear";                       
            title2 = "choose boat gear";            
            nameh_anchor    =  "anchor";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "parrot";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "Quick Hands";
            nameb_dpistol       = "Double pistol";
            nameb_blunderbuss   = "blunderbuss";
            nameb_parrotc       = "parrot cage";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nCONFIRM"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nCONFIRM"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Deals damage on hit";
            dHMenu[0,1] = "Deals damage on hit\nand bounces back";
            dHMenu[0,2] = "goes through \nall the enemies \nin its path";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Alternate firing of \ntwo guns";
                dBMenu[1,1] = "Simultaneous firing \nof two guns";
                dBMenu[1,2] = "Simultaneous firing \nof two guns \nwith high damage";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
        case 1: //russian
        #region Rus
            title = "выберите снаряжеие";                       
            title2 = "снаряжение для лодки";
            nameh_anchor    =  "якорь";
            nameh_grenade   =  "граната";
            nameh_shockball =  "шокшар";
            nameh_parrot    =  "попугай";

            namep_double_strike     = "двойной удар";
            namep_lunge             = "выпад";
            namep_toss_up           = "подброс";
            namep_top_down          = "удар вниз"

            nameb_qhands        = "Проворные руки";
            nameb_dpistol       = "Двойные пистоли";
            nameb_blunderbuss   = "мушкетон";
            nameb_parrotc       = "попугай в клет.";
            
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n\n\n\n\nподтвердить"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n\n\n\n\nназад"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\n\n\n\n\nподтвердить"; 
            menu[1, 5] = "\n\n\n\n\n\n\n\n\n\n\nназад"; 
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nназад";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "наносит урон \nпри касании";
            dHMenu[0,1] = "наносит урон \nпри касании\nи отскакивает назад";
            dHMenu[0,2] = "проходит \nсквозь всех врагов \nна своем пути";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
            
            #region Лодка
            
            dBMenu[0,0] = "";
            dBMenu[0,1] = "";
            dBMenu[0,2] = "";
            
            dBMenu[1,0] = "Стрельба из \nдвух пистолей";
            dBMenu[1,1] = "Усиленная стрельба \nиз двух пистолей";
            dBMenu[1,2] = "Усиленная стрельба \nиз двух пистолей \nс высоким уроном";                     
 
            dBMenu[2,0] = "";
            dBMenu[2,1] = "";
            dBMenu[2,2] = "";
 
            dBMenu[3,0] = "";
            dBMenu[3,1] = "";
            dBMenu[3,2] = "";
            #endregion
            
            #endregion
          
            #endregion
            break;
        case 2: //spanish
            #region  ENG text
            title = "Elige tu equipo";                       
            title2 = "Elige equipo de barco";            
            nameh_anchor    =  "ancla";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de choque";
            nameh_parrot    =  "loro";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "manos rápidas";
            nameb_dpistol       = "pistola doble";
            nameb_blunderbuss   = "trabuco";
            nameb_parrotc       = "loro";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConfirmar"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\natrás"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nConfirmar"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\natrás"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\natrás";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\natrás";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\natrás";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Inflige daño \nal golpear";
            dHMenu[0,1] = "Inflige daño \nal golpear\ny rebota";
            dHMenu[0,2] = "Atraviesa a todos\nlos enemigos \nen su trayectoria";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Dos cañones\nde disparo alterno";
                dBMenu[1,1] = "Dos cañones\nde disparo simultáneo";
                dBMenu[1,2] = "Disparo simultáneo\nde dos cañones\nde gran daño.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
        case 3: //chinese
        #region  ENG text
            title = "选择你的装备";                       
            title2 = "选择船装备";            
            nameh_anchor    =  "锚";
            nameh_grenade   =  "手榴弹";
            nameh_shockball =  "震撼球";
            nameh_parrot    =  "鹦鹉";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "快手";
            nameb_dpistol       = "双枪";
            nameb_blunderbuss   = "雷筒";
            nameb_parrotc       = "鹦鹉笼";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n证实"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n回去"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\n证实"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\n回去"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\n回去K";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "每击造成伤害";
            dHMenu[0,1] = "每击造成伤害反弹";
            dHMenu[0,2] = "穿过路径上的所有敌人";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "两支手枪交替射击";
                dBMenu[1,1] = "两支手枪同时射击";
                dBMenu[1,2] = "高伤害和枪同时射击";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion        
            break;
        case 4: //portug
            #region  ENG text
            title = "Escolhe o teu equipamento";                       
            title2 = "Escolhe o equipamento de barco";            
            nameh_anchor    =  "âncora";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de choque";
            nameh_parrot    =  "papagaio";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "ajudinhas";
            nameb_dpistol       = "pistola dupla";
            nameb_blunderbuss   = "bacamarte";
            nameb_parrotc       = "papagaio";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConfirmar"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nsair"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nConfirmar"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\nsair"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nsair";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nsair";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nsair";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Causa dano \nao acertar";
            dHMenu[0,1] = "Causa dano \nao acertar e rebate";
            dHMenu[0,2] = "passa por \ntodos os inimigos \nem sua trajetória";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Duas armas \nde disparo alternado";
                dBMenu[1,1] = "Disparo simultâneo \nde duas armas";
                dBMenu[1,2] = "Disparo simultâneo \nde duas armas \nde alto dano.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
        case 5: //brazil
            #region  ENG text
            title = "Escolha seu equipamento";                       
            title2 = "Escolha o equipamento do barco";            
            nameh_anchor    =  "âncora";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de choque";
            nameh_parrot    =  "papagaio";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "ajudinhas";
            nameb_dpistol       = "pistola dupla";
            nameb_blunderbuss   = "bacamarte";
            nameb_parrotc       = "papagaio";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConfirmar"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nsair"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nConfirmar"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\nsair"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nsair";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nsair";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nsair";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Causa dano \nao acertar";
            dHMenu[0,1] = "Causa dano \nao acertar e rebate";
            dHMenu[0,2] = "passa por todos\nos inimigos \nem sua trajetória";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Duas armas \nde disparo alternado";
                dBMenu[1,1] = "Disparo simultâneo \nde duas armas";
                dBMenu[1,2] = "Disparo simultâneo \nde duas armas \nde alto dano.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
        case 6: //polish
            #region  ENG text
            title = "Wybierz swój ekwipunek";                       
            title2 = "Wybierz wyposażenie łodzi";            
            nameh_anchor    =  "kotwic";
            nameh_grenade   =  "granat";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "papuga";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "szybkie ręce";
            nameb_dpistol       = "podwójny pistolet";
            nameb_blunderbuss   = "blunderbuss";
            nameb_parrotc       = "papuga";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nPotwierdź"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nPowrót"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nCONFIRM"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\nPowrót"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nPowrót";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nPowrót";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nPowrót";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Zadaje obrażenia od \ntrafienia";
            dHMenu[0,1] = "Zadaje obrażenia od \ntrafienia i odbija \nsię od ziemi";
            dHMenu[0,2] = "Jej trajektoria \nsprawia, że \nprzechodzi przez \nwszystkich wrogów";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Dwa działa \nstrzelające \nna przemian";
                dBMenu[1,1] = "Jednoczesne \nużycie dwóch dział";
                dBMenu[1,2] = "Mocne obrażenia \nzadawane przez dwa \ndziała strzelające \njednocześnie.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
        case 7: //japanese
            #region  ENG text
            title = "装備の選択";                       
            title2 = "ボートの装備の選択";            
            nameh_anchor    =  "アンカー";
            nameh_grenade   =  "手榴弾";
            nameh_shockball =  "ショックボール";
            nameh_parrot    =  "オウム";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "クイックハンド";
            nameb_dpistol       = "二丁拳銃";
            nameb_blunderbuss   = "雷管";
            nameb_parrotc       = "オウムの檻";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n確認"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nバック"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\n確認"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\nバック"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nバック";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nバック";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nバック";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "命中時ダメージ";
            dHMenu[0,1] = "命中時ダメージとバウンドバック";
            dHMenu[0,2] = "弾道上の全ての敵を貫通する";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "2丁拳銃交互発射";
                dBMenu[1,1] = "2丁拳銃同時発射";
                dBMenu[1,2] = "高ダメージの2丁拳銃同時発射";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
        case 8: //deutch
            #region  ENG text
            title = "Wähle deine Ausrüstung";                       
            title2 = "Wähle die Bootsausrüstung";            
            nameh_anchor    =  "Anker";
            nameh_grenade   =  "Granate";
            nameh_shockball =  "Schockball";
            nameh_parrot    =  "Papagei";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "schnelle Hände";
            nameb_dpistol       = "Doppelpistole";
            nameb_blunderbuss   = "Donnerbüchsebuss";
            nameb_parrotc       = "Papageienkäfig";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nBestätigen"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nzurück"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nBestätigen"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\nzurück"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nzurück";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nzurück";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nzurück";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Verursacht Schaden \nbei einem Treffer";
            dHMenu[0,1] = "Verursacht bei einem \nTreffer Schaden \nund prallt zurück";
            dHMenu[0,2] = "geht durch \nalle Gegner in \nseiner Flugbahn";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Zwei Kanonen, \ndie abwechselnd \nfeuern";
                dBMenu[1,1] = "Zwei Kanonen, \ndie gleichzeitig \nfeuern";
                dBMenu[1,2] = "Zwei Waffen mit \nhohem Schaden, \ndie gleichzeitig \nfeuern.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
        case 9: //french
            #region  ENG text
            title = "Choisissez votre équipement";                       
            title2 = "Choisissez l'équipement du bateau";            
            nameh_anchor    =  "ancre";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "balle de choc";
            nameh_parrot    =  "perroquet";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "mains rapides";
            nameb_dpistol       = "double pistolet";
            nameb_blunderbuss   = "tromblon";
            nameb_parrotc       = "perroquet";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConfirmez"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nretour"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nConfirmez"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\nretour"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nretour";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nretour";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nretour";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Inflige des dégâts \nen cas d'attaque";
            dHMenu[0,1] = "Inflige des dégâts \nen cas de coup \net rebondit";
            dHMenu[0,2] = "traverse tous les \nennemis sur \nsa trajectoire";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "Tir alterné \nde deux pistolets";
                dBMenu[1,1] = "Tir simultané \nde deux pistolets";
                dBMenu[1,2] = "Deux armes à feu \nà dégâts élevés \ntirant simultanément.";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
        case 10: // Italian
            #region  ENG text
            title = "Scegli la tua attrezzatura";                       
            title2 = "Scegli l'attrezzatura da barca";            
            nameh_anchor    =  "Ancora";
            nameh_grenade   =  "granata";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "pappagallo ";

            namep_double_strike     = "double strike";
            namep_lunge             = "lunge";
            namep_toss_up           = "toss-up";
            namep_top_down          = "top-down strike"

            nameb_qhands        = "mani veloci";
            nameb_dpistol       = "doppia canna";
            nameb_blunderbuss   = "fulmine";
            nameb_parrotc       = "pappagallo ";
            
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConferma"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nTorna"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nConferma"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[1, 5] = "\n\n\n\n\n\n\nTorna"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nTorna";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "infligge danni \nper colpo";
            dHMenu[0,1] = "infligge danni \nper colpo\ne rimbalza indietro";
            dHMenu[0,2] = "attraversa tutti \ni nemici\nsulla sua traiettoria";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                          
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                          
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */
            
 
                        #endregion
            
            #region Лодка
                dBMenu[0,0] = "";
                dBMenu[0,1] = "";
                dBMenu[0,2] = "";
  
                dBMenu[1,0] = "alternato sparare \ndi due pistole";
                dBMenu[1,1] = "simultaneo sparare \ndi due pistole";
                dBMenu[1,2] = "alto danno \ne simultaneo sparare \ndi due pistole";
 
                dBMenu[2,0] = "";
                dBMenu[2,1] = "";
                dBMenu[2,2] = "";
 
                dBMenu[3,0] = "";
                dBMenu[3,1] = "";
                dBMenu[3,2] = "";
            #endregion
            
            #endregion
            #endregion
            break;
    }    
}      
    
function fnc_lng_level_endurance_confirm(){
    switch(global.language)
    {
        case 0: //English  
        #region  ENG text
            title = "choose your gear";                       
            
            nameh_anchor    =  "anchor";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "parrot";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nCONFIRM"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "Deals damage on hit";
            dHMenu[0,1] = "Deals damage on hit\nand bounces back";
            dHMenu[0,2] = "goes through \nall the enemies \nin its path";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
        case 1: //russian
        #region RUS
             title = "выберите снаряжение";                       
            
            nameh_anchor    =  "якорь";
            nameh_grenade   =  "граната";
            nameh_shockball =  "шокшар";
            nameh_parrot    =  "попугай";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n\n\n\n\nподтвердить"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n\n\n\n\nназад"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nBACK";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nBACK";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "наносит урон \nпри касании";
            dHMenu[0,1] = "наносит урон \nпри касании\nи отскакивает назад";
            dHMenu[0,2] = "проходит \nсквозь всех врагов \nна своем пути";

            dHMenu[1,0] = "";
            dHMenu[1,1] = "";
            dHMenu[1,2] = "";
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = "";
            dHMenu[2,2] = "";
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = "";
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
          #endregion
            break;
        case 2: //spanish
            break;
        case 3: //chinese
         #region  ENG text
            title = "选择你的装备";                       
            
            nameh_anchor    =  "锚";
            nameh_grenade   =  "手榴弹";
            nameh_shockball =  "震撼球";
            nameh_parrot    =  "鹦鹉";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\n证实"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\n回去"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\n回去";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\n回去";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "每击造成伤害";
            dHMenu[0,1] = "每击造成伤害反弹";
            dHMenu[0,2] = "穿过路径上的所有敌人";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
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
        case 10: // Italian
            #region Ital
            title = "Scegli la tua attrezzatura";                       
            
            nameh_anchor    =  "Ancora";
            nameh_grenade   =  "granata";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "pappagallo";
            #region humanload
            menu[0, 0] = "";
            menu[0, 1] = "";
            menu[0, 2] = "";
            menu[0, 3] = "";
            menu[0, 4] = "\n\n\n\n\n\n\nConferma"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            menu[0, 5] = "\n\n\n\n\n\n\nBACK"; //"\n\n\n\n\n\n\n\n\n\n\n\n\n\nexit";
            #endregion

            #region human
            menu[1, 0] = ""//"anchor";
            menu[1, 1] = ""//"bomb";
            menu[1, 2] = ""//"electroball";
            menu[1, 3] = ""//"Parrot";
            menu[1, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region possessed
            menu[2, 0] = "";//"Double attack";
            menu[2, 1] = "";//"lunge attack";
            menu[2, 2] = "";//"toss attack";
            menu[2, 3] = "";//"down attack";
            menu[2, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region boat
            menu[3, 0] = "";//"Rapid fire";
            menu[3, 1] = "";//"Double fire";
            menu[3, 2] = "";//"blunderbuss";
            menu[3, 3] = "";//"Parrot cage";
            menu[3, 4] = "\n\n\n\n\n\n\nTorna";
            #endregion

            #region Jade coins
            menu[4, 0] = "";//"Rapid fire";
            menu[4, 1] = "";//"Double fire";
            menu[4, 2] = "\n\n\n\n\n\n\n\n\nTorna";//"blunderbuss";
            #endregion

            #region Описания 

            #region Человек



            dHMenu[0,0] = "infligge danni \nper colpo";
            dHMenu[0,1] = "infligge danni \nper colpo\ne rimbalza indietro";
            dHMenu[0,2] = "attraversa tutti \ni nemici\nsulla sua traiettoria";

            dHMenu[1,0] = ""
            dHMenu[1,1] = ""
            dHMenu[1,2] = ""
                           
            dHMenu[2,0] = ""
            dHMenu[2,1] = ""
            dHMenu[2,2] = ""
                           
            dHMenu[3,0] = ""
            dHMenu[3,1] = ""
            dHMenu[3,2] = ""

            /*
            dHMenu[4,0] = "Bounces back at solid objects \n2 times";
            dHMenu[4,1] = "Bounces back at solid objects \n4 times";
            dHMenu[4,2] = "Bounces back at solid objects \n6 times";
            */

                        #endregion
                        #endregion
            #endregion
            break;
    } 
}