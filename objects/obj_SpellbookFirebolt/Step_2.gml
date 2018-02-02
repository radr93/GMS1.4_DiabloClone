/// @description Destroy if Spells Menu closes

if ((!instance_exists(obj_Spellbook)) and (!instance_exists(obj_Spellbook2))){
    instance_destroy();
}
x = __view_get( e__VW.XView, 0 )+384;
y = __view_get( e__VW.YView, 0 )+276;

