/// @description Insert description here
// You can write your code in this editor

script_lng_after_credits();

scr_text_starter(0,0.5,snd_vo_npc_sullyH);

icontalk = instance_create_depth(x,y-500,depth-1,obj_credits_talk_icon);
icontalk.xx = 99;
icontalk.yy = 125;