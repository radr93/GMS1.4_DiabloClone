/*
argument0 == property to convert to text
*/
///Core Stats
if (argument0 == stat.maxhealth){
    return(string(" Max Health"));
}
if (argument0 == stat.maxmana){
    return(string(" Max Mana"));
}
if (argument0 == stat.strength){
    return(string(" Strength"));
}
if (argument0 == stat.dexterity){
    return(string(" Dexterity"));
}
if (argument0 == stat.vitality){
    return(string(" Vitality"));
}
if (argument0 == stat.energy){
    return(string(" Energy"));
}
//Defensive Stats
if (argument0 == stat.armor){
    return(string(" Bonus Armor"));
}
if (argument0 == stat.armorpercent){
    return(string("% Armor Rating"));
}
if (argument0 == stat.damagereduction){
    return(string("% Damage Reduction"));
}
if (argument0 == stat.fireabsorb){
    return(string("% Fire Absorb"));
}
if (argument0 == stat.iceabsorb){
    return(string("% Ice Absorb"));
}
if (argument0 == stat.lightningabsorb){
    return(string("% Lightning Absorb"));
}
if (argument0 == stat.poisonabsorb){
    return(string("% Poison Absorb"));
}
if (argument0 == stat.allresist){
    return(string("% All Resistance"));
}
if (argument0 == stat.fireresist){
    return(string("% Fire Resistance"));
}
if (argument0 == stat.iceresist){
    return(string("% Ice Resistance"));
}
if (argument0 == stat.lightningresist){
    return(string("% Lightning Resistance"));
}
if (argument0 == stat.poisonresist){
    return(string("% Poison Resistance"));
}
if (argument0 == stat.liferegen){
    return(string(" Life Regen"));
}
if (argument0 == stat.manaregen){
    return(string(" Mana Regen"));
}
if (argument0 == stat.lifeleech){
    return(string("% Life Stolen per Hit"));
}
if (argument0 == stat.lifeperkill){
    return(string(" to Life per Kill"));
}
if (argument0 == stat.manaleech){
    return(string("% Mana Stolen per Hit"));
}
if (argument0 == stat.manaperkill){
    return(string(" to Mana per Kill"));
}
//Offensive Stats
if (argument0 == stat.costreduction){
    return(string("% Reduced Mana Costs"));
}
if (argument0 == stat.hitrecovery){
    return(string("% Faster Hit Recovery"));
}
if (argument0 == stat.blockchance){
    return(string("% Chance to Block"));
}
if (argument0 == stat.attackspeed){
    return(string(" Attack Speed"));
}
if (argument0 == stat.castspeed){
    return(string("% Faster Cast Rate"));
}
if (argument0 == stat.runspeed){
    return(string("% Faster Movement Speed"));
}
if (argument0 == stat.magicfind){
    return(string("% Extra Chance of Magic Items"));
}
if (argument0 == stat.goldfind){
    return(string("% Extra Gold from Monsters"));
}
//Bonus Stats
if (argument0 == stat.deadlystrike){
    return(string("% chance of Deadly Strike"));
}
if (argument0 == stat.crushingblow){
    return(string("% chance of Crushing Blow"));
}
if (argument0 == stat.attackpower){
    return(string(" Attack Power"));
}
if (argument0 == stat.spellpower){
    return(string(" Spell Power"));
}
if (argument0 == stat.attackrating){
    return(string(" Attack Rating"));
}
if (argument0 == stat.mindamage){
    return(string(" Minimum Damage"));
}
if (argument0 == stat.maxdamage){
    return(string(" Maximum Damage"));
}
if (argument0 == stat.enhanceddamage){
    return(string("% Enhanced Damage"));
}
if (argument0 == stat.firedamage){
    return(string(" Fire Damage"));
}
if (argument0 == stat.icedamage){
    return(string(" Ice Damage"));
}
if (argument0 == stat.lightningdamage){
    return(string(" Lightning Damage"));
}
if (argument0 == stat.poisondamage){
    return(string(" Poison Damage"));
}
//Skill Levels
if (argument0 == stat.allskills){
    return(string(" to All Skill Levels"));
}
if (argument0 == stat.archerskills){
    return(string(" to Archer Skill Levels"));
}
if (argument0 == stat.mageskills){
    return(string(" Mage Skill Levels"));
}
if (argument0 == stat.warriorskills){
    return(string(" Warrior Skill Levels"));
}
else{
    return(string(" No Definition"))
}
    
