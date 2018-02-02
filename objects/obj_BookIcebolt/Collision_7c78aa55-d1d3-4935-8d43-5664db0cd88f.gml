/// @description Learn and equip spell

var p = obj_PlayerController;

p.spells[spell.icebolt, spelldetail.learned] = true;                //Learn Spell

p.activespell = p.spells[spell.icebolt, spelldetail.object]            //Spell Animation
p.activespellcost = p.spells[spell.icebolt, spelldetail.cost]          //Cost
p.activemindamage = p.spells[spell.icebolt, spelldetail.mindamage]     //Min Damage
p.activemaxdamage = p.spells[spell.icebolt, spelldetail.maxdamage]     //Max Damage
p.activephysical = p.spells[spell.icebolt, spelldetail.physical]       //Physical?
p.activemagical = p.spells[spell.icebolt, spelldetail.magical]         //Magical?
p.activeelement = p.spells[spell.icebolt, spelldetail.elemental]       //Elemental?

instance_destroy();

