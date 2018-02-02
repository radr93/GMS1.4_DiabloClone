/// @description Draw and interact with equipped items
var g = obj_Global;
var p = obj_PlayerController;
var click = mouse_check_button_pressed(mb_left);
var requirements = scr_CheckRequirements(slot);
var equippeditem;

if (global.showinventory = true){
    
    //Gather variables for the item equipped in that slot
    for (i = 0; i < property.MAX; i += 1){
        equippeditem[i] = global.equipped[slot, i];
    }   

    /* Draw colored box behind the item */    
    //If mouse is over the equip slot
    if (abs(mouse_x - x) < (sprite_width/2)) and (abs(mouse_y - y) < (sprite_height/2)){
        //If no item is picked up
        if (g.itemheld[property.object] == -1){
            //If slot has item equipped, set color to it's rarity
            if (equippeditem[property.rarity] != -1){
                draw_set_colour(equippeditem[property.rarity]);
            }
            //If slot is empty, set color to silver
            else{
                draw_set_colour(c_silver);
            }
        }
        //If item is picked up
        if (g.itemheld[property.object] != -1){
            //If you don't meet the requirements, set color to red
            if (requirements == 0){
                draw_set_colour(c_red);
            }
            //If you meet the requirements, set color to held item's rarity
            else{
                draw_set_colour(g.itemheld[property.rarity]);
            }
        }
        //Draw a coloured box behind the item
        draw_set_alpha(0.15);
        draw_rectangle(x - (sprite_width/2), y - (sprite_height/2), x + (sprite_width/2), y + (sprite_height/2), 0);
        draw_set_alpha(1);
        
        /* Picking up and dropping items */
        if (click){
            global.clickingother = true;
            //If itemheld equip slot matches button's equip slot and you meet the requirements OR or you're not holding an item
            if (((g.itemheld[property.equipslot] == slot) or (g.itemheld[property.equipslot] == equipslot.ring) and (requirements == 1)) or (g.itemheld[property.object] == -1)){
                //If there's actually something in the slot
                if (equippeditem[property.object] != -1){
                        //Remove item's stats from player's stats
                        scr_RemoveStats(equippeditem[property.prop1stat], equippeditem[property.prop1value], equippeditem[property.prop2stat], equippeditem[property.prop2value],
                                        equippeditem[property.prop3stat], equippeditem[property.prop3value], equippeditem[property.prop4stat], equippeditem[property.prop4value],
                                        equippeditem[property.prop5stat], equippeditem[property.prop5value], equippeditem[property.prop6stat], equippeditem[property.prop6value],);
                        if (equippeditem[property.armor] != -1){
                            scr_RemoveArmorRating(equippeditem[property.armor]);
                        }
                        //Make slot empty again
                        scr_UnequipSlot(slot);
                }
            }
            //If you had something picked up on your mouse
            var dontpickup = 0
            if (g.itemheld[(property.object)] != -1){
                //If itemheld equip slot matches button's equip slot
                if ((g.itemheld[property.equipslot] == slot) or (g.itemheld[property.equipslot] == equipslot.ring)){
                    //If you meet the requirements
                    if (requirements == 1){
                        //Transfer itemheld's properties to button slot
                        for (i = 0; i < property.MAX; i += 1){
                            scr_EquipSlot(slot, i, g.itemheld[i]);
                        }
                        //Add item's stats to player's stats
                        scr_AddStats(g.itemheld[property.prop1stat], g.itemheld[property.prop1value], g.itemheld[property.prop2stat], g.itemheld[property.prop2value],
                                     g.itemheld[property.prop3stat], g.itemheld[property.prop3value], g.itemheld[property.prop4stat], g.itemheld[property.prop4value],
                                     g.itemheld[property.prop5stat], g.itemheld[property.prop5value], g.itemheld[property.prop6stat], g.itemheld[property.prop6value]);
                        if (g.itemheld[property.armor] != -1){
                            scr_AddArmorRating(g.itemheld[property.armor]);
                        }
                    }
                    else{
                        dontpickup = 1
                    }
                }
            }
            //If itemheld equip slot matches button's equip slot or you're not holding an item
            if ((g.itemheld[property.equipslot] == slot) or ((g.itemheld[property.equipslot] == equipslot.ring) and (requirements == 1)) or (g.itemheld[property.object] == -1)){
                if (dontpickup == 0){;
                    //Pick up whatever was in the slot onto the mouse
                    for (i = 0; i < property.MAX; i += 1){
                        g.itemheld[i] = equippeditem[i];
                    }
                }
            }
        }
    }
    //If the slot is not empty
    if (equippeditem[property.object] != -1){
        //Draw whatever equipped item is in said slot
        draw_sprite(equippeditem[property.equipsprite], 0, x, y);
        //If mouse is over the equipped item
        if (abs(mouse_x - x) < (sprite_width/2)) and (abs(mouse_y - y) < (sprite_height/2)){
            //If nothing is currently picked up on the mouse
            if (g.itemheld[property.object] == -1){
                //Draw the tooltip
                global.showtooltip = true;
                i = instance_create(mouse_x, mouse_y, obj_Tooltip);
                i.type = equippeditem[property.rarity];
                i.tooltip = equippeditem[property.tooltip];
            }
        }
    }
}

/* */
/*  */
