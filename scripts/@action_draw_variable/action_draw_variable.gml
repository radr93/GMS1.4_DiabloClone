/// @description (Old DnD) - draw variable
/// @param v    variable to display
/// @param x	x position 
/// @param y	y position 

var xx = argument1;
var yy = argument2;
if (global.__argument_relative) {
	xx += x;
	yy += y;
}  // end if
draw_text( xx, yy, string_hash_to_newline(string(argument0)));
