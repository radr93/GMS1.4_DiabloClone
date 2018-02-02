/// @description Draw and position inventory, position buttons

//Set Position
xoffset = __view_get( e__VW.XView, 0 )+640;
yoffset = __view_get( e__VW.YView, 0 );
x = xoffset;
y = yoffset;

if (global.showinventory = true){
    draw_sprite(spr_Inventory, 0, xoffset, yoffset);
    
    var rowlength;
    rowlength = 8;
    
    var x1, y1;
    x1 = xoffset + 64 + 16; //Top left corner of inventory + top left corner of first box + to center of first box
    y1 = yoffset + 352 + 16;
    
    //Arrange all the buttons in each row, going down to the start of the next row each time rowlength is exceeded
    for (i = 0; i < global.inventoryslots; i +=1){
        if (i = rowlength){
            rowlength += 8;
            x1 -= 256;
            y1 += 32;
        }
        inventorybutton[i].x = x1;
        inventorybutton[i].y = y1;
        x1 += 32;
    }
    //Arrange Equip Slots
    equippedbutton[equipslot.head].x = xoffset +192;
    equippedbutton[equipslot.head].y = yoffset +112;
    equippedbutton[equipslot.weapon].x = xoffset +96;
    equippedbutton[equipslot.weapon].y = yoffset +192;
    equippedbutton[equipslot.chest].x = xoffset +192;
    equippedbutton[equipslot.chest].y = yoffset +208;
    equippedbutton[equipslot.offhand].x = xoffset +288;
    equippedbutton[equipslot.offhand].y = yoffset +192;
    equippedbutton[equipslot.gloves].x = xoffset +96;
    equippedbutton[equipslot.gloves].y = yoffset +304;
    equippedbutton[equipslot.belt].x = xoffset +192;
    equippedbutton[equipslot.belt].y = yoffset +288;
    equippedbutton[equipslot.ring1].x = xoffset +152;
    equippedbutton[equipslot.ring1].y = yoffset +328;
    equippedbutton[equipslot.amulet].x = xoffset +191;
    equippedbutton[equipslot.amulet].y = yoffset +328;
    equippedbutton[equipslot.ring2].x = xoffset +232;
    equippedbutton[equipslot.ring2].y = yoffset +328;
    equippedbutton[equipslot.boots].x = xoffset +288;
    equippedbutton[equipslot.boots].y = yoffset +304;
}

