/// @description Initialize Variables
event_inherited();
movespeed = 2;
attack_speed = 3

mindam = 2;
maxdam = 5;

monstername = "   FALLEN   ";
monsterlevel = 2;
maxhp = (monsterlevel*20);
hp = maxhp;
hppercent = (hp/maxhp)*100;

treasureclass = floor(sqrt(monsterlevel*global.arealevel));

