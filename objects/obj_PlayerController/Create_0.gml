/// @description Initialize Stats      

for (i = 0; i < stat.MAX; i += 1){
    stats[i] = 0;
}
///Set Basic Stats
stats[stat.class] = -1;
stats[stat.level] = 1;
stats[stat.maxexperience] = 500;
stats[stat.statpoints] = 0;
stats[stat.skillpoints] = 0;
stats[stat.liferegen] = 3;
stats[stat.manaregen] = 5;
stats[stat.magicfind] = 1500;
stats[stat.mindamage] = 1;
stats[stat.maxdamage] = 3;

activespell = -1             //Spell Animation
activespellcost = -1         //Cost
activemindamage = -1         //Min Damage
activemaxdamage = -1         //Max Damage
activephysical = -1          //Physical?
activemagical = -1           //Magical?
activeelement = -1           //Elemental?

///Initialize Spells

for (i = 0; i < spell.MAX; i += 1){
    for (j = 0; j < spelldetail.MAX; j += 1){
        spells[i, j] = -1;
    }
}
///Mage

//Firebolt
spells[spell.firebolt, spelldetail.name] = string("Fire Bolt");     //Spell Name
spells[spell.firebolt, spelldetail.sprite] = spr_SpellbookFirebolt; //Spellbook Sprite
spells[spell.firebolt, spelldetail.mindamage] = 10;                  //Min Damage
spells[spell.firebolt, spelldetail.maxdamage] = 25;                 //Max Damage
spells[spell.firebolt, spelldetail.physical] = false;               //Physical?
spells[spell.firebolt, spelldetail.magical] = true;                 //Magical?
spells[spell.firebolt, spelldetail.elemental] = element.fire;       //Elemental?
spells[spell.firebolt, spelldetail.learned] = false;                //Learned?
spells[spell.firebolt, spelldetail.cost] = 5;                       //Cost
spells[spell.firebolt, spelldetail.object] = obj_SpellFirebolt;     //Spell Animation

spells[spell.icebolt, spelldetail.name] = string("Ice Bolt");       //Spell Name
spells[spell.icebolt, spelldetail.sprite] = spr_SpellbookIcebolt;   //Spellbook Sprite
spells[spell.icebolt, spelldetail.mindamage] = 8;                   //Min Damage
spells[spell.icebolt, spelldetail.maxdamage] = 16;                   //Max Damage
spells[spell.icebolt, spelldetail.physical] = false;                //Physical?
spells[spell.icebolt, spelldetail.magical] = true;                  //Magical?
spells[spell.icebolt, spelldetail.elemental] = element.ice;         //Elemental?
spells[spell.icebolt, spelldetail.learned] = false;                 //Learned?
spells[spell.icebolt, spelldetail.cost] = 8;                        //Cost
spells[spell.icebolt, spelldetail.object] = obj_SpellIcebolt;       //Spell Animation

