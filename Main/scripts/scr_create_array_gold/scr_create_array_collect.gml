// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_array_collect()
{
    for(i=0;i<1000;i+=1)
    {
        global.Collectables_array[i,0] = 0;   
    }
    for(k=0;k<1000;k+=1)
    {
        global.Destructable_blocks_array[k,0] = 0;   
    }
    for(l=0;l<10000;l+=1)
    {
        global.Destructable_tiles_array[l,0] = 0;   
    }
    for(m=0;m<10000;m+=1)
    {
        global.Gifts_array[m,0] = 0;   
    }
    
    
}