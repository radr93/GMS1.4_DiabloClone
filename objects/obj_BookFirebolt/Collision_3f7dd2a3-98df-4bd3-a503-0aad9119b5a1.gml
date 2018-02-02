/// @description Learn and equip spell

var p = obj_PlayerController;

p.spells[spell.firebolt, spelldetail.learned] = true;                 //Learn Spell

p.activespell = p.spells[spell.firebolt, spelldetail.object]            //Spell Animation
p.activespellcost = p.spells[spell.firebolt, spelldetail.cost]          //Cost
p.activemindamage = p.spells[spell.firebolt, spelldetail.mindamage]     //Min Damage
p.activemaxdamage = p.spells[spell.firebolt, spelldetail.maxdamage]     //Max Damage
p.activephysical = p.spells[spell.firebolt, spelldetail.physical]       //Physical?
p.activemagical = p.spells[spell.firebolt, spelldetail.magical]         //Magical?
p.activeelement = p.spells[spell.firebolt, spelldetail.elemental]       //Elemental?

instance_destroy();

