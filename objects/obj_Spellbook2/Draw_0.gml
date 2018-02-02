/// @description Draw Menu
///Draw spellbook
var xoffset = 872;
var yoffset = 480;

x = __view_get( e__VW.XView, 0 ) + xoffset - sprite_width;
y = __view_get( e__VW.YView, 0 ) + yoffset - sprite_height;

draw_sprite(spr_Spellbook, 0, x, y);

