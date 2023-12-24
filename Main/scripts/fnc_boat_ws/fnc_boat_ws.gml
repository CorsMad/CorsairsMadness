function fnc_boat_ws0(){
    // пистолет
    if global.purch_rapidfire3   = 1 { state = 0.4; global.choosed_itemboat_tier = 3;  } else           
    if global.purch_rapidfire2   = 1 { state = 0.4; global.choosed_itemboat_tier = 2;  } else           
    if global.purch_rapidfire1   = 1 { state = 0.4; global.choosed_itemboat_tier = 1;  } else           
    if global.purch_dualpistols3 = 1 { state = 0.1; global.choosed_itemboat_tier = 3;  } else           
    if global.purch_dualpistols2 = 1 { state = 0.1; global.choosed_itemboat_tier = 2;  } else           
    if global.purch_dualpistols1 = 1 { state = 0.1; global.choosed_itemboat_tier = 1;  } else           
    if global.purch_blunderbuss3 = 1 { state = 0.2; global.choosed_itemboat_tier = 3;  } else           
    if global.purch_blunderbuss2 = 1 { state = 0.2; global.choosed_itemboat_tier = 2;  } else           
    if global.purch_blunderbuss1 = 1 { state = 0.2; global.choosed_itemboat_tier = 1;  } else           
    if global.purch_parrotcage3  = 1 { state = 0.3; global.choosed_itemboat_tier = 3;  } else           
    if global.purch_parrotcage2  = 1 { state = 0.3; global.choosed_itemboat_tier = 2;  } else           
    if global.purch_parrotcage1  = 1 { state = 0.3; global.choosed_itemboat_tier = 1;  } else 
    state = 0;
}

function fnc_boat_ws1(){
     //быстровыстрел
    if global.purch_dualpistols3 = 1 { state = 0.1; global.choosed_itemboat_tier = 3;  } else           
    if global.purch_dualpistols2 = 1 { state = 0.1; global.choosed_itemboat_tier = 2;  } else           
    if global.purch_dualpistols1 = 1 { state = 0.1; global.choosed_itemboat_tier = 1;  } else           
    if global.purch_blunderbuss3 = 1 { state = 0.2; global.choosed_itemboat_tier = 3;  } else           
    if global.purch_blunderbuss2 = 1 { state = 0.2; global.choosed_itemboat_tier = 2;  } else           
    if global.purch_blunderbuss1 = 1 { state = 0.2; global.choosed_itemboat_tier = 1;  } else           
    if global.purch_parrotcage3  = 1 { state = 0.3; global.choosed_itemboat_tier = 3;  } else           
    if global.purch_parrotcage2  = 1 { state = 0.3; global.choosed_itemboat_tier = 2;  } else           
    if global.purch_parrotcage1  = 1 { state = 0.3; global.choosed_itemboat_tier = 1;  } else 
    {state = 0;}      
}

function fnc_boat_ws2(){
    // двойной пистол
    if global.purch_blunderbuss3 = 1 { state = 0.2; global.choosed_itemboat_tier = 3;  } else           
    if global.purch_blunderbuss2 = 1 { state = 0.2; global.choosed_itemboat_tier = 2;  } else           
    if global.purch_blunderbuss1 = 1 { state = 0.2; global.choosed_itemboat_tier = 1;  } else           
    if global.purch_parrotcage3  = 1 { state = 0.3; global.choosed_itemboat_tier = 3;  } else           
    if global.purch_parrotcage2  = 1 { state = 0.3; global.choosed_itemboat_tier = 2;  } else           
    if global.purch_parrotcage1  = 1 { state = 0.3; global.choosed_itemboat_tier = 1;  } else 
    {state = 0;}       
}

function fnc_boat_ws3(){
    //попуг
    if global.purch_parrotcage3  = 1 { state = 0.3;global.choosed_itemboat_tier = 3;   } else           
    if global.purch_parrotcage2  = 1 { state = 0.3;global.choosed_itemboat_tier = 2;   } else           
    if global.purch_parrotcage1  = 1 { state = 0.3;global.choosed_itemboat_tier = 1;   } else 
    {state = 0;}  ;   
}

function fnc_boat_ws4(){
    {state = 0;}   
}