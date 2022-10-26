/// @description Insert description here
// You can write your code in this editor

 
 //draw_sprite(spr_skeleton_mask,0, x,y);
 
 //draw_text(64,64,string(obj_Player.isSkatingAttack));
 
 if instance_exists(obj_cutscene_intro_player_draw)
 {
    draw_text(64,64,string(obj_cutscene_intro_player_draw.state));
    draw_text(64,80,string(obj_cutscene_intro_player_draw.t));
    

 }