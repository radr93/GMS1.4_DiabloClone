/*
argument0 = property
argument1 = property value
*/
if (argument0 == stat.maxhealth){
    return(string("Healthy "));
}

if (argument0 == stat.maxmana){
    return(string("Snake's "));
}

if (argument0 == stat.strength){
    if (argument1 <= 5){
        return(string("Weak "));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string("Average "));
    }
    else if (argument1 >= 11) and (argument1 <= 15){
        return(string("Strong "));
    }
}
if (argument0 == stat.dexterity){
    if (argument1 <= 5){
        return(string("Clumsy "));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string("Cunning "));
    }
    else if (argument1 >= 11) and (argument1 <= 15){
        return(string("Agile "));
    }
}
if (argument0 == stat.vitality){
    if (argument1 <= 5){
        return(string("Frail "));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string("Hardy "));
    }
    else if (argument1 >= 11) and (argument1 <= 15){
        return(string("Stout "));
    }
}
if (argument0 == stat.energy){
    if (argument1 <= 5){
        return(string("Fool's "));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string("Mindful "));
    }
    else if (argument1 >= 11) and (argument1 <= 15){
        return(string("Wizard's "));
    }
}
if (argument0 == stat.armor){
    return(string("Knight's "));
}

if (argument0 == stat.allresist){
    return(string("Shimmering "));
}

if (argument0 == stat.fireresist){
    return(string("Flame Retardant "));
}

if (argument0 == stat.iceresist){
    return(string("Warm "));
}

if (argument0 == stat.lightningresist){
    return(string("Grounded "));
}

if (argument0 == stat.poisonresist){
    return(string("Antivenom "));
}

if (argument0 == stat.damagereduction){
    return(string("Solid "));
}

if (argument0 == stat.fireabsorb){
    return(string("Flame Gorging "));
}

if (argument0 == stat.iceabsorb){
    return(string("Frozen "));
}

if (argument0 == stat.lightningabsorb){
    return(string("Charged "));
}

if (argument0 == stat.poisonabsorb){
    return(string("Infectious "));
}

if (argument0 == stat.liferegen){
    return(string("Regenerating "));
}

if (argument0 == stat.manaregen){
    return(string("Recharging "));
}
    
if (argument0 == stat.attackspeed){
    return(string("Quick "));
}

if (argument0 == stat.attackpower){
    return(string("Powerful "));
}

if (argument0 == stat.attackrating){
    return(string("Accurate "));
}

if (argument0 == stat.critchance){
    return(string("Dead-Eye "));
}

if (argument0 == stat.critdamage){
    return(string("Strong-Arm "));
}

if (argument0 == stat.mindamage){
    return(string("Strong "));
}

if (argument0 == stat.maxdamage){
    return(string("Strong "));
}

if (argument0 == stat.costreduction){
    return(string("Resourceful "));
}

if (argument0 == stat.deadlystrike){
    return(string("Deadly "));
}

if (argument0 == stat.lifeleech){
    return(string("Leech's "));
}

if (argument0 == stat.lifeperkill){
    return(string("Vampire's "));
}

if (argument0 == stat.manaleech){
    return(string("Bat's "));
}

if (argument0 == stat.manaperkill){
    return(string("Crocodile's "));
}

if (argument0 == stat.firedamage){
    return(string("Fiery "));
}

if (argument0 == stat.icedamage){
    return(string("Icy "));
}

if (argument0 == stat.lightningdamage){
    return(string("Shocking "));
}

if (argument0 == stat.poisondamage){
    return(string("Poisonous "));
}

if (argument0 == stat.magicfind){
    return(string("Treasure Hunter's "));
}

if (argument0 == stat.goldfind){
    return(string("Wealthy "));
}
if (argument0 == stat.enhanceddamage){
    return(string("Cruel "));
}
else{
    return("BROKEN OBJECT ")
}
