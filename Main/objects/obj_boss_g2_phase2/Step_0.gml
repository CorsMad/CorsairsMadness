/// @description Insert description here
// You can write your code in this editor
/*
  0 - вылез справа
  1 - Ожидание
  2 - Плевки справа
  3 - ожидание
  4 - залез назад
  5 - ожидание
  6 - полет в игрока сверху
  7 - ожидание
  8 - полет в игрока сверху1 + удаление яда
  9 - оказывается внизу + рековер 
  10 - закап

  
*/

if (state = 0) { // вылез справа
	x-=2;
	if x <= 448
	{
		x = 448;	
		state = 1;
	}	
}

if (state = 1) { // ожидание
    t++;
	if t = 50
	{
        attack = irandom(1);
		t = 0;
		state = 2;
	}	
	
}
	
if (state = 2) { // Плевки справа
    t++;
    if attack = 0
    {
        switch(t)
    	{
    		case 5:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -18;
                i1.vspd = 0;
                break;
    		case 10:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -11
                i1.vspd = 0;
                break;
    		case 15:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -4;
                i1.vspd = 0;
                break;
            case 100:
                t = 0;state = 3;
                break;            
    	}
    }
    
    if attack = 1
    {
        switch(t)
    	{
    		case 5:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -21.18;
                i1.vspd = 0;
                break;
    		case 10:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -11;
                i1.vspd = 0;
                break;
    		case 15:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = -1.7;
                i1.vspd = 0;
                break;
            case 100:
                t = 0;state = 3;
                break;            
    	}   
    }    
}	
    
if (state = 3) { // ожидание
    t++;
    if t = 50
    {
        t= 0;
        state = 4;
    }
}    

if (state = 4) { // залез назад
    x+=2;
    if x >= 480+32
    {
        state = 5;
    }
}

if (state = 5) { // ожидание
    t++;
    if t = 50
    {
        y = 0;
        x = obj_Player.x;
    }   
    if t = 100
    {
        t = 0;state = 6;   
    }
}
    
if (state = 6) { // Полет в игрока сверху
    y+=6;
    if y > 270+32 {
        state = 7;
    }
}    
    
if (state = 7) { // ожидание
    t++;
    if t = 50
    {
        y = 0;
        x = obj_Player.x;
    }   
    if t = 100
    {
        t = 0;state = 8;   
    }
}
    
if (state = 8) { // Полет сверху2
    y+=6
    {
        if y>= 256
        {
            if instance_exists(obj_boss_g2_phase_poison)
            {
                obj_boss_g2_phase_poison.state = 2;   
            }
            y = 256;
            state = 9;
        }
    }
}    
    
if (state = 9) { // оказывается внизу + рековер
    t++;
    if t = 100
    {
        t = 0;
        state = 10
    }
}    

if (state = 10) { // закоп
    t++;
    if t = 50
    {
        state = 11;
        t = 0;
        x = -48;
        y = 64;
    }
}

if (state = 11) { // вылез слева
	x+=2;
	if x >= 32
	{
		x = 32;	
		state = 12;
	}	
}

if (state = 12) { // ожидание
    t++;
	if t = 50
	{
        attack = irandom(1);
		t = 0;
		state = 13;
	}	
	
}
	
if (state = 13) { // Плевки слева
    t++;
    if attack = 0
    {
        switch(t)
    	{
    		case 5:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 18;
                i1.vspd = 0;
                break;
    		case 10:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 11
                i1.vspd = 0;
                break;
    		case 15:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 4;
                i1.vspd = 0;
                break;
            case 100:
                t = 0;state = 14;
                break;            
    	}
    }
    
    if attack = 1
    {
        switch(t)
    	{
    		case 5:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 19.8;
                i1.vspd = 0;
                break;
    		case 10:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 10.5;
                i1.vspd = 0;
                break;
    		case 15:	
                var i1 = instance_create_depth(x,y,depth-1,obj_boss_g2_phase_poison_phase2);
                i1.hspd = 1.2;
                i1.vspd = 0;
                break;
            case 100:
                t = 0;state = 14;
                break;            
    	}   
    }    
}	
    
if (state = 14) { // ожидание
    t++;
    if t = 50
    {
        t= 0;
        state = 15;
    }
}    

if (state = 15) { // залез назад
    x-=2;
    if x <= -32
    {
        state = 16;
    }
}

if (state = 16) { // ожидание
    t++;
    if t = 50
    {
        y = 0;
        x = obj_Player.x;
    }   
    if t = 100
    {
        t = 0;state = 17;   
    }
}
    
if (state = 17) { // Полет в игрока сверху
    y+=6;
    if y > 270+32 {
        state = 18;
    }
}    
    
if (state = 18) { // ожидание
    t++;
    if t = 50
    {
        y = 0;
        x = obj_Player.x;
    }   
    if t = 100
    {
        t = 0;state = 19;   
    }
}
    
if (state = 19) { // Полет сверху2
    y+=6
    {
        if y>= 256
        {
            if instance_exists(obj_boss_g2_phase_poison)
            {
                obj_boss_g2_phase_poison.state = 2;   
            }
            y = 256;
            state = 20;
        }
    }
}    
    
if (state = 20) { // оказывается внизу + рековер
    t++;
    if t = 100
    {
        t = 0;
        state = 21
    }
}    

if (state = 21) { // закоп
    t++;
    if t = 50
    {
        state = 22;
        t = 0;
    }
}

if (state = 22) {
    t++;
    if t = 50
    {
        state = 0;
        t = 0;
        x = 480+48;
        y = 64;
    }
}