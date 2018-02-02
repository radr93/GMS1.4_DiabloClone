/// @description Draw Stats
var p = obj_PlayerController;
//Draw Menu Background
draw_sprite(spr_StatsMenu, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));

//Set Alignment 
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(font_Tooltip);
draw_set_colour(c_white);

//Draw Character Name

//Draw Character Class
if (p.stats[stat.class] == classes.archer){
    draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+48, string_hash_to_newline("ARCHER"));
}
else if (p.stats[stat.class] == classes.mage){
    draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+48, string_hash_to_newline("MAGE"));
}
else if (p.stats[stat.class] == classes.warrior){
    draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+48, string_hash_to_newline("WARRIOR"));
}

//Draw Level
draw_text(__view_get( e__VW.XView, 0 )+76, __view_get( e__VW.YView, 0 )+96, string_hash_to_newline("LEVEL"));
draw_text(__view_get( e__VW.XView, 0 )+151, __view_get( e__VW.YView, 0 )+96, string_hash_to_newline(string(p.stats[stat.level])));

//Draw Current EXP
draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+96, string_hash_to_newline("EXP"));
draw_text(__view_get( e__VW.XView, 0 )+343, __view_get( e__VW.YView, 0 )+96, string_hash_to_newline(string(round(p.stats[stat.currentexperience]))));

//Draw Strength
draw_text(__view_get( e__VW.XView, 0 )+76, __view_get( e__VW.YView, 0 )+144, string_hash_to_newline("STRENGTH"));
draw_text(__view_get( e__VW.XView, 0 )+151, __view_get( e__VW.YView, 0 )+144, string_hash_to_newline(string(p.stats[stat.strength])));

//Draw Max EXP
draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+144, string_hash_to_newline("TO LEVEL"));
draw_text(__view_get( e__VW.XView, 0 )+343, __view_get( e__VW.YView, 0 )+144, string_hash_to_newline(string(round(p.stats[stat.maxexperience]))));

//Draw Dexterity
draw_text(__view_get( e__VW.XView, 0 )+76, __view_get( e__VW.YView, 0 )+192, string_hash_to_newline("DEXTERITY"));
draw_text(__view_get( e__VW.XView, 0 )+151, __view_get( e__VW.YView, 0 )+192, string_hash_to_newline(string(p.stats[stat.dexterity])));

//Draw Min Damage
draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+192, string_hash_to_newline("MIN DAMAGE"));
draw_text(__view_get( e__VW.XView, 0 )+343, __view_get( e__VW.YView, 0 )+192, string_hash_to_newline(string(p.stats[stat.totalmindamage])));

//Draw Vitality
draw_text(__view_get( e__VW.XView, 0 )+76, __view_get( e__VW.YView, 0 )+240, string_hash_to_newline("VITALITY"));
draw_text(__view_get( e__VW.XView, 0 )+151, __view_get( e__VW.YView, 0 )+240, string_hash_to_newline(string(p.stats[stat.vitality])));

//Draw Max Damage
draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+240, string_hash_to_newline("MAX DAMAGE"));
draw_text(__view_get( e__VW.XView, 0 )+343, __view_get( e__VW.YView, 0 )+240, string_hash_to_newline(string(p.stats[stat.totalmaxdamage])));

//Draw Magic
draw_text(__view_get( e__VW.XView, 0 )+76, __view_get( e__VW.YView, 0 )+288, string_hash_to_newline("ENERGY"));
draw_text(__view_get( e__VW.XView, 0 )+151, __view_get( e__VW.YView, 0 )+288, string_hash_to_newline(string(p.stats[stat.energy])));

//Draw Health
draw_text(__view_get( e__VW.XView, 0 )+254, __view_get( e__VW.YView, 0 )+288, string_hash_to_newline("HEALTH"));
draw_text(__view_get( e__VW.XView, 0 )+304, __view_get( e__VW.YView, 0 )+288, string_hash_to_newline(string(round(p.stats[stat.currenthealth]))));
draw_text(__view_get( e__VW.XView, 0 )+343, __view_get( e__VW.YView, 0 )+288, string_hash_to_newline(string(p.stats[stat.totalhealth])));

