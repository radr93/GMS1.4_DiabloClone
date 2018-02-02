/// @description Draw spellbook

var p = obj_PlayerController;

if (p.spells[spell.icebolt, spelldetail.learned] = true){
    if (!instance_exists(obj_SpellbookIcebolt)){
        instance_create(__view_get( e__VW.XView, 0 )+384, __view_get( e__VW.YView, 0 )+328, obj_SpellbookIcebolt);
    }
}

if (p.spells[spell.firebolt, spelldetail.learned] = true){
    if (!instance_exists(obj_SpellbookFirebolt)){
        instance_create(__view_get( e__VW.XView, 0 )+384, __view_get( e__VW.YView, 0 )+276, obj_SpellbookFirebolt);
    }
}

