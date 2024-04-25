/// @description Insert description here
// You can write your code in this editor
switch(global.language){
	case 0:  /*en*/text = "I have unfinished business here.";break;
	case 1:  /*ru*/text = "У меня здесь незавершенные дела.";break;
	case 2:  /*sp*/text = "Tengo asuntos pendientes aquí.";break;
	case 3:  /*cn*/text = "我这儿还有未完成的事情。";break;
	case 4:  /*pt*/text = "Eu tenho negócios inacabados aqui.";break;
	case 5:  /*br*/text = "Eu tenho negócios inacabados aqui.";break;
	case 6:  /*pl*/text = "Mam tu nieskończone sprawy.";break;
	case 7:  /*jp*/text = "ここには未解決の事があります。";break;
	case 8:  /*de*/text = "Ich habe hier noch nicht abgeschlossene Angelegenheiten.";break;
	case 9:  /*fr*/text = "J'ai des affaires en cours ici.";break;
	case 10: /*it*/text = "Ho delle faccende in sospeso qui.";break;
}
		

if t != 0
{
    t-=0.1;   
    alpha = 1;
}

if t = 0
{
    if alpha !=0 alpha -=0.1;   
}



