// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_deleting_objects()
{
    #region Cпецэффекты
    
        if instance_exists(obj_sfx_delete)
        {
            instance_destroy(obj_sfx_delete);   
        }
        
    #endregion
    
    #region Противники
    
        if instance_exists(obj_enemy_delete)
        {
            instance_destroy(obj_enemy_delete);   
        }
    
    #endregion
    
    #region Объекты
        
        if instance_exists(obj_objects_delete)
        {
            instance_destroy(obj_objects_delete);   
        }
    
    #endregion
    
    #region destructable bomb blocks
        
            if instance_exists(obj_destructable_bomb_block)
            {
                instance_destroy(obj_destructable_bomb_block);   
            }
        
            if instance_exists(obj_destructable_bomb_block_red)
            {
                instance_destroy(obj_destructable_bomb_block_red);   
            }
        
            if instance_exists(obj_destructable_bomb_expl)
            {
                instance_destroy(obj_destructable_bomb_expl);   
            }
        
        #endregion
    
    #region Двигающиеся платформы
    
    #region Горизонтальные
        if instance_exists(obj_platform_2_h)
        {
            instance_destroy(obj_platform_2_h);   
        }
        
        if instance_exists(obj_platform_2_h_e)
        {
            instance_destroy(obj_platform_2_h_e);   
        }
        
        if instance_exists(obj_platform_3_h)
        {
            instance_destroy(obj_platform_3_h);   
        }
        
        if instance_exists(obj_platform_3_h_e)
        {
            instance_destroy(obj_platform_3_h_e);   
        }
    
    #endregion
    
    #region Вертикальные
        if instance_exists(obj_platform_2_v)
        {
            instance_destroy(obj_platform_2_v);   
        }
        
        if instance_exists(obj_platform_2_v_e)
        {
            instance_destroy(obj_platform_2_v_e);   
        }
        
        if instance_exists(obj_platform_3_v)
        {
            instance_destroy(obj_platform_3_v);   
        }
        
        if instance_exists(obj_platform_3_v_e)
        {
            instance_destroy(obj_platform_3_v_e);   
        }
    #endregion
    
    #region Появляющиеся
    
        if instance_exists(obj_platform_creator_2_h_left)
        {
            instance_destroy(obj_platform_creator_2_h_left);   
        }
        
        if instance_exists(obj_platform_creator_2_h_right)
        {
            instance_destroy(obj_platform_creator_2_h_right);   
        }
        
        if instance_exists(obj_platform_destroyer)
        {
            instance_destroy(obj_platform_destroyer);   
        }
        
    #endregion
    
    #endregion
    
    #region Ворота с замком
    
        if instance_exists(obj_silver_key_door3)
        {
            instance_destroy(obj_silver_key_door3);   
        }
    
    #endregion
    
}