/// @description  Set alarm to drop item (if held)
/// @function  Set alarm to drop item 
/// @param if held
if (itemheld[property.object] != -1){
    if (global.clickingother == false){
        global.clickingother = true;
        alarm[0] = 1;
    }
}

