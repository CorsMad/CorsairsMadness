/// @description Insert description here
// You can write your code in this editor






if image > 15 image = 0;
if image < 0 image = 15;

if mov=1
{
    t++;
    if t mod 5 = 0 image+=1;
    if t = 21 {t=0;mov=0;}
}
if mov=-1
{
    t++;
    if t mod 5 = 0 image-=1;
    if t = 21 {t=0;mov=0;}
}

image_index = image;