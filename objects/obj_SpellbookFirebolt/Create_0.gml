/// @description Initialize Variables
spellid = spell.firebolt;

p = obj_PlayerController;


sprite = p.spells[spellid, spelldetail.sprite];          //sprite
activespell = p.spells[spellid, spelldetail.object];     //animation
spellname = p.spells[spellid, spelldetail.name];         //name
spellcost = p.spells[spellid, spelldetail.cost];         //cost
mindamage = p.spells[spellid, spelldetail.mindamage];    //Min Damage
maxdamage = p.spells[spellid, spelldetail.maxdamage];    //Max Damage
physical = p.spells[spellid, spelldetail.physical];      //Physical?
magical = p.spells[spellid, spelldetail.magical];        //Magical?
elemental = p.spells[spellid, spelldetail.elemental];    //

