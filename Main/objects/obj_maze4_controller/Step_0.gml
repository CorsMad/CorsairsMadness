/// @description Insert description here
// You can write your code in this editor



if phase = 0 && place_meeting(x,y,obj_hitbox)
{
	phase = 1;
	show_example = 1;
    image_index = 1;
    t = -50;
    obj_maze4_alarm.image_index = 1;
    fnc_snd_play_onetime(snd_bomb_selektor)
}

if phase = 1
{
	if reset = 0
	{
		if show_example = 1
		{
            obj_maze4_alarm.image_index = 2;
			t++;
			switch(t)
			{
				case 50:	obj_maze4_button1.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 100:	obj_maze4_button1.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 150:	obj_maze4_button5.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 200:	obj_maze4_button5.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 250:	obj_maze4_button6.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 300:	obj_maze4_button6.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 350:	
					show_example = 0;
					t = 0;
					obj_maze4_button1.Working = 1;
					obj_maze4_button2.Working = 1;
					obj_maze4_button3.Working = 1;
					obj_maze4_button4.Working = 1;
					obj_maze4_button5.Working = 1;
					obj_maze4_button6.Working = 1;
                    obj_maze4_button1.image_index = 2;
                    obj_maze4_button2.image_index = 2;
                    obj_maze4_button3.image_index = 2;
                    obj_maze4_button4.image_index = 2;
                    obj_maze4_button5.image_index = 2;
                    obj_maze4_button6.image_index = 2;
                    obj_maze4_alarm.image_index = 0;
					break;
			}
		}	
	
		if show_example = 0
		{
			switch(step)
			{
				case 0:	
				if b1 = 1 {step++;fnc_snd_play_onetime(snd_maze_g_on);}
				if (b2=1 || b3=1 || b4=1 || b5=1 || b6=1) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;
				case 1:
				if b5 = 1 {step++;fnc_snd_play_onetime(snd_maze_g_on);}
				if (b2=1 || b3=1 || b4=1 || b6=1) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;
				case 2:
				if b6 = 1	{phase = 1.5;
                            fnc_snd_play_onetime(snd_maze_g_on);
                            t = 0;
							b1 = 0;	
							b2 = 0;	
							b3 = 0;	
							b4 = 0;	
							b5 = 0;	
							b6 = 0;	
							obj_maze4_button1.Working = 0;
							obj_maze4_button2.Working = 0;
							obj_maze4_button3.Working = 0;
							obj_maze4_button4.Working = 0;
							obj_maze4_button5.Working = 0;
							obj_maze4_button6.Working = 0;
							obj_maze4_button1.isOn = 1;
							obj_maze4_button2.isOn = 1;
							obj_maze4_button3.isOn = 1;
							obj_maze4_button4.isOn = 1;
							obj_maze4_button5.isOn = 1;
							obj_maze4_button6.isOn = 1;
							}
				if (b2=1 || b3=1 || b4=1) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;			
			}
		}
	} else if reset = 1
	{
        obj_maze4_alarm.image_index = 1;
		obj_maze4_alarm.state = 1;
		b1 = 0;	
		b2 = 0;	
		b3 = 0;	
		b4 = 0;	
		b5 = 0;	
		b6 = 0;	
        t++;
     
        
        
		obj_maze4_button1.Working = 0;
		obj_maze4_button2.Working = 0;
		obj_maze4_button3.Working = 0;
		obj_maze4_button4.Working = 0;
		obj_maze4_button5.Working = 0;
		obj_maze4_button6.Working = 0;
        obj_maze4_button1.isOn = 0;
        obj_maze4_button2.isOn = 0;
        obj_maze4_button3.isOn = 0;
        obj_maze4_button4.isOn = 0;
        obj_maze4_button5.isOn = 0;
        obj_maze4_button6.isOn = 0;
		
		if t = 50
		{
			obj_maze4_alarm.state = 0;
			step = 0;
			reset = 0;
			show_example = 1;
			t = 0;
		}
	}
}

