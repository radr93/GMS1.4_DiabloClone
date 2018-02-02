/// @description Set Character Stats
event_inherited();
var p = obj_PlayerController;

p.stats[stat.currenthealth] = 45;
p.stats[stat.maxhealth] = 45;
p.stats[stat.currentmana] = 15;
p.stats[stat.maxmana] = 15;

p.stats[stat.strength] = 10;
p.stats[stat.dexterity] = 20;
p.stats[stat.vitality] = 20;
p.stats[stat.energy] = 10;
    
p.stats[stat.attackspeed] = attackspeed.normal

