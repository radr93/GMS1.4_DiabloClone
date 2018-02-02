var treasureclass;
treasureclass = argument0;

if (treasureclass == 1){
    if (random(1) < .1){
        return(obj_RejuvinationPotion);
    }
    else{
        var chance = choose(1, 2);
        if (chance == 1){
            return(obj_MinorHealthPotion);
        }
        else if (chance == 2){
            return(obj_MinorManaPotion);
        }
    }
}
else if (treasureclass == 2){
    if (random(1) < .1){
        return(obj_RejuvinationPotion);
    }
    else{
        var chance = choose(1, 2);
        if (chance == 1){
            return(obj_MinorHealthPotion);
        }
        else if (chance == 2){
            return(obj_MinorManaPotion);
        }
    }
}
else{
    show_debug_message("scr_PotionDrop malfunction! Unable to find correct Treasure Class! TC: " + string(treasureclass));
}