if phase = 1.5 // перехо на 2 фазу
{
    obj_maze4_alarm.image_index = 2;
    t++;
    switch(t)
    {
        case 50:
            fnc_snd_play_onetime(snd_maze_g_complete1);
            obj_maze4_button1.isOn = 1;
            obj_maze4_button2.isOn = 1;
            obj_maze4_button3.isOn = 1;
            obj_maze4_button4.isOn = 1;
            obj_maze4_button5.isOn = 1;
            obj_maze4_button6.isOn = 1;
            break;
        case 100:
            obj_maze4_button1.isOn = 0;
            obj_maze4_button2.isOn = 0;
            obj_maze4_button3.isOn = 0;
            obj_maze4_button4.isOn = 0;
            obj_maze4_button5.isOn = 0;
            obj_maze4_button6.isOn = 0;
            break;
        case 150:
            fnc_snd_play_onetime(snd_maze_g_complete1);
            obj_maze4_button1.isOn = 1;
            obj_maze4_button2.isOn = 1;
            obj_maze4_button3.isOn = 1;
            obj_maze4_button4.isOn = 1;
            obj_maze4_button5.isOn = 1;
            obj_maze4_button6.isOn = 1;
            break;
        case 200:
            obj_maze4_button1.isOn = 0;
            obj_maze4_button2.isOn = 0;
            obj_maze4_button3.isOn = 0;
            obj_maze4_button4.isOn = 0;
            obj_maze4_button5.isOn = 0;
            obj_maze4_button6.isOn = 0;
            break;
        case 250: 
            show_example=1 ;  
            step=0;
            t=-50;
            phase = 2;
            break;
    }      
}

if phase = 2
{
	if reset = 0
	{
		if show_example = 1
		{
            obj_maze4_alarm.image_index = 2;
			t++;
			switch(t)
			{
				case 50:	obj_maze4_button4.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 90:	obj_maze4_button4.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 130:	obj_maze4_button2.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 170:	obj_maze4_button2.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 210:	obj_maze4_button6.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 250:	obj_maze4_button6.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 290:	obj_maze4_button1.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 330:	obj_maze4_button1.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 370:	
					show_example = 0;
					t = 0;
					obj_maze4_button1.Working = 1;
					obj_maze4_button2.Working = 1;
					obj_maze4_button3.Working = 1;
					obj_maze4_button4.Working = 1;
					obj_maze4_button5.Working = 1;
					obj_maze4_button6.Working = 1;
                    obj_maze4_button1.image_index = 2;
                    obj_maze4_button2.image_index = 2;
                    obj_maze4_button3.image_index = 2;
                    obj_maze4_button4.image_index = 2;
                    obj_maze4_button5.image_index = 2;
                    obj_maze4_button6.image_index = 2;
                    obj_maze4_alarm.image_index = 0;
					break;
			}
		}	
	
		if show_example = 0
		{
			switch(step)
			{
				case 0:	
				if b4 = 1 {step++;fnc_snd_play_onetime(snd_maze_g_on);}
				if (b1=1 || b2=1 || b3=1 || b5=1 || b6=1) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;
				case 1:
				if b2 = 1 {step++;fnc_snd_play_onetime(snd_maze_g_on);}
				if (b1=1 || b3=1 || b5=1 || b6=1) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;
				case 2:
				if b6 = 1 {step++;fnc_snd_play_onetime(snd_maze_g_on);}
				if (b1=1  || b3=1  || b5=1 ) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;			
				case 3:
				if b1 = 1 {t=0;phase = 2.5;
                            fnc_snd_play_onetime(snd_maze_g_on);
							b1 = 0;	
							b2 = 0;	
							b3 = 0;	
							b4 = 0;	
							b5 = 0;	
							b6 = 0;	
							obj_maze4_button1.Working = 0;
							obj_maze4_button2.Working = 0;
							obj_maze4_button3.Working = 0;
							obj_maze4_button4.Working = 0;
							obj_maze4_button5.Working = 0;
							obj_maze4_button6.Working = 0;
							obj_maze4_button1.isOn = 1;
							obj_maze4_button2.isOn = 1;
							obj_maze4_button3.isOn = 1;
							obj_maze4_button4.isOn = 1;
							obj_maze4_button5.isOn = 1;
							obj_maze4_button6.isOn = 1;			
							}
				if ( b3=1 || b5=1 ) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;		
			}
		}
	} else if reset = 1
	{
        obj_maze4_alarm.image_index = 1;
		obj_maze4_alarm.state = 1;
		b1 = 0;	
		b2 = 0;	
		b3 = 0;	
		b4 = 0;	
		b5 = 0;	
		b6 = 0;	
		obj_maze4_button1.Working = 0;
		obj_maze4_button2.Working = 0;
		obj_maze4_button3.Working = 0;
		obj_maze4_button4.Working = 0;
		obj_maze4_button5.Working = 0;
		obj_maze4_button6.Working = 0;
		obj_maze4_button1.isOn = 0;
		obj_maze4_button2.isOn = 0;
		obj_maze4_button3.isOn = 0;
		obj_maze4_button4.isOn = 0;
		obj_maze4_button5.isOn = 0;
		obj_maze4_button6.isOn = 0;
		t++;
		if t = 50
		{
			obj_maze4_alarm.state = 0;
			step = 0;
			reset = 0;
			show_example = 1;
			t = 0;
		}
	}	
}

