/// @description Insert description here
// You can write your code in this editor

player_input();

#region Начало
if page = 0
{
    t++;
    if t = 50 {t = 0;page = 1;}
}
#endregion

#region Страница1
if page = 1
{
    text = page1;
    t++;
    switch(t)
    {
        case 220: alpha = 0.25;break;
        case 230: alpha = 0.5;break;
        case 240: alpha = 0.75;break;
        case 250: alpha = 1;break;
        case 795: alpha = 0.75;break;
        case 805: alpha = 0.5;break;
        case 815: alpha = 0.25;break;
        case 825: alpha = 0;break;
        case 850: 
            t = 0;
            page = 2;
            break;         
    }
}

#endregion

#region Страница2
if page = 2
{
    text = page2;
    t++;
    switch(t)
    {
        case 70: alpha = 0.25;break;
        case 80: alpha = 0.5;break;
        case 90: alpha = 0.75;break;
        case 100: alpha = 1;break;
        case 495: alpha = 0.75;break;
        case 505: alpha = 0.5;break;
        case 515: alpha = 0.25;break;
        case 525: alpha = 0;break;
        case 550: 
            t = 0;
            page = 3;
            break;
    }
}
#endregion

#region Страница3
if page = 3
{
    text = page3;
    t++;
    switch(t)
    {
        case 70: alpha = 0.25;break;
        case 80: alpha = 0.5;break;
        case 90: alpha = 0.75;break;
        case 100: alpha = 1;break;
        case 795: alpha = 0.75;break;
        case 805: alpha = 0.5;break;
        case 815: alpha = 0.25;break;
        case 825: alpha = 0;break;
        case 850: 
            t = 0;
            page = 4;
            break;
    }
}
#endregion

#region Страница4
if page = 4
{
    text = page4;
    t++;
    switch(t)
    {
        case 70:  alpha = 0.25;break;
        case 80:  alpha = 0.5;break;
        case 90:  alpha = 0.75;break;
        case 100: alpha = 1;break;        
        case 595: alpha = 0.75;break;
        case 605: alpha = 0.5;break;
        case 615: alpha = 0.25;break;
        case 625: alpha = 0;break;
        case 650: 
            t = 0;
            page = 5;
            break;
    }
}
#endregion

#region Страница5
if page = 5
{
    text = page5;
    t++;
    switch(t)
    {
        case 75:   alpha = 0.5;break;
        case 100:  alpha = 1;break;
        case 700:  alpha = 0.5;alpha2 = 0.5;break;
        case 725:  alpha = 0;alpha2 = 1;break;
        case 1000: alpha = 0;alpha2 = 0.5;break;
        case 1025: alpha = 0;alpha2 = 0;break;
        case 1050: 
            t = 0;
            page = 6;
            break;
    }
}
#endregion

#region Страница6
if page = 6
{
    text = page6;
    t++;
    switch(t)
    {
        case 75: alpha = 0.5;break;
        case 100: alpha = 1;break;
        case 600: alpha = 0.5;break;
        case 625: alpha = 0;break;
        case 650: 
            t = 0;
            room_goto(Tutor1);
            break;
    }
}
#endregion

#region  Skip

if (key_attack || key_jump) && skip = 0
{
    skip = 1;
}

if skip = 1
{
    skip_t++;
    if skip_t >=10
    {
        skip_t = 0;
        skip = 2;
    }   
}

if skip = 2
{
    skip_t++;
    if skip_t >= 150 
    {
        skip_t = 0;
        skip = 0;
    }
    
    if (key_attack || key_jump) room_goto(Tutor1);   
}

#endregion