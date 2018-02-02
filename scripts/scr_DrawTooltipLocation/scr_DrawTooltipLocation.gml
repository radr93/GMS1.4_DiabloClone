/// @description Draw Tooltip on cursor 
/*
argument0 = x
argument1 = y
argument2 = type
argument3 = tooltip
*/


if (is_string(argument3))
{
var text_width;
var text_height;
var old_alpha;
var old_color;
var old_depth;

// Set alpha
old_alpha = draw_get_alpha();
draw_set_alpha(0.85);

// Set font
draw_set_font(font_Tooltip);

// Set Align
draw_set_halign(fa_center);
draw_set_valign(fa_center);

    text_width  = (-5 +- string_width(string_hash_to_newline(argument3)));
    text_height = (-5 +- string_height(string_hash_to_newline(argument3)));

{
    // Draw rect around the text
    draw_roundrect_color((argument0 - (text_width/2)), ((argument1 - (text_height/2)) - 32), (argument0 + (text_width/2)), ((argument1 + (text_height/2)) - 32), c_black, c_black, false);

    // Set color
    old_color = draw_get_color();
    draw_set_color(argument2);    

    // Draw the text inside the rect
    draw_text(argument0, (argument1 - 32), string_hash_to_newline(argument3));

    // Reset old color
    draw_set_color(old_color);     
}
    
// Reset alpha
draw_set_alpha(old_alpha);

//Reset Alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);
}
