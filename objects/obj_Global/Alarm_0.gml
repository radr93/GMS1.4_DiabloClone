/// @description Drop Item on the ground
/*
    This alarm exists because without it (if you were to just
    global left click (where alarm is called from)), you instantly
    pick the item up again. */
    
///if you're holding an item
if (itemheld[property.object] != -1){
    //"drop" it on the ground around the player
    with (instance_create(obj_PlayerParent.x +- 32, obj_PlayerParent.y +- 32, itemheld[property.object])){
        //transfer variables to item on the ground
        for (i = 0; i < property.MAX; i += 1){
            item[i] = obj_Global.itemheld[i]   
        }
    }
    //reset itemheld to -1 ("empty")
    for (i = 0; i < property.MAX; i +=1){
        itemheld[i] = -1;
    }
}

/* */
/*  */