if phase = 2.5 // перехо на 3 фазу
{
    obj_maze4_alarm.image_index = 2;
    t++;
    switch(t)
    {
        case 50:
            fnc_snd_play_onetime(snd_maze_g_complete1);
            obj_maze4_button1.isOn = 1;
            obj_maze4_button2.isOn = 1;
            obj_maze4_button3.isOn = 1;
            obj_maze4_button4.isOn = 1;
            obj_maze4_button5.isOn = 1;
            obj_maze4_button6.isOn = 1;
            break;
        case 100:
            obj_maze4_button1.isOn = 0;
            obj_maze4_button2.isOn = 0;
            obj_maze4_button3.isOn = 0;
            obj_maze4_button4.isOn = 0;
            obj_maze4_button5.isOn = 0;
            obj_maze4_button6.isOn = 0;
            break;
        case 150:
            fnc_snd_play_onetime(snd_maze_g_complete1);
            obj_maze4_button1.isOn = 1;
            obj_maze4_button2.isOn = 1;
            obj_maze4_button3.isOn = 1;
            obj_maze4_button4.isOn = 1;
            obj_maze4_button5.isOn = 1;
            obj_maze4_button6.isOn = 1;
            break;
        case 200:
            obj_maze4_button1.isOn = 0;
            obj_maze4_button2.isOn = 0;
            obj_maze4_button3.isOn = 0;
            obj_maze4_button4.isOn = 0;
            obj_maze4_button5.isOn = 0;
            obj_maze4_button6.isOn = 0;
            break;
        case 250: 
            show_example=1 ;  
            step=0;
            t=-50;
            phase = 3;
            break;
    }      
}

if phase = 3
{
	if reset = 0
	{
		if show_example = 1
		{
            obj_maze4_alarm.image_index = 2;
			t++;
			switch(t)
			{
				case 50:	obj_maze4_button3.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 75:	obj_maze4_button3.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 100:	obj_maze4_button2.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 125:	obj_maze4_button2.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 150:	obj_maze4_button5.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 175:	obj_maze4_button5.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 200:	obj_maze4_button1.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 225:	obj_maze4_button1.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 250:	obj_maze4_button4.isOn = 1;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 275:	obj_maze4_button4.isOn = 0;fnc_snd_play_onetime(snd_maze_g_on);break;
				case 300:	
					show_example = 0;
					t = 0;
					obj_maze4_button1.Working = 1;
					obj_maze4_button2.Working = 1;
					obj_maze4_button3.Working = 1;
					obj_maze4_button4.Working = 1;
					obj_maze4_button5.Working = 1;
					obj_maze4_button6.Working = 1;
                    obj_maze4_button1.image_index = 2;
                    obj_maze4_button2.image_index = 2;
                    obj_maze4_button3.image_index = 2;
                    obj_maze4_button4.image_index = 2;
                    obj_maze4_button5.image_index = 2;
                    obj_maze4_button6.image_index = 2;
                    obj_maze4_alarm.image_index = 0;
					break;
			}
		}	
	
		if show_example = 0
		{
			switch(step)
			{
				case 0:	
				if b3 = 1 {step++;fnc_snd_play_onetime(snd_maze_g_on);}
				if (b1=1  || b2=1 || b4=1 || b5=1 || b6=1) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;
				case 1:
				if b2 = 1 {step++;fnc_snd_play_onetime(snd_maze_g_on);}
				if (b1=1  || b4=1 || b5=1 || b6=1) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;
				case 2:
				if b5 = 1 {step++;fnc_snd_play_onetime(snd_maze_g_on);}
				if (b1=1  || b4=1 || b6=1) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;	
				case 3:
				if b1 = 1 {step++;fnc_snd_play_onetime(snd_maze_g_on);}
				if (b4=1 || b6=1) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;	
				case 4:
				if b4 = 1 {t=0;phase = 3.5;
                            fnc_snd_play_onetime(snd_maze_g_on);
							b1 = 0;	
							b2 = 0;	
							b3 = 0;	
							b4 = 0;	
							b5 = 0;	
							b6 = 0;	
							obj_maze4_button1.Working = 0;
							obj_maze4_button2.Working = 0;
							obj_maze4_button3.Working = 0;
							obj_maze4_button4.Working = 0;
							obj_maze4_button5.Working = 0;
							obj_maze4_button6.Working = 0;
							obj_maze4_button1.isOn = 1;
							obj_maze4_button2.isOn = 1;
							obj_maze4_button3.isOn = 1;
							obj_maze4_button4.isOn = 1;
							obj_maze4_button5.isOn = 1;
							obj_maze4_button6.isOn = 1;			
							}
				if ( b6 = 1 ) {reset = 1;fnc_snd_play_onetime(snd_maze_g_wrong);}
				break;		
			}
		}
	} else if reset = 1
	{
        obj_maze4_alarm.image_index = 1;
		obj_maze4_alarm.state = 1;
		b1 = 0;	
		b2 = 0;	
		b3 = 0;	
		b4 = 0;	
		b5 = 0;	
		b6 = 0;	
		obj_maze4_button1.Working = 0;
		obj_maze4_button2.Working = 0;
		obj_maze4_button3.Working = 0;
		obj_maze4_button4.Working = 0;
		obj_maze4_button5.Working = 0;
		obj_maze4_button6.Working = 0;
		obj_maze4_button1.isOn = 0;
		obj_maze4_button2.isOn = 0;
		obj_maze4_button3.isOn = 0;
		obj_maze4_button4.isOn = 0;
		obj_maze4_button5.isOn = 0;
		obj_maze4_button6.isOn = 0;
		t++;
		if t = 50
		{
			obj_maze4_alarm.state = 0;
			step = 0;
			reset = 0;
			show_example = 1;
			t = 0;
		}
	}		
}

