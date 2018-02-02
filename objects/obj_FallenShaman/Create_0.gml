/// @description Initialize Variables
event_inherited();
movespeed = 3;
attack_speed = 2

mindam = 5;
maxdam = 10;

monstername = " FALLEN SHAMAN ";
monsterlevel = 6;
maxhp = (monsterlevel*20);
hp = maxhp;
hppercent = (hp/maxhp)*100;

treasureclass = floor(sqrt(monsterlevel*global.arealevel));

