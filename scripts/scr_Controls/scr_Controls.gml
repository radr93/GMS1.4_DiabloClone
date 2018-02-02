/// @description Called from obj_Global End Step
///Open and Close Menus

if (keyboard_check_pressed(vk_escape)){
    global.showinventory = false;
    with (obj_StatsMenu){
        instance_destroy();
    }
    with (obj_Spellbook){
        instance_destroy();
    }
}
//Show and hide Inventory
if (keyboard_check_pressed(ord("B")) or keyboard_check_pressed(ord("I"))){
    if (global.showinventory = true){
        global.showinventory = false;
    }
    else{
        global.showinventory = true;
    }
}
//Create and Destroy Stats Menu
if (keyboard_check_pressed(ord("C"))){
    if (instance_exists(obj_StatsMenu)){
        with (obj_StatsMenu){
            instance_destroy();
        }
    }
    else{
        instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_StatsMenu);
    }
}
//Create and Destroy Spellbook
if (keyboard_check_pressed(ord("S"))){
    if (instance_exists(obj_Spellbook2)){
        with (obj_Spellbook2){
            instance_destroy();
        }
    }
    else{
        instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_Spellbook2);
    }
}
//Restart Game
if (keyboard_check_pressed(ord("R"))){
    game_restart();
}
//Show Item Labels on ground
if (keyboard_check_pressed(vk_alt)){
    global.showitemsonground = true;
}
//Hide Item Labels on ground
if (keyboard_check_released(vk_alt)){
    global.showitemsonground = false;
}
//Potions Bar
for (i = -1; i < 8; i += 1){
    if (keyboard_check_pressed(ord(string((i+1))))){
        if (global.belt[i, property.prop1value] != -1){
            var potionstat = global.belt[i, property.prop1stat]
            obj_PlayerController.stats[potionstat] += global.belt[i, property.prop1value];
            if (global.belt[i, property.prop2value] != -1){
                var potionstat2 = global.belt[i, property.prop2stat]
                obj_PlayerController.stats[potionstat2] += global.belt[i, property.prop2value];
            }
            scr_ItemDropBelt(i);
            }
    }
}
