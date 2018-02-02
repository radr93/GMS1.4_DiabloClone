/// @description Initialize Variables
event_inherited();

item[property.object] = obj_MinorHealthPotion;
item[property.sprite] = spr_HealthPotion;
item[property.type] = type.potion
item[property.name] = "Minor Health Potion";
item[property.prop1stat] = stat.currenthealth;
item[property.prop1value] = 50;
item[property.info] = string("#Right click to use##Restore " + string(item[property.prop1value]) + " health");
item[property.tooltip] =   string(item[property.name] + item[property.info]);

