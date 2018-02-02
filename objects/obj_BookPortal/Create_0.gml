/// @description Initialize Variables
event_inherited();

item[property.object] = obj_BookPortal;
item[property.sprite] = spr_BookPortal;
item[property.type] = type.book
item[property.prop1value] = floor(random_range(1,5));
item[property.prop1] = string("Quantity: " + string(item[property.prop1value]));
item[property.name] = "Tome of Town Portal";
item[property.info] = "Create a portal#back to town"
item[property.tooltip] =   string(item[property.name] + "#Insert scrolls#Right click to use#" + string(item[property.prop1]) + "##" + item[property.info]);

