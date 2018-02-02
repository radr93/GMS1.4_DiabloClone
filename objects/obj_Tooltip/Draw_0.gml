/// @description  Draw and Position Tooltip
if (is_string(tooltip)){
    x = mouse_x - (string_width(string_hash_to_newline(tooltip))*0.75);
    y = mouse_y - 32;
    if (global.showtooltip = true){
        scr_DrawTooltip(type, tooltip);
    }
}
else{
    instance_destroy();
}

