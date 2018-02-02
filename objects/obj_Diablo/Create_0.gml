/// @description Initialize Variables
event_inherited();
movespeed = 3;
attack_speed = 1;

mindam = 10;
maxdam = 20;

monstername = "   DIABLO   ";
monsterlevel = 32;
maxhp = (monsterlevel*20);
hp = maxhp;
hppercent = (hp/maxhp)*100;

treasureclass = floor(sqrt(monsterlevel*global.arealevel));

