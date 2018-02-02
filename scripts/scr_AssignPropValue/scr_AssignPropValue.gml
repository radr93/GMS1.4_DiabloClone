/*
argument0 == property
argument0 == treasure class
*/
///Core Stats
if (argument0 == stat.maxhealth){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range((argument1*1), (argument1*5))));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range((argument1*1), (argument1*5))));
    }
    if (argument1 >= 30){
        return(floor(random_range((argument1*1), (argument1*10))));
    }
}
if (argument0 == stat.maxmana){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range((argument1*1), (argument1*5))));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range((argument1*1), (argument1*5))));
    }
    if (argument1 >= 30){
        return(floor(random_range((argument1*1), (argument1*10))));
    }
}
if (argument0 == stat.strength){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.dexterity){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.vitality){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.energy){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
//Defensive Stats
if (argument0 == stat.armor){
    if ((argument1 >= 0) and (argument1 < 20)){
        return((argument1*1))
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range((argument1*1), (argument1*5))));
    }
    if (argument1 >= 30){
        return(floor(random_range((argument1*1), (argument1*10))));
    }
}
if (argument0 == stat.armorpercent){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 3)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 6)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 10)));
    }
}
if (argument0 == stat.damagereduction){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 3)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 6)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 10)));
    }
}
if (argument0 == stat.fireabsorb){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.iceabsorb){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.lightningabsorb){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.poisonabsorb){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.allresist){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.fireresist){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 30)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 45)));
    }
}
if (argument0 == stat.iceresist){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 30)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 45)));
    }
}
if (argument0 == stat.lightningresist){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 30)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 45)));
    }
}
if (argument0 == stat.poisonresist){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 30)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 45)));
    }
}
if (argument0 == stat.liferegen){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 20)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 45)));
    }
}
if (argument0 == stat.manaregen){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 20)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 45)));
    }
}
if (argument0 == stat.lifeleech){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 3)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 6)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 10)));
    }
}
if (argument0 == stat.lifeperkill){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 3)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 6)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 10)));
    }
}
if (argument0 == stat.manaleech){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 3)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 6)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 10)));
    }
}
if (argument0 == stat.manaperkill){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 3)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 6)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 10)));
    }
}
//Offensive Stats
if (argument0 == stat.deadlystrike){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 10)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 15)));
    }
}
if (argument0 == stat.crushingblow){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 10)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 15)));
    }
}
if (argument0 == stat.attackpower){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 25)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 50)));
    }
}
if (argument0 == stat.spellpower){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 25)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 50)));
    }
}
if (argument0 == stat.attackrating){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 100)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 250)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 500)));
    }
}
if (argument0 == stat.mindamage){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 25)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 50)));
    }
}
if (argument0 == stat.maxdamage){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 25)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 50)));
    }
}
if (argument0 == stat.enhanceddamage){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 100)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 200)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 400)));
    }
}
if (argument0 == stat.firedamage){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.icedamage){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.lightningdamage){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
if (argument0 == stat.poisondamage){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 20)));
    }
}
//Bonus Stats
if (argument0 == stat.costreduction){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 3)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 6)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 10)));
    }
}
if (argument0 == stat.hitrecovery){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 3)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 6)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 10)));
    }
}
if (argument0 == stat.blockchance){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 5)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 15)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 25)));
    }
}
if (argument0 == stat.attackspeed){
    if (argument1 <= 30){
        return(1);
    }
    else{
        return(2);
    }
}
if (argument0 == stat.castspeed){
    if (argument1 <= 30){
        return(1);
    }
    else{
        return(2);
    }
}
if (argument0 == stat.runspeed){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 25)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 50)));
    }
}
if (argument0 == stat.magicfind){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 25)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 50)));
    }
}
if (argument0 == stat.goldfind){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(floor(random_range(1, 10)));
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(floor(random_range(1, 25)));
    }
    if (argument1 >= 30){
        return(floor(random_range(1, 50)));
    }
}
//Skill Levels
if (argument0 == stat.allskills){
    return(1);
}
if (argument0 == stat.archerskills){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(1);
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(2);
    }
    if (argument1 >= 30){
        return(3);
    }
}
if (argument0 == stat.mageskills){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(1);
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(2);
    }
    if (argument1 >= 30){
        return(3);
    }
}
if (argument0 == stat.warriorskills){
    if ((argument1 >= 0) and (argument1 < 20)){
        return(1);
    }
    if ((argument1 >= 20) and (argument1 < 30)){
        return(2);
    }
    if (argument1 >= 30){
        return(3);
    }
}
else{
    return(string("Invalid stat value"))
}

