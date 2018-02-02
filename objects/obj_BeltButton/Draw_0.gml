/// @description Draw and interact with items in inventory
var beltitem;
var g = obj_Global;

if (instance_exists(obj_PlayerParent)){
    //Gather variables for the item in that slot
    for (i = 0; i < property.MAX; i += 1){
        beltitem[i] = global.belt[slot, i];
    }
    //Turn clicks into variables
    var click = mouse_check_button_pressed(mb_left);
    var rclick = mouse_check_button_pressed(mb_right);
    //Draws a colored box behind the item (type dependent) or silver box if slot is empty
    if (abs(mouse_x - x) < 16) and (abs(mouse_y - y) < 16){
        draw_set_alpha(0.15);
        if (beltitem[property.rarity] != -1){
            draw_set_colour(beltitem[property.rarity]);
        }
        else{
            draw_set_colour(c_silver);
        }
        draw_rectangle(x - 15, y - 15, x + 15, y + 15, 0);
        draw_set_alpha(1);
        //If you click on the box
        if (click){
            global.clickingother = true;
            //If the slot isn't empty
            if (beltitem[property.object] != -1){
                //Make said slot empty
                scr_ItemDropBelt(slot);
            }
            //If you had something picked up on your mouse
            if (g.itemheld[(property.type)] == type.potion){
                //Fill the slot with whatever was on the mouse
                for (i = 0; i < property.MAX; i += 1){
                    scr_ItemPickupBelt(slot, i, g.itemheld[i]);
                }
            }
            //Pick up whatever was in the slot onto the mouse
            for (i = 0; i < property.MAX; i += 1){
                g.itemheld[i] = beltitem[i];
            }
        }
        //Right Click Interaction
        if (rclick){
            //Potions
            if (global.belt [slot, property.type] == type.potion){
                //Healing
                if (global.belt[slot, property.prop1stat] == stat.currenthealth){
                    obj_PlayerController.stats[stat.currenthealth] += global.belt[slot, property.prop1value];
                    scr_ItemDropBelt(slot);
                }
                //Mana
                if (global.belt[slot, property.prop1stat] == stat.currentmana){
                    obj_PlayerController.stats[stat.currentmana] += global.belt[slot, property.prop1value];
                    scr_ItemDropBelt(slot);
                }
                //Rejuvination
                if (global.inventory[slot, property.prop2stat] != -1){
                    obj_PlayerController.stats[stat.currenthealth] += global.belt[slot, property.prop1value];
                    obj_PlayerController.stats[stat.currentmana] += global.belt[slot, property.prop2value];
                    scr_ItemDropSlot(slot);                    
                }
            }
        }
    }
    //If the slot is not empty
    if (beltitem[property.object] != -1){
        //Draw whatever item is in said slot
        draw_sprite(beltitem[property.sprite], 0, x, y);
        //If mouse is over the item
        if (abs(mouse_x - x) < 16) and (abs(mouse_y - y) < 16){
            //If nothing is currently picked up on the mouse
            if (g.itemheld[property.object] == -1){
                //Draw the tooltip
                global.showtooltip = true;
                i = instance_create(mouse_x, mouse_y, obj_Tooltip);
                i.type = beltitem[property.rarity];
                if (global.belt[slot, property.identified] == true){
                    i.tooltip = beltitem[property.tooltip];
                }
                else{
                    i.tooltip = beltitem[property.unidtooltip];
                }
            }
        }
    }
}

