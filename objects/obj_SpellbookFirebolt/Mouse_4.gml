/// @description Change Active Spell and close Spellbook
var p = obj_PlayerController;
p.activespell = activespell;
p.activespellcost = spellcost;
p.activemindamage = mindamage;
p.activemaxdamage = maxdamage;
p.activephysical = physical;
p.activemagical = magical;
p.activeelement = elemental;
global.dontcast = true;
global.clickingother = true;
with (obj_Spellbook2){
    instance_destroy();
}

