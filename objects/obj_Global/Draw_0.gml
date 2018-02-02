/// @description Draw Item on Mouse and Item Labels

//picture of whatever's held on the mouse
var pickedup = itemheld[property.sprite];
//if something is actually picked up
if (pickedup != -1){
    //draw the picture on the mouse
    x = mouse_x;
    y = mouse_y;
    draw_sprite(pickedup, 0, x, y);
}

///Create Item Labels
if (global.showitemsonground == true){
    if (instance_exists(obj_GroundItemParent)){
        var i;
        var j;
        var itemsonground = instance_number(obj_GroundItemParent);
        for (i = 0; i < itemsonground; i +=1){
            j = instance_find(obj_GroundItemParent, i);
            with (j){
                if (item[property.identified] = true){
                    scr_DrawTooltipLocation(x, y, item[property.rarity], item[property.name]);
                }
                else if (item[property.identified] = false){
                    scr_DrawTooltipLocation(x, y, item[property.rarity], item[property.unidname]);
                }
            }
        }
    }
}

///Draw enemy health bars on mouse over
with (obj_AllEnemyParent){
    if ((point_distance(x,y,mouse_x,mouse_y) < 128)){
        
        var x1,x2,y1,y2, xc, yc
        x1 = __view_get( e__VW.XView, 0 )+512-(string_width(string_hash_to_newline(monstername))/2);
        x2 = __view_get( e__VW.XView, 0 )+512+(string_width(string_hash_to_newline(monstername))/2);
        y1 = __view_get( e__VW.YView, 0 )+32;
        y2 = __view_get( e__VW.YView, 0 )+48;
        xc = __view_get( e__VW.XView, 0 )+512;
        yc = __view_get( e__VW.YView, 0 )+40;
        
        draw_healthbar(x1,y1,x2,y2,hppercent,c_black,c_red,c_green,0,true,true);
        draw_set_color(c_white);
        draw_set_halign(fa_center);
        draw_set_valign(fa_center);
        draw_set_font(font_Tooltip);
        draw_text(xc, yc, string_hash_to_newline(monstername));
        draw_set_halign(fa_top);
        draw_set_valign(fa_left);
    }
}

action_draw_variable(global.clickingother, 32, 32);
