/// @description Check Stats/Leveling Up

//Experience
stats[stat.experiencepercent] = ((stats[stat.currentexperience] / stats[stat.maxexperience])*100)
///Health
//Max Health
if (stats[stat.class] != -1){
    if (stats[stat.class] == classes.archer){
        stats[stat.totalhealth] = (stats[stat.maxhealth] + (stats[stat.level]*2) + (stats[stat.vitality]*2))
    }
    else if (stats[stat.class] == classes.mage){
        stats[stat.totalhealth] = (stats[stat.maxhealth] + (stats[stat.level]*1) + (stats[stat.vitality]*1))
    }
    else if (stats[stat.class] == classes.warrior){
        stats[stat.totalhealth] = (stats[stat.maxhealth] + (stats[stat.level]*3) + (stats[stat.vitality]*3))
    }
}
//Don't allow current health over max health
stats[stat.healthpercent] = floor((stats[stat.currenthealth] / stats[stat.totalhealth]) * 100);
if (stats[stat.currenthealth] >= stats[stat.totalhealth]){
    stats[stat.currenthealth] = stats[stat.totalhealth];
}
//Health Regeneration
if (stats[stat.currenthealth] < stats[stat.totalhealth]){
    stats[stat.currenthealth] += (stats[stat.liferegen] / room_speed);
}

///Mana
//Max Mana
if (stats[stat.class] != -1){
    if (stats[stat.class] == classes.archer){
        stats[stat.totalmana] = (stats[stat.maxmana] + (stats[stat.level]*2) + (stats[stat.energy]*2))
    }
    else if (stats[stat.class] == classes.mage){
        stats[stat.totalmana] = (stats[stat.maxmana] + (stats[stat.level]*3) + (stats[stat.energy]*3))
    }
    else if (stats[stat.class] == classes.warrior){
        stats[stat.totalmana] = (stats[stat.maxmana] + (stats[stat.level]*1) + (stats[stat.energy]*1))
    }
}
//Don't allow current mana over max mana
stats[stat.manapercent] = floor((stats[stat.currentmana] / stats[stat.totalmana]) * 100);
if (stats[stat.currentmana] >= stats[stat.totalmana]){
    stats[stat.currentmana] = stats[stat.totalmana];
}
//Mana Regeneration
if (stats[stat.currentmana] < stats[stat.totalmana]){
    stats[stat.currentmana] += (stats[stat.manaregen] / room_speed);
}

//Resistances
stats[stat.totalfireresist] = (stats[stat.fireresist] + stats[stat.allresist]);
stats[stat.totaliceresist] = (stats[stat.iceresist] + stats[stat.allresist]);
stats[stat.totallightningresist] = (stats[stat.lightningresist] + stats[stat.allresist]);
stats[stat.totalpoisonresist] = (stats[stat.poisonresist] + stats[stat.allresist]);

///Min Damage
if (stats[stat.enhanceddamage] >= 1){
    stats[stat.totalmindamage] = floor(((stats[stat.strength]/10) + stats[stat.mindamage] + global.equipped[equipslot.weapon, property.mindamage] ) * (1+(stats[stat.enhanceddamage]/100)));
}
else if (global.equipped[equipslot.weapon, property.mindamage != -1]){
    stats[stat.totalmindamage] = floor(((stats[stat.strength]/10) + stats[stat.mindamage] + global.equipped[equipslot.weapon, property.mindamage]));
}
else{
    stats[stat.totalmindamage] = floor((stats[stat.strength]/10) + stats[stat.mindamage])
}

///Max Damage
if (stats[stat.enhanceddamage] > 0){
    stats[stat.totalmaxdamage] = floor((((stats[stat.strength]/5) + stats[stat.maxdamage] + global.equipped[equipslot.weapon, property.maxdamage] ) * (1+(stats[stat.enhanceddamage]/100))));
}
else if (global.equipped[equipslot.weapon, property.maxdamage != -1]){
    stats[stat.totalmaxdamage] = floor(((stats[stat.strength]/5) + stats[stat.maxdamage] + global.equipped[equipslot.weapon, property.maxdamage]));
}
else{
    stats[stat.totalmaxdamage] = floor((stats[stat.strength]/5) + stats[stat.maxdamage])
}

///Level Up
if (stats[stat.currentexperience] >= stats[stat.maxexperience]){
    stats[stat.maxexperience] = (stats[stat.maxexperience] * 1.69) + stats[stat.maxexperience];
    stats[stat.level] += 1
    stats[stat.statpoints] += 5
    stats[stat.skillpoints] += 1
    //Full Health and Mana
    if (stats[stat.class] != -1){
        if (stats[stat.class] == classes.archer){
            stats[stat.maxhealth] += 4
            stats[stat.maxmana] += 4
            stats[stat.totalhealth] = (stats[stat.maxhealth] + (stats[stat.level]*2) + (stats[stat.vitality]*2))
            stats[stat.totalmana] = (stats[stat.maxmana] + (stats[stat.level]*2) + (stats[stat.energy]*2))
        }
        else if (stats[stat.class] == classes.mage){
            stats[stat.maxhealth] += 2
            stats[stat.maxmana] += 6
            stats[stat.totalhealth] = (stats[stat.maxhealth] + (stats[stat.level]*1) + (stats[stat.vitality]*1))
            stats[stat.totalmana] = (stats[stat.maxmana] + (stats[stat.level]*3) + (stats[stat.energy]*3))
        }
        else if (stats[stat.class] == classes.warrior){
            stats[stat.maxhealth] += 6
            stats[stat.maxmana] += 2
            stats[stat.totalhealth] = (stats[stat.maxhealth] + (stats[stat.level]*3) + (stats[stat.vitality]*3))
            stats[stat.totalmana] = (stats[stat.maxmana] + (stats[stat.level]*1) + (stats[stat.energy]*1))
        }
        stats[stat.currenthealth] = stats[stat.totalhealth];
        stats[stat.currentmana] = stats[stat.totalmana];
    }
}

