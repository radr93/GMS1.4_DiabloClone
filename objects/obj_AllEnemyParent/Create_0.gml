/// @description Initialize Variables
image_speed = 0.25;

movespeed = 1;

monstername = "";
monsterlevel = 1;
maxhp = 1;
hp = maxhp;
hppercent = (hp/maxhp)*100;

treasureclass = floor(sqrt(monsterlevel*global.arealevel));

