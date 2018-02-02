/*
argument0 = property
argument1 = property value
*/
if (argument0 == stat.maxhealth){
    if (argument1 <= 5){
        return(string(" of Fragility"));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string(" of Hardiness"));
    }
    else if (argument1 >= 11){
        return(string(" of Stoutness"));
    }
}
if (argument0 == stat.maxmana){
    if (argument1 <= 5){
        return(string(" of the Fool"));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string(" of the Mindful"));
    }
    else if (argument1 >= 11){
        return(string(" of the Wizard"));
    }
}
if (argument0 == stat.strength){
    if (argument1 <= 5){
        return(string(" of the Weak"));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string(" of the Average"));
    }
    else if (argument1 >= 11){
        return(string(" of the Strong"));
    }
}
if (argument0 == stat.dexterity){
    if (argument1 <= 5){
        return(string(" of the Clumsy"));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string(" of the Cunning"));
    }
    else if (argument1 >= 11){
        return(string(" of the Agile"));
    }
}
if (argument0 == stat.vitality){
    if (argument1 <= 5){
        return(string(" of the Frail"));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string(" of the Hardy"));
    }
    else if (argument1 >= 11){
        return(string(" of the Stout"));
    }
}
if (argument0 == stat.energy){
    if (argument1 <= 5){
        return(string(" of the Fool"));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string(" of the Mindful"));
    }
    else if (argument1 >= 11){
        return(string(" of the Wizard"));
    }
}
if (argument0 == stat.armor){
    return(string(" of the Knight"));
}

if (argument0 == stat.allresist){
    if (argument1 <= 5){
        return(string(" of the Susceptible"));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string(" of Strong Will"));
    }
    else if (argument1 >= 11){
        return(string(" of Armageddon"));
    }
}

if (argument0 == stat.fireresist){
    return(string(" of Flame Retardation"));
}

if (argument0 == stat.iceresist){
    return(string(" of Warmth"));
}

if (argument0 == stat.lightningresist){
    return(string(" of Grounding"));
}

if (argument0 == stat.poisonresist){
    return(string(" of Antivenom"));
}
if (argument0 == stat.damagereduction){
    if (argument1 <= 5){
        return(string(" of the Squire"));
    }
    else if (argument1 >= 6) and (argument1 <= 10){
        return(string(" of the Warrior"));
    }
    else if (argument1 >= 11){
        return(string(" of the Knight"));
    }
}
if (argument0 == stat.fireabsorb){
    return(string(" of Flame Gorging"));
}

if (argument0 == stat.iceabsorb){
    return(string(" of Freezing"));
}

if (argument0 == stat.lightningabsorb){
    return(string(" of Charging"));
}

if (argument0 == stat.poisonabsorb){
    return(string(" of Infection"));
}

if (argument0 == stat.liferegen){
    return(string(" of Regenerating"));
}

if (argument0 == stat.manaregen){
    return(string(" of Recharging"));
}
    
if (argument0 == stat.attackspeed){
    return(string(" of the Quick"));
}

if (argument0 == stat.attackpower){
    return(string(" of the Powerful"));
}

if (argument0 == stat.attackrating){
    return(string(" of the Accurate"));
}

if (argument0 == stat.critchance){
    return(string(" of the Dead-Eye"));
}

if (argument0 == stat.critdamage){
    return(string(" of the Strong-Arm"));
}

if (argument0 == stat.mindamage){
    return(string(" of the Strong"));
}

if (argument0 == stat.maxdamage){
    return(string(" of the Strong"));
}

if (argument0 == stat.costreduction){
    return(string(" of the Resourceful"));
}

if (argument0 == stat.deadlystrike){
    return(string(" of Deadliness"));
}

if (argument0 == stat.lifeleech){
    return(string(" of the Leech"));
}

if (argument0 == stat.lifeperkill){
    return(string(" of the Vampire"));
}

if (argument0 == stat.manaleech){
    return(string(" of the Bat"));
}

if (argument0 == stat.manaperkill){
    return(string(" of the Crocodile"));
}

if (argument0 == stat.firedamage){
    return(string(" of Fire"));
}

if (argument0 == stat.icedamage){
    return(string(" of Ice"));
}

if (argument0 == stat.lightningdamage){
    return(string(" of Shocking"));
}

if (argument0 == stat.poisondamage){
    return(string(" of Poison"));
}

if (argument0 == stat.magicfind){
    return(string(" of Treasure Hunting"));
}

if (argument0 == stat.goldfind){
    return(string(" of Greed"));
}

if (argument0 == stat.enhanceddamage){
    return(string(" of Brutality"));
}

else{
    return(" OF OBJECT BROKEN")
}
