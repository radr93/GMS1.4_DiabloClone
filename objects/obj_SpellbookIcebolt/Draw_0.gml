/// @description Draw Self
var xoffset = 872 - 32;
var yoffset = 480 - 96;

x = __view_get( e__VW.XView, 0 ) + xoffset;
y = __view_get( e__VW.YView, 0 ) + yoffset;

draw_sprite(sprite, 0, x, y);

if (abs(mouse_x - x) < 32) && (abs(mouse_y - y) < 32){
var tooltip = string(spellname + "#Cost: " + string(spellcost) + " mana")
scr_DrawTooltipLocation(x, y, c_white, tooltip)
}

