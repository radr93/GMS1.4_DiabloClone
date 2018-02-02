if (argument0 != -1){
    obj_PlayerController.stats[stat.mindamage] = obj_PlayerController.stats[stat.mindamage] - argument0;

    if (argument1 != -1){
        obj_PlayerController.stats[stat.maxdamage] = obj_PlayerController.stats[stat.maxdamage] - argument1;
    }
    return(1)
}
else{
    return(0)
}
