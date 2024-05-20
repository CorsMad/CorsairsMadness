function fnc_lng_store(){
	sservice = "self\nservice";
    switch(global.language)
    {
        case 0: //eng
            #region eng
            
            confirm = "confirm?";
            confirmy = "yes";
            confirmn = "no";
            
            store = "shop";
            
            
            
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
                dHMenu[0,1] = "Deals damage on hit and bounces back.";
                dHMenu[0,2] = "goes through all the enemies \nin its trajectory.";

                dHMenu[1,0] = "Spins around.\nDeals damage on hit.";
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


            namep_double_strike     = "Передний удар";
            namep_lunge             = "Двусторонний";
            namep_toss_up           = "Круговой удар";
            namep_top_down          = "Три сферы"

            nameb_qhands        = "Проворные руки";
            nameb_dpistol       = "Двойные пистоли";
            nameb_blunderbuss   = "мушкетон";
            nameb_parrotc       = "попугай в клет.";

            name_use = "исп:";
            name_or = "или";

        
			tipWS = "Выбрать:";
			tipBS = "Сменить оружие:";
			
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
                menu[4, 2] = "";//"Rapid fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\n\n\n\n\nназад";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек














                dHMenu[0,0] = "Наносит урон при попадании.";
                dHMenu[0,1] = "Наносит урон при попадании и \nотскакивает обратно.";
                dHMenu[0,2] = "Проходит сквозь всех врагов \nна своем пути.";

                dHMenu[1,0] = "Вращается вокруг. \nНаносит урон при попадании.";
                dHMenu[1,1] = "Вращается вокруг, \nа радиус постепенно увеличивается.";
                dHMenu[1,2] = "Вращается вокруг, \nрадиус постепенно увеличивается. \nПосле взрыва гранаты \nпоявляются еще 2 бомбы.";

                dHMenu[2,0] = "Электрический заряд летит вперед, \nпериодически создавая область \nповреждений.";
                dHMenu[2,1] = "Электрический заряд летит немного \nдальше, периодически создавая \nболее большую область повреждений.";
                dHMenu[2,2] = "Электрический заряд летит по \nтраектории волны, периодически \nсоздавая более большую \nобласть повреждений.";

                dHMenu[3,0] = "Робо-Попугай выстреливает пулей, \nлетящей вперед.";
                dHMenu[3,1] = "Робо-Попугай выстреливает пулей, \nлетящей к ближайшему врагу.";
                dHMenu[3,2] = "Робо-Попугай выстреливает пулей, \nлетящей к ближайшему врагу. \nПри контакте пуля взрывается.";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Выполняет удар рукой вперед \nи наносит большой урон.";
                dPMenu[1,0] = "Выполняет удар руками вперед \nи назад, нанося большой урон.";
                dPMenu[2,0] = "Выполняет круговой удар, нанося \nогромный урон.";
                dPMenu[3,0] = "Запускает 3 шара, которые летят \nк ближайшему врагу.";

                #endregion

                #region Лодка


                dBMenu[0,0] = "Делает 2 быстрых выстрела подряд.";
                dBMenu[0,1] = "Делает 3 быстрых выстрела подряд.";
                dBMenu[0,2] = "Делает 3 быстрых выстрела подряд. \nТретья пуля усилена.";
  
                dBMenu[1,0] = "Стрельба из двух пистолетов \nодновременно.";
                dBMenu[1,1] = "Стрельба из двух пистолетов \nодновременно. Пули наносят \nбольше урона.";
                dBMenu[1,2] = "Стрельба из двух пистолетов \nодновременно. Пули наносят \nогромный урон.";
 
                dBMenu[2,0] = "Мушкетон стреляет 3 пулями в разброс.";
                dBMenu[2,1] = "Мушкетон стреляет 4 пулями в разброс.";
                dBMenu[2,2] = "Мушкетон стреляет 5 пулями в разброс.";
 
                dBMenu[3,0] = "Робо-попугай летит к ближайшему \nврагу и наносит урон.";
                dBMenu[3,1] = "Робо-попугай летит к ближайшему \nврагу и наносит больше урона.";
                dBMenu[3,2] = "Робо-попугай летит к ближайшему \nврагу и взрывается при контакте.";
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

            namep_double_strike     = "golpe frontal";
            namep_lunge             = "doble-lado";
            namep_toss_up           = "golpe redondo";
            namep_top_down          = "tres esferas"

            nameb_qhands        = "manos rápidas";
            nameb_dpistol       = "pistola doble";
            nameb_blunderbuss   = "trabuco";
            nameb_parrotc       = "loro";

            name_use = "usar:";
            name_or = "/";
	
	

			tipWS = "seleccionar:";
			tipBS = "cambiar arma:";
            
            
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
                menu[4, 2] = "";//"Double fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\natrás";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек

								
                dHMenu[0,0] = "Inflige daño al golpear.";
                dHMenu[0,1] = "Inflige daño al golpear \ny rebota.";
                dHMenu[0,2] = "Atraviesa a todos los \nenemigos en su trayectoria.";

                dHMenu[1,0] = "Gira alrededor.\nInflige daño al golpear.";
                dHMenu[1,1] = "Gira alrededor y el radio \naumenta gradualmente.";
                dHMenu[1,2] = "Gira alrededor, el radio \naumenta gradualmente. \nAparecen 2 bombas más después \nde la explosión de la granada.";

                dHMenu[2,0] = "La carga eléctrica vuela \nhacia adelante, creando periódicamente \nun área de daño.";
                dHMenu[2,1] = "La carga eléctrica vuela \nun poco más lejos, creando \nperiódicamente un área de daño mayor.";
                dHMenu[2,2] = "La carga eléctrica vuela \nen una trayectoria de onda, creando \nperiódicamente un área de daño mayor.";

                dHMenu[3,0] = "El Robo Loro dispara una bala \nque vuela hacia adelante.";
                dHMenu[3,1] = "El Robo Loro dispara una bala \nque vuela hacia el enemigo \nmás cercano.";
                dHMenu[3,2] = "El Robo Loro dispara una bala \nque vuela hacia el enemigo \nmás cercano. Al contacto, \nla bala explota.";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый


                dPMenu[0,0] = "Se lanza con su brazo hacia adelante \ne inflige mucho daño.";
                dPMenu[1,0] = "Se lanza con sus brazos de atrás \nhacia adelante, infligiendo \nun gran daño.";
                dPMenu[2,0] = "Realiza un golpe redondo, infligiendo \nenormes cantidades de daño.";
                dPMenu[3,0] = "Lanza 3 orbes que vuelan hacia \nel enemigo más cercano.";

                #endregion

                #region Лодка



                dBMenu[0,0] = "Dispara 2 tiros rápidos en fila.";
                dBMenu[0,1] = "Dispara 3 tiros rápidos en fila.";
                dBMenu[0,2] = "Dispara 3 tiros rápidos en fila. \nLa tercera bala está reforzada.";
  
                dBMenu[1,0] = "Dispara 2 pistolas al mismo tiempo.";
                dBMenu[1,1] = "Dispara 2 pistolas al mismo tiempo. \nLas balas hacen más daño.";
                dBMenu[1,2] = "Dispara 2 pistolas al mismo tiempo. \nLas balas infligen un daño masivo.";
 
                dBMenu[2,0] = "La escopeta dispara 3 balas \nen un esparcimiento.";
                dBMenu[2,1] = "La escopeta dispara 4 balas \nen un esparcimiento.";
                dBMenu[2,2] = "La escopeta dispara 5 balas \nen un esparcimiento.";
 
                dBMenu[3,0] = "El robo-loro vuela hacia el enemigo \nmás cercano e inflige daño.";
                dBMenu[3,1] = "El robo-loro vuela hacia el enemigo \nmás cercano e inflige más daño.";
                dBMenu[3,2] = "El robo-loro vuela hacia el enemigo \nmás cercano y explota al tocarlo.";
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
 
           
			tipWS = "择:";
			tipBS = "换武器:";
			
            nameh_anchor    =  "锚";
            nameh_grenade   =  "手榴弹";
            nameh_shockball =  "震撼球";
            nameh_parrot    =  "鹦鹉";


            namep_double_strike     = "面打击";
            namep_lunge             = "面攻击";
            namep_toss_up           = "形打击";
            namep_top_down          = "球攻击"

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
                menu[4, 2] = "";//"Double fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\n回去";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек


                dHMenu[0,0] = "中时造成伤害。";
                dHMenu[0,1] = "中时造成伤害并反弹。";
                dHMenu[0,2] = "越其轨迹上的所有敌人。";

                dHMenu[1,0] = "转。命中时造成伤害。";
                dHMenu[1,1] = "旋转并且半径逐渐增加。";
                dHMenu[1,2] = "旋转，半径逐渐增加。榴弹爆炸后出现 2 个额外的炸弹。";

                dHMenu[2,0] = "电荷向前飞行，定期产生破坏范围。";
                dHMenu[2,1] = "电荷飞行稍微远一点，定期创建更大的损坏区域。";
                dHMenu[2,2] = "电荷以波纹轨迹飞行，定期创建更大的破坏范围。";

                dHMenu[3,0] = "机器鹦鹉发射一颗向前飞行的子弹。";
                dHMenu[3,1] = "机器鹦鹉向最近的敌人发射子弹。";
                dHMenu[3,2] = "机器鹦鹉向最近的敌人发射子弹。子弹接触时爆炸。";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый




                dPMenu[0,0] = "远向前冲的手臂造成大量伤害。";
                dPMenu[1,0] = "手臂来回猛冲，造成重大伤害。";
                dPMenu[2,0] = "发起一次圆形攻击，造成大量伤害。";
                dPMenu[3,0] = "发射3个能量球飞向最近的敌人。";

                #endregion

                #region Лодка


                dBMenu[0,0] = "连续射击两枪。";
                dBMenu[0,1] = "连续快速射击三枪。";
                dBMenu[0,2] = "连续快速射击三枪，第三颗子弹得到加强。";
  
                dBMenu[1,0] = "同时开火两把手枪。";
                dBMenu[1,1] = "同时开火两把手枪。子弹造成更多的伤害。";
                dBMenu[1,2] = "同时开火两把手枪。子弹造成大量伤害。";
 
                dBMenu[2,0] = "短管猎枪以扩散方式发射3颗子弹。";
                dBMenu[2,1] = "短管猎枪以扩散方式发射4颗子弹。";
                dBMenu[2,2] = "短管猎枪以扩散方式发射5颗子弹。";
 
                dBMenu[3,0] = "机器鹦鹉飞向最近的敌人并造成伤害。";
                dBMenu[3,1] = "机器鹦鹉飞向最近的敌人并造成更多伤害。";
                dBMenu[3,2] = "机器鹦鹉飞向最近的敌人，触碰后爆炸。";
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
         
			tipWS = "selecionar:";
			tipBS = "trocar arma:";
			
            store = "loja";
            
            nameh_anchor    =  "âncora";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de choque";
            nameh_parrot    =  "papagaio";

            namep_double_strike     = "golpe frontal";
            namep_lunge             = "duplo-lado";
            namep_toss_up           = "golpe redondo";
            namep_top_down          = "três esferas"

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
                menu[4, 2] = "";//"Double fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\nvoltar";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек


                dHMenu[0,0] = "Causa dano ao acertar.";
                dHMenu[0,1] = "Causa dano ao acertar e rebate.";
                dHMenu[0,2] = "Percorre todos os inimigos \nem sua trajetória.";

                dHMenu[1,0] = "Gira em torno. Causa dano ao acertar.";
                dHMenu[1,1] = "Gira em torno e o raio aumenta \ngradualmente.";
                dHMenu[1,2] = "Gira em torno, o raio aumenta \ngradualmente. 2 bombas adicionais \naparecem após a explosão da granada.";

                dHMenu[2,0] = "A carga elétrica voa para a frente, \ncriando periodicamente \numa área de dano.";
                dHMenu[2,1] = "A carga elétrica voa um pouco mais \nlonge, criando periodicamente \numa área de dano maior.";
                dHMenu[2,2] = "A carga elétrica voa em uma \ntrajetória de onda, criando \nperiodicamente uma área de dano maior.";

                dHMenu[3,0] = "Robo Papagaio dispara uma bala \nque voa para a frente.";
                dHMenu[3,1] = "Robo Papagaio dispara uma bala \nque voa em direção ao inimigo \nmais próximo.";
                dHMenu[3,2] = "Robo Papagaio dispara uma bala \nque voa em direção ao inimigo \nmais próximo. Ao contato, \na bala explode.";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый


                dPMenu[0,0] = "Avança o braço para frente e causa \nmuito dano.";
                dPMenu[1,0] = "Avança seus braços para trás e para \nfrente, causando grande dano.";
                dPMenu[2,0] = "Faz um golpe redondo, causando \ngrandes quantidades de dano.";
                dPMenu[3,0] = "Lança 3 orbes que voam em direção \nao inimigo mais próximo.";

                #endregion

                #region Лодка


                dBMenu[0,0] = "Dispara 2 tiros rápidos seguidos.";
                dBMenu[0,1] = "Dispara 3 tiros rápidos seguidos.";
                dBMenu[0,2] = "Dispara 3 tiros rápidos seguidos. \nA terceira bala é reforçada.";
  
                dBMenu[1,0] = "Dispara 2 pistolas ao mesmo tempo.";
                dBMenu[1,1] = "Dispara 2 pistolas ao mesmo tempo. \nAs balas causam mais dano.";
                dBMenu[1,2] = "Dispara 2 pistolas ao mesmo tempo. \nAs balas causam um dano enorme.";
 
                dBMenu[2,0] = "Blunderbuss dispara 3 balas \nem um spread.";
                dBMenu[2,1] = "Blunderbuss dispara 4 balas \nem um spread.";
                dBMenu[2,2] = "Blunderbuss dispara 5 balas \nem um spread.";
 
                dBMenu[3,0] = "O robo-papagaio voa em direção \nao inimigo mais próximo \ne causa dano.";
                dBMenu[3,1] = "O robo-papagaio voa em direção \nao inimigo mais próximo \ne causa mais dano.";
                dBMenu[3,2] = "O robo-papagaio voa em direção \nao inimigo mais próximo \ne explode ao toque.";
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
		
			tipWS = "selecionar:";
			tipBS = "trocar de arma:"; 
	
            store = "loja";
            
            nameh_anchor    =  "âncora";
            nameh_grenade   =  "granada";
            nameh_shockball =  "bola de choque";
            nameh_parrot    =  "papagaio";


            namep_double_strike     = "ataque frontal";
            namep_lunge             = "duplo-lado";
            namep_toss_up           = "ataque redondo";
            namep_top_down          = "três esferas"

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
                menu[4, 2] = "";//"Double fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\nsair";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек


                dHMenu[0,0] = "Causa dano ao acertar.";
                dHMenu[0,1] = "Causa dano ao acertar e ricocheteia.";
                dHMenu[0,2] = "Atravessa todos os inimigos \nem sua trajetória.";

                dHMenu[1,0] = "Gira em volta. Causa dano ao acertar.";
                dHMenu[1,1] = "Gira em volta e o raio aumenta \ngradualmente.";
                dHMenu[1,2] = "Gira ao redor, o raio aumenta \ngradualmente. Mais 2 bombas aparecem \napós a explosão da granada.";

                dHMenu[2,0] = "A carga elétrica voa para a frente, \ncriando periodicamente \numa área de dano.";
                dHMenu[2,1] = "A carga elétrica voa um pouco \nmais longe, criando periodicamente \numa área de dano maior.";
                dHMenu[2,2] = "A carga elétrica voa numa trajetória \nde onda, criando periodicamente \numa área de dano maior.";

                dHMenu[3,0] = "O Robo Papagaio dispara uma bala \nque voa para a frente.";
                dHMenu[3,1] = "O Robo Papagaio dispara uma bala \nque voa em direção \nao inimigo mais próximo.";
                dHMenu[3,2] = "O Robo Papagaio dispara uma bala \nque voa em direção \nao inimigo mais próximo. \nAo contato, a bala explode.";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Estende o braço para a frente e causa \nmuito dano.";
                dPMenu[1,0] = "Lança os braços para a frente e para \ntrás, causando grande dano.";
                dPMenu[2,0] = "Faz um golpe circular, causando uma \ngrande quantidade de dano.";
                dPMenu[3,0] = "Lança 3 orbes que voam em direção ao \ninimigo mais próximo.";

                #endregion

                #region Лодка


                dBMenu[0,0] = "Dispara 2 tiros rápidos seguidos.";
                dBMenu[0,1] = "Dispara 3 tiros rápidos seguidos.";
                dBMenu[0,2] = "Dispara 3 tiros rápidos seguidos. \nA terceira bala é reforçada.";
  
                dBMenu[1,0] = "Dispara 2 pistolas ao mesmo tempo.";
                dBMenu[1,1] = "Dispara 2 pistolas ao mesmo tempo. \nAs balas causam mais dano.";
                dBMenu[1,2] = "Dispara 2 pistolas ao mesmo tempo. \nAs balas causam um enorme dano";
 
                dBMenu[2,0] = "A espingarda de cano largo dispara \n3 balas numa distribuição.";
                dBMenu[2,1] = "A espingarda de cano largo dispara \n4 balas numa distribuição.";
                dBMenu[2,2] = "A espingarda de cano largo dispara \n5 balas numa distribuição.";
 
                dBMenu[3,0] = "O robo-papagaio voa em direção \nao inimigo mais próximo \ne causa dano.";
                dBMenu[3,1] = "O robo-papagaio voa em direção \nao inimigo mais próximo \ne causa mais dano.";
                dBMenu[3,2] = "O robo-papagaio voa em direção \nao inimigo mais próximo \ne explode ao contato.";
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
		
			tipWS = "wybierz:";
			tipBS = "zmień broń:"; 
			
            store = "Sklep";
            
            nameh_anchor    =  "kotwic";
            nameh_grenade   =  "granat";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "papuga";

            namep_double_strike     = "uderzenie od frontu";
            namep_lunge             = "podwójna strona";
            namep_toss_up           = "uderzenie okrężne";
            namep_top_down          = "trzy sfery"

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
                menu[4, 2] = "";//"Double fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\nPowrót";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек


                dHMenu[0,0] = "Zadaje obrażenia przy trafieniu.";
                dHMenu[0,1] = "Zadaje obrażenia przy uderzeniu \ni odbija się.";
                dHMenu[0,2] = "Przejmuje przez wszystkich wrogów \nna swojej trajektorii.";

                dHMenu[1,0] = "Kręci się wokół. Zadaje obrażenia \nprzy trafieniu.";
                dHMenu[1,1] = "Kręci się wokół, a promień stopniowo \nzwiększa się.";
                dHMenu[1,2] = "Kręci się wokół, promień stopniowo \nzwiększa się. Po eksplozji \ngranatu pojawiają się \n2 dodatkowe bomby.";

                dHMenu[2,0] = "Elektryczny ładunek leci naprzód, \nokresowo tworząc obszar uszkodzeń.";
                dHMenu[2,1] = "Elektryczny ładunek leci trochę \ndalej, okresowo tworząc większy \nobszar uszkodzeń.";
                dHMenu[2,2] = "Elektryczny ładunek leci po \ntrajektorii fali, okresowo tworząc \nwiększy obszar uszkodzeń.";

                dHMenu[3,0] = "Robo Papuga strzela pociskiem \nlecącym do przodu.";
                dHMenu[3,1] = "Robo Papuga strzela pociskiem \nlecącym w stronę najbliższego wroga.";
                dHMenu[3,2] = "Robo Papuga strzela pociskiem \nlecącym w stronę najbliższego wroga. \nPocisk eksploduje przy kontakcie.";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Rzuca swoje ramię daleko do przodu \ni zadaje dużo obrażeń.";
                dPMenu[1,0] = "Rzuca swoje ręce tam i z powrotem, \nzadając ciężkie obrażenia.";
                dPMenu[2,0] = "Wykonuje okrężne uderzenie, zadając \nogromne ilości obrażeń.";
                dPMenu[3,0] = "Wysyła 3 kule, które lecą w kierunku \nnajbliższego wroga.";

                #endregion

                #region Лодка


                dBMenu[0,0] = "Wystrzeliwuje 2 szybkie strzały \npod rząd.";
                dBMenu[0,1] = "Wystrzeliwuje 3 szybkie strzały \npod rząd.";
                dBMenu[0,2] = "Wystrzeliwuje 3 szybkie strzały \npod rząd. Trzeci pocisk \njest wzmocniony.";
  
                dBMenu[1,0] = "Strzela z dwóch pistoletów \njednocześnie.";
                dBMenu[1,1] = "Strzela z dwóch pistoletów \njednocześnie. Pociski zadają \nwięcej obrażeń.";
                dBMenu[1,2] = "Strzela z dwóch pistoletów \njednocześnie. Pociski zadają \nogromne obrażenia.";
 
                dBMenu[2,0] = "Muszkiet strzela 3 pociskami \nna roztaczanie.";
                dBMenu[2,1] = "Muszkiet strzela 4 pociskami \nna roztaczanie.";
                dBMenu[2,2] = "Muszkiet strzela 5 pociskami \nna roztaczanie.";
 
                dBMenu[3,0] = "Robo-papuga leci w kierunku \nnajbliższego wroga \ni zadaje obrażenia.";
                dBMenu[3,1] = "Robo-papuga leci w kierunku \nnajbliższego wroga \ni zadaje więcej obrażeń.";
                dBMenu[3,2] = "Robo-papuga leci w kierunku \nnajbliższego wroga \ni eksploduje na dotyk.";
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
            confirmy = "イエス";
            confirmn = "いいえ";
		
            tipWS = "選択:";
			tipBS = "武器切り替え:"; 
			
            store = "店";
            
            nameh_anchor    =  "アンカー";
            nameh_grenade   =  "手榴弾";
            nameh_shockball =  "ショックボール";
            nameh_parrot    =  "オウム";


            namep_double_strike     = "前方ストライク";
            namep_lunge             = "両面";
            namep_toss_up           = "ラウンドストライク";
            namep_top_down          = "スリースフィア"

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
                menu[4, 2] = "";//"Double fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\nバック";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек


                dHMenu[0,0] = "ヒット時にダメージを与えます。";
                dHMenu[0,1] = "ヒット時にダメージを与え、\n跳ね返ります。";
                dHMenu[0,2] = "その軌道上のすべての敵を通過します。";

                dHMenu[1,0] = "周りを回転します。ヒット時にダメージを与えます。";
                dHMenu[1,1] = "回転し、半径が徐々に増加します。";
                dHMenu[1,2] = "周りを回転し、半径が徐々に増加します。手榴弾の爆発後、\nさらに2つの爆弾が現れます。";

                dHMenu[2,0] = "電気充電が前方に飛び、\n周期的にダメージエリアを作り出します。";
                dHMenu[2,1] = "電気充電がもう少し遠くへ飛び、\n周期的により大きなダメージエリアを作り出します。";
                dHMenu[2,2] = "電気充電が波の軌道で飛び、\n周期的により大きなダメージのエリアを作成します。";

                dHMenu[3,0] = "ロボパロットが前方に飛ぶ弾丸を発射します。";
                dHMenu[3,1] = "ロボパロットが弾を発射。\n一番近い敵に向かって飛ぶ。";
                dHMenu[3,2] = "ロボパロットが弾を発射。\n一番近い敵に向かって飛ぶ。接触すると \n弾丸が爆発する。";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "遠くの前方に腕を突っ込み、大量のダメージを与えます。";
                dPMenu[1,0] = "彼の腕を前後に突き刺し、大ダメージを与えます。";
                dPMenu[2,0] = "ラウンドストライクを行い、大量のダメージを与えます。";
                dPMenu[3,0] = "最も近い敵に向かって3つのオーブを発射します。";

                #endregion

                #region Лодка




                dBMenu[0,0] = "2発の速射を連続で発射します。";
                dBMenu[0,1] = "3発の速射を連続で発射します。";
                dBMenu[0,2] = "3発の速射を連続で発射します。\n3つ目の弾は強化されています。";
  
                dBMenu[1,0] = "同時に2つのピストルを発射します。";
                dBMenu[1,1] = "同時に2つのピストルを発射します。\n弾はより大きなダメージを与えます。";
                dBMenu[1,2] = "同時に2つのピストルを発射します。\n弾は大ダメージを与えます。";
 
                dBMenu[2,0] = "ブランダバスはスプレッドで3発の弾丸を発射します。";
                dBMenu[2,1] = "ブランダバスはスプレッドで4発の弾丸を発射します。";
                dBMenu[2,2] = "ブランダバスはスプレッドで5発の弾丸を発射します。";
 
                dBMenu[3,0] = "ロボパロットが最も近い敵に飛んで行き、\nダメージを与えます。";
                dBMenu[3,1] = "ロボパロットが最も近い敵に飛んで行き、\nより大きなダメージを与えます。";
                dBMenu[3,2] = "ロボパロットが最も近い敵に飛んで行き、\n接触時に爆発します。";
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

			tipWS = "Auswählen:";
			tipBS = "Waffe wechseln:"; 
			
            store = "Laden";
            
            nameh_anchor    =  "Anker";
            nameh_grenade   =  "Granate";
            nameh_shockball =  "Schockball";
            nameh_parrot    =  "Papagei";

            namep_double_strike     = "Frontaler Angriff";
            namep_lunge             = "Doppelseite";
            namep_toss_up           = "Rundschlag";
            namep_top_down          = "Drei Kugeln"

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
                menu[4, 2] = "";//"Double fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\nzurück";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек


                dHMenu[0,0] = "Verursacht Schaden bei Treffer.";
                dHMenu[0,1] = "Verursacht Schaden bei Treffer \nund prallt zurück.";
                dHMenu[0,2] = "Geht durch alle Feinde auf seiner \nFlugbahn durch.";

                dHMenu[1,0] = "Dreht sich. Verursacht Schaden \nbei Treffer.";
                dHMenu[1,1] = "Dreht sich und der Radius nimmt \nallmählich zu.";
                dHMenu[1,2] = "Dreht sich, Radius nimmt allmählich zu. \nNach der Granatenexplosion erscheinen \n2 weitere Bomben.";

                dHMenu[2,0] = "Die elektrische Ladung fliegt \nvorwärts und erzeugt periodisch \neinen Schadensbereich.";
                dHMenu[2,1] = "Die elektrische Ladung fliegt \netwas weiter und erzeugt periodisch \neinen größeren Schadensbereich.";
                dHMenu[2,2] = "Die elektrische Ladung fliegt \nin einer Wellentrajektorie \nund erzeugt periodisch einen \ngrößeren Schadensbereich.";

                dHMenu[3,0] = "Robo Papagei feuert eine Kugel, \ndie nach vorne fliegt.";
                dHMenu[3,1] = "Robo Papagei feuert eine Kugel, \ndie auf den nächstgelegenen \nFeind fliegt.";
                dHMenu[3,2] = "Robo Papagei feuert eine Kugel, \ndie auf den nächstgelegenen \nFeind fliegt. Bei Kontakt \nexplodiert die Kugel.";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Stößt seinen Arm weit nach vorne \nund verursacht viel Schaden.";
                dPMenu[1,0] = "Stößt seine Arme vor und zurück \nund verursacht schweren Schaden.";
                dPMenu[2,0] = "Führt einen Rundschlag aus, \nder massive Schadensmengen verursacht.";
                dPMenu[3,0] = "Schießt 3 Kugeln ab, die auf den \nnächstgelegenen Feind fliegen.";

                #endregion

                #region Лодка


                dBMenu[0,0] = "Feuert 2 schnelle Schüsse \nnacheinander ab.";
                dBMenu[0,1] = "Feuert 3 schnelle Schüsse \nnacheinander ab.";
                dBMenu[0,2] = "Feuert 3 schnelle Schüsse \nnacheinander ab. \nDie dritte Kugel ist verstärkt.";
  
                dBMenu[1,0] = "Feuert gleichzeitig 2 Pistolen ab.";
                dBMenu[1,1] = "Feuert gleichzeitig 2 Pistolen ab. \nKugeln verursachen mehr Schaden.";
                dBMenu[1,2] = "Feuert gleichzeitig 2 Pistolen ab. \nKugeln verursachen massiven Schaden";
 
                dBMenu[2,0] = "Die Donnerbüchse feuert 3 Kugeln \nin einer Streuung ab.";
                dBMenu[2,1] = "Die Donnerbüchse feuert 4 Kugeln \nin einer Streuung ab.";
                dBMenu[2,2] = "Die Donnerbüchse feuert 5 Kugeln \nin einer Streuung ab.";
 
                dBMenu[3,0] = "Der Robo-Papagei fliegt auf \nden nächstgelegenen Feind zu \nund verursacht Schaden.";
                dBMenu[3,1] = "Der Robo-Papagei fliegt auf \nden nächstgelegenen Feind zu \nund verursacht mehr Schaden.";
                dBMenu[3,2] = "Der Robo-Papagei fliegt auf \nden nächstgelegenen Feind zu \nund explodiert bei Berührung.";
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
            
			tipWS = "sélectionner:";
			tipBS = "changer d'arme:"; 

            store = "boutique";
            
            nameh_anchor    =  "ancre";
            nameh_grenade   =  "grenade";
            nameh_shockball =  "balle de choc";
            nameh_parrot    =  "perroquet";

            namep_double_strike     = "coup de front";
            namep_lunge             = "double-face";
            namep_toss_up           = "coup rond";
            namep_top_down          = "trois sphères"

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
                menu[4, 2] = "";//"Double fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\nretour";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек


                dHMenu[0,0] = "Inflige des dégâts à l'impact.";
                dHMenu[0,1] = "Inflige des dégâts à l'impact \net rebondit.";
                dHMenu[0,2] = "Traverse tous les ennemis \nsur sa trajectoire.";

                dHMenu[1,0] = "Tourne autour. Inflige des dégâts \nà l'impact.";
                dHMenu[1,1] = "Tourne autour et le rayon \naugmente progressivement.";
                dHMenu[1,2] = "Tourne autour, le rayon \naugmente progressivement. 2 bombes \nsupplémentaires apparaissent après \nl'explosion de la grenade.";

                dHMenu[2,0] = "La charge électrique avance, \ncréant périodiquement une zone \nde dégâts.";
                dHMenu[2,1] = "La charge électrique vole un peu \nplus loin, créant périodiquement \nune zone de dégâts plus grande.";
                dHMenu[2,2] = "La charge électrique vole en une \ntrajectoire en forme de vague, créant \npériodiquement une zone de dégâts \nplus grande.";

                dHMenu[3,0] = "Le Perroquet Robot tire une balle \nqui vole vers l'avant.";
                dHMenu[3,1] = "Le Perroquet Robot tire une balle \nvolant vers l'ennemi le plus proche.";
                dHMenu[3,2] = "Le Perroquet Robot tire une balle \nvolant vers l'ennemi le plus proche. \nAu contact, la balle explose.";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый

                dPMenu[0,0] = "Il lance son bras loin devant \net inflige beaucoup de dégâts.";
                dPMenu[1,0] = "Il lance ses bras en avant et \nen arrière, infligeant de lourds \ndégâts.";
                dPMenu[2,0] = "Effectue un coup rond, infligeant \ndes dégâts massifs.";
                dPMenu[3,0] = "Lance 3 orbes qui volent vers l'ennemi \nle plus proche.";

                #endregion

                #region Лодка


                dBMenu[0,0] = "Tire rapidement 2 coups d'affilée.";
                dBMenu[0,1] = "Tire rapidement 3 coups d'affilée.";
                dBMenu[0,2] = "Tire rapidement 3 coups d'affilée. \nLa troisième balle est renforcée.";
  
                dBMenu[1,0] = "Tire avec 2 pistolets en même temps.";
                dBMenu[1,1] = "Tire avec 2 pistolets en même temps. \nLes balles font plus de dégâts.";
                dBMenu[1,2] = "Tire avec 2 pistolets en même temps. \nLes balles font des dégâts massifs.";
 
                dBMenu[2,0] = "Le tromblon tire 3 balles en éventail.";
                dBMenu[2,1] = "Le tromblon tire 4 balles en éventail.";
                dBMenu[2,2] = "Le tromblon tire 5 balles en éventail.";
 
                dBMenu[3,0] = "Le perroquet robot vole vers l'ennemi \nle plus proche et inflige des dégâts.";
                dBMenu[3,1] = "Le perroquet robot vole vers l'ennemi \nle plus proche et inflige \nplus de dégâts.";
                dBMenu[3,2] = "Le perroquet robot vole vers l'ennemi \nle plus proche et explose au contact.";
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
            

			tipWS = "seleziona:";
			tipBS = "cambia arma:";
			
            store = "negozio";
            
            nameh_anchor    =  "Ancora";
            nameh_grenade   =  "granata";
            nameh_shockball =  "shockball";
            nameh_parrot    =  "pappagallo";

            namep_double_strike     = "colpo frontale";
            namep_lunge             = "doppio lato";
            namep_toss_up           = "colpo rotondo";
            namep_top_down          = "tre sfere"

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
                menu[4, 2] = "";//"Double fire";
                menu[4, 3] = "";//"Double fire";
                menu[4, 4] = "\n\n\n\n\n\n\nTorna";//"blunderbuss";
                #endregion

            #region Описания 

                #region Человек


                dHMenu[0,0] = "Infligge danni quando colpisce.";
                dHMenu[0,1] = "Infligge danni quando colpisce \ne rimbalza indietro.";
                dHMenu[0,2] = "Attraversa tutti i nemici \nnella sua traiettoria.";

                dHMenu[1,0] = "Gira intorno. Infligge danni \nquando colpisce.";
                dHMenu[1,1] = "Gira intorno e il raggio \naumenta gradualmente.";
                dHMenu[1,2] = "Gira intorno, il raggio \naumenta gradualmente. Dopo l'esplosione \ndella granata appaiono altre 2 bombe.";

                dHMenu[2,0] = "La carica elettrica vola in avanti, \ncreando periodicamente un'area \ndi danno.";
                dHMenu[2,1] = "La carica elettrica vola un po' più \nlontano, creando periodicamente un'area \ndi danno più grande.";
                dHMenu[2,2] = "La carica elettrica vola in una \ntraiettoria ad onda, creando \nperiodicamente un'area \ndi danno più grande.";

                dHMenu[3,0] = "Robo Pappagallo spara un proiettile \nche vola in avanti.";
                dHMenu[3,1] = "Robo Pappagallo spara un proiettile \nche vola verso il nemico più vicino.";
                dHMenu[3,2] = "Robo Pappagallo spara un proiettile \nche vola verso il nemico più vicino. \nA contatto, il proiettile esplode.";


                dHMenu[4,0] = "";
                dHMenu[4,1] = "";
                dHMenu[4,2] = "";


                #endregion

                #region Одержимый


                dPMenu[0,0] = "Si lancia con il braccio in avanti \ne fa molti danni.";
                dPMenu[1,0] = "Fa oscillare le braccia avanti \ne indietro, infliggendo pesanti danni.";
                dPMenu[2,0] = "Esegue un colpo rotondo, infliggendo \nenormi quantità di danni.";
                dPMenu[3,0] = "Lancia 3 sfere che volano verso \nil nemico più vicino.";

                #endregion

                #region Лодка


                dBMenu[0,0] = "Spara 2 colpi veloci di fila.";
                dBMenu[0,1] = "Spara 3 colpi veloci di fila.";
                dBMenu[0,2] = "Spara 3 colpi veloci di fila. \nIl terzo proiettile è rinforzato.";
  
                dBMenu[1,0] = "Spara 2 pistole contemporaneamente.";
                dBMenu[1,1] = "Spara 2 pistole contemporaneamente. \nI proiettili fanno più danni.";
                dBMenu[1,2] = "Spara 2 pistole contemporaneamente. \nI proiettili infliggono danni massicci.";
 
                dBMenu[2,0] = "Il moschetto spara 3 proiettili \nin una dispersione.";
                dBMenu[2,1] = "Il moschetto spara 4 proiettili \nin una dispersione.";
                dBMenu[2,2] = "Il moschetto spara 5 proiettili \nin una dispersione.";
 
                dBMenu[3,0] = "Il robopappagallo vola contro \nil nemico più vicino e infligge danni.";
                dBMenu[3,1] = "Il robopappagallo vola contro \nil nemico più vicino e infligge \npiù danni.";
                dBMenu[3,2] = "Il robopappagallo vola contro \nil nemico più vicino ed esplode \nal tocco.";
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