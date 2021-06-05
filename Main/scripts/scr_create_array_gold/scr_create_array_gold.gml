// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_array_gold()
{
    for(i=0;i<1000;i+=1)
    {
        global.Collectables_array[i,0] = 0;   
    }

    for(n=0;n<1000;n+=1)
    {
        global.Gold_behind_destructable_array[n,0] = 0;   
    } 
    
    for(o=0;o<1000;o+=1)
    {
        global.Chests_array[o,0] = 0;   
    } 
    
}