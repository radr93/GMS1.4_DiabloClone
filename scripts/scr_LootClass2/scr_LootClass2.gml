var chance, drop;

chance = random(1);
if (chance <= .1){
    return(obj_Amulet)
}

chance = random(1);
if (chance <= .1){
    return(obj_Ring)
}
else{
    drop = scr_LootClass1();
    if (drop != 0){
        return(drop)
    }
    else{
        return(0)
    }
}
