/// @description Draw item and ground label (on hover)
/// @function Draw item and ground label 
/// @param on hover
if (item[property.sprite] != -1){
    draw_sprite_ext(item[property.sprite], 0, x, y, .75, .75, angle, c_white, 1)
}

if (abs(mouse_x - x) < 16) and (abs(mouse_y - y) < 16){
    if (item[property.identified] = true){
        scr_DrawTooltip(item[property.rarity], item[property.name]);
    }
    else if (item[property.identified] = false){
        scr_DrawTooltip(item[property.rarity], item[property.unidname]);
    }
}

