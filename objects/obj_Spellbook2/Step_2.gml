/// @description Draw spellbook
var xoffset = 872;
var yoffset = 480;

x1 = __view_get( e__VW.XView, 0 ) + xoffset;
y1 = __view_get( e__VW.YView, 0 ) + yoffset;

var p = obj_PlayerController;

if (p.spells[spell.icebolt, spelldetail.learned] = true){
    if (!instance_exists(obj_SpellbookIcebolt)){
        instance_create(x1 - 32, y1 - 96, obj_SpellbookIcebolt);
    }
}

if (p.spells[spell.firebolt, spelldetail.learned] = true){
    if (!instance_exists(obj_SpellbookFirebolt)){
        instance_create(x1 - 32, y1 - 32, obj_SpellbookFirebolt);
    }
}

