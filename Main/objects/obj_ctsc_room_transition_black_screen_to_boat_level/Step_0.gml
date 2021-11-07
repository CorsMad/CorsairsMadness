
image_alpha = alpha;
if alpha < 1 
{
    alpha +=0.05;
}

audio_sound_gain(msc_Jungle1,vol,0);
vol-=0.01
if vol <= 0 && alpha >=1
{
    audio_stop_sound(msc_Jungle1);
    room_goto(L1_boat);
}