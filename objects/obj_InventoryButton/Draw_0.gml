/// @description Draw and interact with items in inventory
var item;
var g = obj_Global;

if (global.showinventory = true){
    //Gather variables for the item in that slot
    for (i = 0; i < property.MAX; i += 1){
        item[i] = global.inventory[slot, i];
    }
    //Turn clicks into variables
    var click = mouse_check_button_pressed(mb_left);
    var rclick = mouse_check_button_pressed(mb_right);
    var shift = keyboard_check(vk_shift);
    
    //Draws a colored box behind the item (type dependent) or silver box if slot is empty
    if (abs(mouse_x - x) < 16) and (abs(mouse_y - y) < 16){
        draw_set_alpha(0.15);
        if (item[property.rarity] != -1){
            draw_set_colour(item[property.rarity]);
        }
        else{
            draw_set_colour(c_silver);
        }
        draw_rectangle(x - 15, y - 15, x + 15, y + 15, 0);
        draw_set_alpha(1);
        //If you click on the box
            
        if ((click) and !(shift)){
            global.clickingother = true;
            //If the slot isn't empty
            if (item[property.object] != -1){
                //Make said slot empty
                scr_ItemDropSlot(slot);
            }
            //If you had something picked up on your mouse
            if (g.itemheld[(property.object)] != -1){
                //Fill the slot with whatever was on the mouse
                for (i = 0; i < property.MAX; i += 1){
                    scr_ItemPickupSlot(slot, i, g.itemheld[i]);
                }
            }
            //Pick up whatever was in the slot onto the mouse
            for (i = 0; i < property.MAX; i += 1){
                g.itemheld[i] = item[i];
            }
        }
        else if (click){
            global.clickingother = true;
            if (item[property.type] == type.potion){
                if (keyboard_check(vk_shift)){
                    for (i = 0; i < 8; i += 1){
                        //If there is free space
                        if (global.belt[i, property.object] == -1){
                            //Remove potion from inventory
                            for (j = 0; j < property.MAX; j += 1){
                                scr_ItemPickupBelt(i, j, item[j]);
                            }
                            scr_ItemDropSlot(slot);
                            break;
                        }
                    }
                }
            }
        }
        //Right Click Interaction
        if (rclick){
            //Identify Item
            if (item[property.object] != -1){
                if (global.inventory[slot, property.identified] = false){
                    global.inventory[slot, property.identified] = true;
                }
            }
            //Potions
            if (global.inventory[slot, property.type] == type.potion){
                //Healing
                if (global.inventory[slot, property.prop1stat] == stat.currenthealth){
                    obj_PlayerController.stats[stat.currenthealth] += global.inventory[slot, property.prop1value];
                    scr_ItemDropSlot(slot);
                }
                //Mana
                if (global.inventory[slot, property.prop1stat] == stat.currentmana){
                    obj_PlayerController.stats[stat.currentmana] += global.inventory[slot, property.prop1value];
                    scr_ItemDropSlot(slot);
                }
                //Rejuvination
                if (global.inventory[slot, property.prop2stat] != -1){
                    obj_PlayerController.stats[stat.currenthealth] += global.inventory[slot, property.prop1value];
                    obj_PlayerController.stats[stat.currentmana] += global.inventory[slot, property.prop2value];
                    scr_ItemDropSlot(slot);                    
                }
            }
        }
    }
    //If the slot is not empty
    if (item[property.object] != -1){
        //Draw whatever item is in said slot
        draw_sprite(item[property.sprite], 0, x, y);
        //If mouse is over the item
        if (abs(mouse_x - x) < 16) and (abs(mouse_y - y) < 16){
            //If nothing is currently picked up on the mouse
            if (g.itemheld[property.object] == -1){
                //Draw the tooltip
                global.showtooltip = true;
                i = instance_create(mouse_x, mouse_y, obj_Tooltip);
                i.type = item[property.rarity];
                if (global.inventory[slot, property.identified] == true){
                    i.tooltip = item[property.tooltip];
                }
                else{
                    i.tooltip = item[property.unidtooltip];
                }
            }
        }
    }
}

