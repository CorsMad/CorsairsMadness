/// @description Insert description here
// You can write your code in this editor
player_input()

if key_attack
{
    scr_text_skip();
    
    // выход
    
    if scr_t > 1 
    {
        obj_Player.isDead = 2.1;
        instance_destroy();   
    }
}