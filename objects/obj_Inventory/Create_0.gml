/// @description Initialize Variables/Enum properties/Initialize array

//Initialize Variables
xoffset = __view_get( e__VW.XView, 0 )+640 //Top Left Corner of Inventory Backdrop Sprite
yoffset = __view_get( e__VW.YView, 0 )     //////////////////////////////////////////////

//Array - First number = Slot Second Number = Property
for (i = 0; i < global.inventoryslots; i += 1){
    inventorybutton[i] = instance_create(0, 0, obj_InventoryButton)      //Creates invisible boxes on each inventory slot
    inventorybutton[i].slot = i;                                      //Gives every button a "slot" number variable
    for (j = 0; j < property.MAX; j += 1){
        global.inventory[i, j] = -1  ;                          //i = slot j = slot's property
    }
}

for (i = 0; i < equipslot.MAX; i += 1){
    equippedbutton[i] = -1;
    for (j = 0; j < property.MAX; j += 1){
        global.equipped[i, j] = -1;
    }
}
equippedbutton[equipslot.head] = instance_create(0, 0, obj_EquipHead);
equippedbutton[equipslot.head].slot = equipslot.head;
equippedbutton[equipslot.weapon] = instance_create(0, 0, obj_EquipWeapon);
equippedbutton[equipslot.weapon].slot = equipslot.weapon;
equippedbutton[equipslot.chest] = instance_create(0, 0, obj_EquipChest);
equippedbutton[equipslot.chest].slot = equipslot.chest;
equippedbutton[equipslot.offhand] = instance_create(0, 0, obj_EquipOffhand);
equippedbutton[equipslot.offhand].slot = equipslot.offhand;
equippedbutton[equipslot.gloves] = instance_create(0, 0, obj_EquipGloves);
equippedbutton[equipslot.gloves].slot = equipslot.gloves;
equippedbutton[equipslot.belt] = instance_create(0, 0, obj_EquipBelt);
equippedbutton[equipslot.belt].slot = equipslot.belt;
equippedbutton[equipslot.ring1] = instance_create(0, 0, obj_EquipRing1);
equippedbutton[equipslot.ring1].slot = equipslot.ring1;
equippedbutton[equipslot.amulet] = instance_create(0, 0, obj_EquipAmulet);
equippedbutton[equipslot.amulet].slot = equipslot.amulet;
equippedbutton[equipslot.ring2] = instance_create(0, 0, obj_EquipRing2);
equippedbutton[equipslot.ring2].slot = equipslot.ring2;
equippedbutton[equipslot.boots] = instance_create(0, 0, obj_EquipBoots);
equippedbutton[equipslot.boots].slot = equipslot.boots;

