/// @description Initialize all global variables and Item held array

/*  note global.inventoryslots and global.inventory[x] are
    initialized in obj_Inventory create event */

window_set_cursor(cr_none);
cursor_sprite = spr_Cursor;

global.arealevel = 1;


//Tooltip and Item Labels
global.showtooltip = false;
global.showitemsonground = false;

//Inventory
global.showinventory = false;
global.inventoryslots = 40;

//Clicking
global.clickingother = false;
global.dontcast = false;

///Initialize Item Held Array
for (i = 0; i < property.MAX; i += 1){
    itemheld[i] = -1;
}

/* */
///Initialize controller objects
instance_create(0, 0, obj_Inventory);
instance_create(0, 0, obj_UI);
instance_create(0, 0, obj_PlayerController);


/* */
///Enum Classes
enum classes
{
    warrior,
    mage,
    archer
}

/* */
///Enum Player Stats

enum stat
{
//Static Stats
    class,
    level,
    currentexperience,
    maxexperience,
    experiencepercent,
    statpoints,
    skillpoints,
    currenthealth,
    maxhealth,
    totalhealth,
    healthpercent,
    currentmana,
    maxmana,
    totalmana,
    manapercent,
//Core Stats
    strength,
    dexterity,
    vitality,
    energy,
//Defensive Stats
    armor,
    armorpercent,
    damagereduction,
    fireabsorb,
    iceabsorb,
    lightningabsorb,
    poisonabsorb,
    allresist,
    fireresist,
    iceresist,
    lightningresist,
    poisonresist,
    totalfireresist,
    totaliceresist,
    totallightningresist,
    totalpoisonresist,
    liferegen,
    manaregen,
    lifeleech,
    lifeperkill,
    manaleech,
    manaperkill,
//Offensive Stats
    mindamage,
    totalmindamage,
    maxdamage,
    totalmaxdamage,
    deadlystrike,
    crushingblow,
    attackpower,
    spellpower,
    attackrating,
    enhanceddamage,
    firedamage,
    icedamage,
    lightningdamage,
    poisondamage,
//Bonus Stats
    costreduction,
    hitrecovery,
    blockchance,
    attackspeed,
    castspeed,
    runspeed,
    magicfind,
    goldfind,
//Skill Levels
    allskills,
    archerskills,
    mageskills,
    warriorskills,
    firebolt,
    icebolt,
//To Delete
    critchance,
    critdamage,
    

    MAX
}


/* */
///Enum Item Types/Rarities

enum type
{
    head,
    amulet,
    body,
    weapon,
    offhand,
    gloves,
    belt,
    ring,
    ring1,
    ring2,
    boots,
    
    sword,
    axe,
    mace,
    wand,    
    
    item,
    book,
    potion,
    
    MAX
}

///Enum rarities
enum rarity
{
    normal = c_white,
    magic = c_aqua,
    rare = c_yellow,
    unique = c_orange,
    set = c_lime
}

/* */
///Enum Equip Slots
enum equipslot{
    head,
    weapon,
    chest,
    offhand,
    gloves,
    belt,
    ring,
    ring1,
    amulet,
    ring2,
    boots,
    MAX
}

/* */
///Enum Item Properties
enum property{
    sprite,
    equipsprite,
    ilvl, // ("Treasure Class")
    type,
    equipslot,
    rarity,
    identified,
    reqlevel,
    reqstrength,
    reqdexterity,
    reqenergy,
    mindamage,
    maxdamage,
    armor,
    attackspeed,
    attackspeedtext,
    prop1stat,
    prop1stattext,
    prop1value,
    prop1,
    prop2stat,
    prop2stattext,
    prop2value,
    prop2,
    prop3stat,
    prop3stattext,
    prop3value,
    prop3,    
    prop4stat,
    prop4stattext,
    prop4value,
    prop4,
    prop5stat,
    prop5stattext,
    prop5value,
    prop5,
    prop6stat,
    prop6stattext,
    prop6value,
    prop6,
    socketed,
    sockets,
    name,
    info,
    unidname,
    unidtooltip,
    tooltip,
    object,
    MAX
}

/* */
///Enum Elements/Attack Speed
//Enum attack speed
enum attackspeed{
    veryslow = 1,
    slow = 2,
    normal = 3,
    fast = 4,
    veryfast = 5
}
//Enum Elements
enum element
{
    physical,
    fire,
    ice,
    lightning
}

/* */
///Initialize Spells

//Enum Spells
enum spell
{
    firebolt,
    icebolt,
    lightningbolt,
    
    MAX
}

//Enum Spell Details
enum spelldetail
{
    name,
    sprite,
    mindamage,
    maxdamage,
    physical,
    magical,
    elemental,
    learned,
    cost,
    object,
    
    MAX

}

/* */
/*  */
