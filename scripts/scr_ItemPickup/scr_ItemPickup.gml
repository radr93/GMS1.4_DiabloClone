/// @description Pick up ground item on click and find first open slot
//  argument0:  property to change
//  argument1:  item to pick up's property

//searches through each inventory slot
for (i = 0; i < global.inventoryslots; i += 1){
    //if the slot is empty
    if (global.inventory[i, property.object] == -1){
        //change that slot's property to whatever the item's property was
        global.inventory[i, argument0] = argument1;
        return(1); //deposit successful
    }
}
return(0); //failed to deposit item
