/// @description Set Character Stats
event_inherited();
var p = obj_PlayerController;

p.stats[stat.currenthealth] = 50;
p.stats[stat.maxhealth] = 50;
p.stats[stat.currentmana] = 10;
p.stats[stat.maxmana] = 10;

p.stats[stat.strength] = 20;
p.stats[stat.dexterity] = 10;
p.stats[stat.vitality] = 20;
p.stats[stat.energy] = 10;
    
p.stats[stat.attackspeed] = attackspeed.normal

p.stats[stat.mindamage] = round((p.stats[stat.strength]/10) * global.equipped[equipslot.weapon, property.maxdamage]);
p.stats[stat.maxdamage] = round((p.stats[stat.strength]/10) * global.equipped[equipslot.weapon, property.maxdamage]);

