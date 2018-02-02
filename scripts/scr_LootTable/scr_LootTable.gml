var drop, treasureclass;
treasureclass = argument0;

if (treasureclass == 1){
    drop = scr_LootClass1();
    if (drop != 0){
        return(drop)
    }
    else{
        drop = scr_LootClass0(treasureclass);
        if (drop != 0){
            return(drop)
        }
        else{
            return(0)
        }
    }
}
else if (treasureclass == 2){
    drop = scr_LootClass2()
    if (drop != 0){
        return(drop)
    }
    else{
        drop = scr_LootClass0(treasureclass);
        if (drop != 0){
            return(drop)
        }
        else{
            return(0)
        }
    }
}
else if (treasureclass == 3){
    drop = scr_LootClass2()
    if (drop != 0){
        return(drop)
    }
    else{
        drop = scr_LootClass0(treasureclass);
        if (drop != 0){
            return(drop)
        }
        else{
            return(0)
        }
    }
}
else if (treasureclass == 4){
    drop = scr_LootClass2()
    if (drop != 0){
        return(drop)
    }
    else{
        drop = scr_LootClass0(treasureclass);
        if (drop != 0){
            return(drop)
        }
        else{
            return(0)
        }
    }
}
else if (treasureclass == 5){
    drop = scr_LootClass2()
    if (drop != 0){
        return(drop)
    }
    else{
        drop = scr_LootClass0(treasureclass);
        if (drop != 0){
            return(drop)
        }
        else{
            return(0)
        }
    }
}

else{
    show_debug_message("scr_LootTable malfunction! Unable to find correct Treasure Class! TC: " + string(treasureclass));
}
