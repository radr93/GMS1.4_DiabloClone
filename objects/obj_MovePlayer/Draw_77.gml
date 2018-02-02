/// @description Move Player
//obj_PlayerParent follows movement
if (mouse_check_button(mb_left)){
    if (global.clickingother == false){
        x = mouse_x;
        y = mouse_y;
    }
}
if (keyboard_check(vk_shift)){
    x = obj_PlayerParent.x;
    y = obj_PlayerParent.y;
}

