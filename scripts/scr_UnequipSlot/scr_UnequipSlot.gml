/// @description Changes all properties of specified slot to -1 ("empty")
/// @function Changes all properties of specified slot to -1 
/// @param "empty"
// argument0 = slot to change

//if there's something in the slot
if (global.equipped[argument0, property.object] != -1){
    //cycles through each property
    for (i = 0; i < property.MAX; i += 1){
        //Removes stats from player and changes each property to -1
        global.equipped[argument0, i] = -1;
    }
    return(1); //drop successful
}
return(0); //failed to drop
