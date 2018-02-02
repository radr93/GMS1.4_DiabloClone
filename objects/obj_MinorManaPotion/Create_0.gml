/// @description Initialize Variables
event_inherited();

item[property.object] = obj_MinorManaPotion;
item[property.sprite] = spr_ManaPotion;
item[property.type] = type.potion
item[property.name] = "Minor Mana Potion";
item[property.prop1stat] = stat.currentmana;
item[property.prop1value] = 50;
item[property.info] = string("#Right click to use##Restore " + string(item[property.prop1value]) + " mana");
item[property.tooltip] =   string(item[property.name] + item[property.info]);


