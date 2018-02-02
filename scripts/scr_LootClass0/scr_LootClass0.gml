var chance;
var treasureclass;
treasureclass = argument0;

if (random(1) < .2){
    chance = choose(1, 2);
    if (chance == 1){
        return(scr_PotionDrop(treasureclass));
    }
    else if (chance == 2){
        chance = choose(1, 2, 3);
        if (chance == 1){
            return(obj_BookPortal);
        }
        else if (chance == 2){
            return(obj_BookIdentify);
        }
        else if (chance == 3){
            return(obj_SkeletonKey);
        }
        else{
            show_debug_message("scr_LootClass0 malfunctioned! Chance broken.")
        }
    }
}
else{
    return(0);
}
