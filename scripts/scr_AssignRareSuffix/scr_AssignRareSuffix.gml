//Armor
if (argument0 == type.head){
    return(string(" Casque"))
}
else if (argument0 == type.amulet){
    return(string(" Pendant"))
}
else if (argument0 == type.body){
    var suffix = choose(" Mantle", " Cape", " Ward", " Cloak", " Shawl", " Coat", " Guardian", " Disguise");
    return (suffix);
}
else if (argument0 == type.offhand){
    return(string(" Whip"))
}
else if (argument0 == type.gloves){
    return(string(" Grips"))
}
else if (argument0 == type.belt){
    return(string(" Cinch"))
}
else if (argument0 == type.boots){
    return(string(" Treads"))
}
else if (argument0 == type.ring){
    return(string(" Band"))
}
//Weapons
else if (argument0 == type.sword){
    var suffix = choose(" Edge", " Blade", " Rapier", " Cutter", " Justice", " Shank", " Gouge", " Epee", " Saber");
    return(suffix);
}
else if (argument0 == type.axe){
    var suffix = choose(" Lopper", " Chopper", " Axe", " Edge", " Strike", " Cleaver", " Feller", " Hewer", " Truncator");
    return(suffix);
}
