/// @description Initialize Variables
event_inherited();

item[property.object] = obj_BookIdentify;
item[property.sprite] = spr_BookIdentify;
item[property.type] = type.book
item[property.prop1value] = floor(random_range(1,5));
item[property.prop1] = string("Quantity: " + string(item[property.prop1value]));
item[property.name] = "Tome of Identify";
item[property.info] = "Identify an item"
item[property.tooltip] =   string(item[property.name] + "#Insert scrolls#Right click to use#" + item[property.prop1] + "##" + item[property.info]);