if phase = 3.5 // перехо на 4 фазу
{
    obj_maze4_alarm.image_index = 2;
    t++;
    switch(t)
    {
        case 50:
            fnc_snd_play_onetime(snd_maze_g_complete1);
            obj_maze4_button1.isOn = 1;
            obj_maze4_button2.isOn = 1;
            obj_maze4_button3.isOn = 1;
            obj_maze4_button4.isOn = 1;
            obj_maze4_button5.isOn = 1;
            obj_maze4_button6.isOn = 1;
            break;
        case 100:
            obj_maze4_button1.isOn = 0;
            obj_maze4_button2.isOn = 0;
            obj_maze4_button3.isOn = 0;
            obj_maze4_button4.isOn = 0;
            obj_maze4_button5.isOn = 0;
            obj_maze4_button6.isOn = 0;
            break;
        case 150:
            fnc_snd_play_onetime(snd_maze_g_complete1);
            obj_maze4_button1.isOn = 1;
            obj_maze4_button2.isOn = 1;
            obj_maze4_button3.isOn = 1;
            obj_maze4_button4.isOn = 1;
            obj_maze4_button5.isOn = 1;
            obj_maze4_button6.isOn = 1;
            break;
        case 200:
            obj_maze4_button1.isOn = 0;
            obj_maze4_button2.isOn = 0;
            obj_maze4_button3.isOn = 0;
            obj_maze4_button4.isOn = 0;
            obj_maze4_button5.isOn = 0;
            obj_maze4_button6.isOn = 0;
            break;
        case 250: 
            show_example=1;  
            step=0;
            t=-50;
            phase = 4;
            break;
    }      
}

if phase = 4 
{
	if t < 55 t++;
	
    if t = 50
    {
        fnc_snd_play_onetime(snd_maze_complete);
        obj_maze4_alarm.image_index = 0;
        obj_maze4_alarm.state = 2;
        obj_maze4_alarm_open.isOn = 1;    
        t = 0;
        phase = 10;
    }
}

if (image_index = 1) {
    t_anim++;
    if t_anim = 1
    {
        instance_create_depth(x,y-12,depth-1,obj_sfx_electricity1);   
    }
    if t_anim = 150
    {
        instance_create_depth(x,y-12,depth-1,obj_sfx_electricity2);           
    }
    if t_anim = 300
    {
        t_anim = 0;   
    }
}
