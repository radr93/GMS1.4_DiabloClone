var slotsfilled = 0;
var deposited = 0;

///Pick item up
if ((distance_to_object(obj_PlayerParent) < 48) and (obj_Global.itemheld[property.object] == -1)){
    if (global.clickingother == false){
        global.clickingother = true;
        if (item[property.type] == type.potion){
            for (i = 0; i < 8; i += 1){
                //If there is free space
                if (global.belt[i, property.object] == -1){
                    //Remove potion from inventory
                    for (j = 0; j < property.MAX; j += 1){
                        scr_ItemPickupBelt(i, j, item[j]);
                    }
                    deposited = 1;
                    instance_destroy();
                    break;
                }
            }
            if (deposited = 0){
                for (j = 0; j < property.MAX; j +=1){
                    scr_ItemPickup(j, item[j]);
                }
                instance_destroy();
            }
        }
        else{
            var j;
            for (j = 0; j < property.MAX; j +=1){
                scr_ItemPickup(j, item[j]);
            }
            instance_destroy();
        }
    }
}

