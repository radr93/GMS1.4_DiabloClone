/// @description Initialize Variables
event_inherited();

item[property.object] = obj_RejuvinationPotion;
item[property.sprite] = spr_RejuvinationPotion;
item[property.type] = type.potion
item[property.name] = "Rejuvination Potion";
item[property.prop1stat] = stat.currenthealth;
item[property.prop1value] = 50;
item[property.prop1stat] = stat.currentmana;
item[property.prop1value] = 50;
item[property.info] = string("#Right click to use##Restore " + string(item[property.prop1value]) + " health and mana");
item[property.tooltip] =   string(item[property.name] + item[property.info]);


