/// @description Initialize Variables
event_inherited();

item[property.object] = obj_SkeletonKey;
item[property.sprite] = spr_SkeletonKey;
item[property.type] = type.item
item[property.prop1value] = floor(random_range(1,5));
item[property.prop1] = string("Quantity: " + string(item[property.prop1value]));
item[property.name] = "Skeleton Key";
item[property.info] = "Open many locked#doors and chests";
item[property.tooltip] =   string(item[property.name] + "#" + item[property.prop1] +
            "##" + item[property.info]);

