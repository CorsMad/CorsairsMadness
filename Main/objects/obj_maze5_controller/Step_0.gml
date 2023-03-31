/// @description Insert description here
// You can write your code in this editor
/*
Разговор с челом
200
prize 1 = 50 золота
250 
prize 2 = 100 золота + ключ
300
prize 3 = 350 золота 
*/

if count = 1
{
    if score_count >= 200 && score_count < 250
    {
        if prize1 = 0 
        {
            prize1 = 1;
            instance_create_depth(0,0,depth,obj_maze5_prize1);
            count = 0;
        } else count = 0;
    }
    
    if score_count >=250 &&  score_count < 300
    {
        if prize2 = 0
        {
            if prize1 = 0 
            {
                prize1 = 1;
                prize2 = 1;
                instance_create_depth(0,0,depth,obj_maze5_prize12);
                count = 0;
            } else
                {
                    prize2 = 1;
                    instance_create_depth(0,0,depth,obj_maze5_prize2);
                    count = 0;
                }
        } else count = 0;
    }
    
    if score_count = 300
    {
        if prize3 = 0
        {
            if prize2 = 0
            {
                if prize1 = 0
                {
                    prize1 = 1;   
                    prize2 = 1;   
                    prize3 = 1;   
                    count = 0;
                    instance_create_depth(0,0,depth,obj_maze5_prize123);            
                } else 
                    {
                        prize2 = 1;
                        prize3 = 1;
                        count = 0;
                        instance_create_depth(0,0,depth,obj_maze5_prize23);
                    }
            }  else {
                        if prize1 = 0
                        {
                            count = 0;
                            prize1 = 1;
                            prize3 = 1;
                            instance_create_depth(0,0,depth,obj_maze5_prize13);                            
                        } else 
                        {
                            prize3 = 1;
                            count = 0;
                            instance_create_depth(0,0,depth,obj_maze5_prize3);
                        }
                    }
        }
    }
}