//Draw Stat Points
draw_text(__view_get( e__VW.XView, 0 )+76, __view_get( e__VW.YView, 0 )+336, string_hash_to_newline("STAT POINTS"));
draw_text(__view_get( e__VW.XView, 0 )+151, __view_get( e__VW.YView, 0 )+336, string_hash_to_newline(string(p.stats[stat.statpoints])));

//Draw Mana
draw_text(__view_get( e__VW.XView, 0 )+254, __view_get( e__VW.YView, 0 )+336, string_hash_to_newline("MANA"));
draw_text(__view_get( e__VW.XView, 0 )+304, __view_get( e__VW.YView, 0 )+336, string_hash_to_newline(string(round(p.stats[stat.currentmana]))));
draw_text(__view_get( e__VW.XView, 0 )+343, __view_get( e__VW.YView, 0 )+336, string_hash_to_newline(string(p.stats[stat.totalmana])));

//Draw Armor
draw_text(__view_get( e__VW.XView, 0 )+76, __view_get( e__VW.YView, 0 )+384, string_hash_to_newline("ARMOR"));
draw_text(__view_get( e__VW.XView, 0 )+151, __view_get( e__VW.YView, 0 )+384, string_hash_to_newline(string(p.stats[stat.armor])));

//Draw Fire Resist
draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+384, string_hash_to_newline("FIRE RESIST"));
draw_text(__view_get( e__VW.XView, 0 )+343, __view_get( e__VW.YView, 0 )+384, string_hash_to_newline(string(p.stats[stat.totalfireresist])));

//Draw Life Regen
draw_text(__view_get( e__VW.XView, 0 )+76, __view_get( e__VW.YView, 0 )+432, string_hash_to_newline("LIFE REGEN"));
draw_text(__view_get( e__VW.XView, 0 )+151, __view_get( e__VW.YView, 0 )+432, string_hash_to_newline(string(p.stats[stat.liferegen])));

//Draw Ice Resist
draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+432, string_hash_to_newline("ICE RESIST"));
draw_text(__view_get( e__VW.XView, 0 )+343, __view_get( e__VW.YView, 0 )+432, string_hash_to_newline(string(p.stats[stat.totaliceresist])));

//Draw Life Regen
draw_text(__view_get( e__VW.XView, 0 )+76, __view_get( e__VW.YView, 0 )+480, string_hash_to_newline("MANA REGEN"));
draw_text(__view_get( e__VW.XView, 0 )+151, __view_get( e__VW.YView, 0 )+480, string_hash_to_newline(string(p.stats[stat.manaregen])));

//Draw Light Resist
draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+480, string_hash_to_newline("LIGHT RESIST"));
draw_text(__view_get( e__VW.XView, 0 )+343, __view_get( e__VW.YView, 0 )+480, string_hash_to_newline(string(p.stats[stat.totallightningresist])));

//Draw Attack Rating
draw_text(__view_get( e__VW.XView, 0 )+76, __view_get( e__VW.YView, 0 )+528, string_hash_to_newline("ATTACK RATING"));
draw_text(__view_get( e__VW.XView, 0 )+151, __view_get( e__VW.YView, 0 )+528, string_hash_to_newline(string(p.stats[stat.attackrating])));

//Draw POISON Resist
draw_text(__view_get( e__VW.XView, 0 )+270, __view_get( e__VW.YView, 0 )+528, string_hash_to_newline("POISON RESIST"));
draw_text(__view_get( e__VW.XView, 0 )+343, __view_get( e__VW.YView, 0 )+528, string_hash_to_newline(string(p.stats[stat.totalpoisonresist])));

//Reset Alignment 
draw_set_halign(fa_left);
draw_set_valign(fa_top);

