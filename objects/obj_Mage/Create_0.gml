/// @description Set Character Stats
event_inherited();
var p = obj_PlayerController;

p.stats[stat.currenthealth] = 20;
p.stats[stat.maxhealth] = 20;
p.stats[stat.currentmana] = 40;
p.stats[stat.maxmana] = 40;

p.stats[stat.strength] = 10;
p.stats[stat.dexterity] = 15;
p.stats[stat.vitality] = 15;
p.stats[stat.energy] = 20;
    
p.stats[stat.attackspeed] = attackspeed.normal

