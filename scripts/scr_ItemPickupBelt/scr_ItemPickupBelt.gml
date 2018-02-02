/// @description Change specific inventory slot to whatever you were holding
///when you clicked it
//  argument0:  slot
//  argument1:  property to change
//  argument2:  item held's property

//if the slot is empty
if (global.belt[argument0, property.object] == -1){
    //change that slot's property to whatever the item's property was
    global.belt[argument0, argument1] = argument2;
    return(1); //deposit successful
}
return(0); //failed to deposit item
