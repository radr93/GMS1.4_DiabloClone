/// @description Draw Tooltip on cursor 
/*
argument0 = type
argument1 = tooltip
*/

if (is_string(argument1)){
    var text_width;
    text_width  = (-5 +- string_width(string_hash_to_newline(argument1)));
    var text_height;
    text_height = (-5 +- string_height(string_hash_to_newline(argument1)));
    var old_alpha;
    old_alpha = draw_get_alpha();
    
    //Set alpha
    draw_set_alpha(0.85);
    //Set font
    draw_set_font(font_Tooltip);
    //Set Align
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    
    //Draw rectangle around the text
    draw_roundrect_color((x - (text_width/2)), ((y - (text_height/2)) - 32), (x + (text_width/2)), ((y + (text_height/2)) - 32), c_black, c_black, false);
    //Set text color
    draw_set_color(argument0);    
    //Draw the text inside the rect
    draw_text(x, (y - 32), string_hash_to_newline(argument1));
    
    // Reset alpha
    draw_set_alpha(old_alpha);
    //Reset Alignment
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

