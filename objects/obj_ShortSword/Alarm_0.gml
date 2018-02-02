/// @description Create Item////////////////////////////////////////////////////////////////////////////////
/* Alarm[0] gives 1 step for the magicdroprate to change depending
on which monster was killed to influence the drop's rarity and equipslot */
event_inherited();

if (item[property.object] == -1){
    //basics//////////////////////////////////////////////////////////////////////////////////
    item[property.type] = type.sword;
    item[property.object] = obj_ShortSword;
    item[property.sprite] = spr_ShortSword;
    item[property.equipsprite] = spr_EquipShortSword;
    item[property.unidname] = "Short Sword";
    item[property.unidtooltip] = (item[property.unidname] + "#UNIDENTIFIED")

    //requirements
    item[property.reqstrength] = 15;
    item[property.reqdexterity] = 15;
    
    //properties//////////////////////////////////////////////////////////////////////////////
    item[property.mindamage] = floor(random_range(4,8));
    item[property.maxdamage] = floor(random_range(10,16));
    item[property.attackspeed] = attackspeed.fast;
    item[property.attackspeedtext] = scr_AssignAttackSpeedText(item[property.attackspeed]);
    
    //if normal
    if (item[property.rarity] == rarity.normal){
        item[property.name] = "Short Sword";
        item[property.info] = "A basic blade made of steel.";
        item[property.tooltip] =(item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#Required Dexterity: " + string(item[property.reqdexterity]) +
                                "#" + item[property.attackspeedtext] + "[" + string(item[property.mindamage]) + " - " + string(item[property.maxdamage]) + " Damage]" + "##" +
                                item[property.info])
    }
    
    //if magic
    else if (item[property.rarity] == rarity.magic){
        item[property.info] = "A magical blade made of steel.";      
        //prefix
        if (item[property.prop1] != -1 and item[property.prop2] == -1){
            item[property.name] = ((scr_AssignMagicPrefix(item[property.prop1stat], item[property.prop1value])) + "Short Sword");
            item[property.tooltip] =(item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#Required Dexterity: " + string(item[property.reqdexterity]) +
                                    "#" + item[property.attackspeedtext] + "[" + string(item[property.mindamage]) + " - " + string(item[property.maxdamage]) + " Damage]" + "##" +
                                    item[property.prop1] + "#" + item[property.info])
            }
        //suffix
        else if (item[property.prop1] == -1 and item[property.prop2] != -1){
            item[property.name] = ("Short Sword" + (scr_AssignMagicSuffix(item[property.prop2stat], item[property.prop2value])));
            item[property.tooltip] =(item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#Required Dexterity: " + string(item[property.reqdexterity]) +
                                    "#" + item[property.attackspeedtext] + "[" + string(item[property.mindamage]) + " - " + string(item[property.maxdamage]) + " Damage]" + "##" +
                                    item[property.prop2] + "#" + item[property.info])
        }
        //prefix and suffix
        else if (item[property.prop1] != -1 and item[property.prop2] != -1){
            item[property.name] = ((scr_AssignMagicPrefix(item[property.prop1stat], item[property.prop1value])) + "Short Sword" + (scr_AssignMagicSuffix(item[property.prop2stat], item[property.prop2value])));
            item[property.tooltip] =(item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#Required Dexterity: " + string(item[property.reqdexterity]) +
                                    "#" + item[property.attackspeedtext] + "[" + string(item[property.mindamage]) + " - " + string(item[property.maxdamage]) + " Damage]" + "##" +
                                    item[property.prop1] + item[property.prop2] + "#" + item[property.info])
        }
    }    
    //if rare
    else if (item[property.rarity] == rarity.rare){
        item[property.info] = "A powerful blade made of steel.";
        item[property.name] = ((scr_AssignRarePrefix()) + (scr_AssignRareSuffix(item[property.type])) + "#Short Sword")
        item[property.tooltip] =(item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#Required Dexterity: " + string(item[property.reqdexterity]) +
                                "#" + item[property.attackspeedtext] + "[" + string(item[property.mindamage]) + " - " + string(item[property.maxdamage]) + " Damage]" + "##" +
                                item[property.prop1] + item[property.prop2] + item[property.prop3] + "#" + item[property.info])
                                
        //maybe prop4
        if (item[property.prop4] != -1){
            item[property.tooltip] =(item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#Required Dexterity: " + string(item[property.reqdexterity]) +
                                    "#" + item[property.attackspeedtext] + "[" + string(item[property.mindamage]) + " - " + string(item[property.maxdamage]) + " Damage]" + "##" +
                                    item[property.prop1] + item[property.prop2] + item[property.prop3] + item[property.prop4] + "#" + item[property.info])            
            }
            //maybe prop5
            if (item[property.prop5] != -1){
                item[property.tooltip] =(item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#Required Dexterity: " + string(item[property.reqdexterity]) +
                                        "#" + item[property.attackspeedtext] + "[" + string(item[property.mindamage]) + " - " + string(item[property.maxdamage]) + " Damage]" + "##" +
                                        item[property.prop1] + item[property.prop2] + item[property.prop3] + item[property.prop4] + item[property.prop5] + "#" + item[property.info])                
            }
                //maybe prop6        
                if (item[property.prop6] != -1){
                    item[property.tooltip] =(item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#Required Dexterity: " + string(item[property.reqdexterity]) +
                                            "#" + item[property.attackspeedtext] + "[" + string(item[property.mindamage]) + " - " + string(item[property.maxdamage]) + " Damage]" + "##" +
                                            item[property.prop1] + item[property.prop2] + item[property.prop3] + item[property.prop4] + item[property.prop5] + item[property.prop6] + "#" + item[property.info])
                }
    }
    //if unique
    if (item[property.rarity] == rarity.unique){
        item[property.reqlevel] = 17;
        
        item[property.prop1stat] = stat.firedamage;
        item[property.prop1stattext] = scr_AssignPropText(item[property.prop1stat]);
        item[property.prop1value] = floor(random_range(10,20));
        item[property.prop1] = ("+" + string(item[property.prop1value]) + string(item[property.prop1stattext]));
        
        item[property.prop2stat] = stat.lifeleech;
        item[property.prop2stattext] = scr_AssignPropText(item[property.prop2stat]);
        item[property.prop2value] = floor(random_range(15,25));
        item[property.prop2] = ("+" + string(item[property.prop2value]) + string(item[property.prop2stattext]));
        
        item[property.prop3stat] = stat.liferegen;
        item[property.prop3stattext] = scr_AssignPropText(item[property.prop3stat]);
        item[property.prop3value] = floor(random_range(15,25));
        item[property.prop3] = ("+" + string(item[property.prop3value]) + string(item[property.prop3stattext]));
            
        item[property.info] = "Screams of the lives this blade#has claimed echo in your ears.";
        item[property.unidname] = "Short Sword";
        item[property.unidtooltip] = (item[property.unidname] + "#UNIDENTIFIED")
        item[property.sprite] = spr_ShortSwordBloodletter;
        item[property.name] = "Bloodletter#" + "Short Sword";
        item[property.tooltip] =(item[property.name] + "##Required Level: " + string(item[property.reqlevel]) + "#Required Strength: " + string(item[property.reqstrength]) + "#Required Dexterity: " + string(item[property.reqdexterity]) +
                                "#" + item[property.attackspeedtext] + "[" + string(item[property.mindamage]) + " - " + string(item[property.maxdamage]) + " Damage]" + "##" +
                                item[property.prop1] + "#" + item[property.prop2] + "#" + item[property.prop3] + "##" + item[property.info])
        }
    //if set
    else if (item[property.rarity] == rarity.set){
        item[property.reqlevel] = 19;
    
        item[property.prop1stat] = stat.lifeleech;
        item[property.prop1stattext] = scr_AssignPropText(item[property.prop1stat]);
        item[property.prop1value] = floor(random_range(10,20));
        item[property.prop1] = ("+" + string(item[property.prop1value]) + string(item[property.prop1stattext]));
        
        item[property.prop2stat] = stat.lifeperkill;
        item[property.prop2stattext] = scr_AssignPropText(item[property.prop2stat]);
        item[property.prop2value] = floor(random_range(25,50));
        item[property.prop2] = ("+" + string(item[property.prop2value]) + string(item[property.prop2stattext]));

        item[property.info] = "Bul Kathos always relished a good fight, up# until his dying breath...";
        item[property.unidname] = "Short Sword";
        item[property.unidtooltip] = (item[property.unidname] + "#UNIDENTIFIED")
        item[property.sprite] = spr_ShortSwordDoombringer;
        item[property.name] = "Bul-Kathos' Reaver#" + "Short Sword";
        item[property.tooltip] =(item[property.name] + "##Required Level: " + string(item[property.reqlevel]) + "#Required Strength: " + string(item[property.reqstrength]) + "#Required Dexterity: " + string(item[property.reqdexterity]) +
                                "#" + item[property.attackspeedtext] + "[" + string(item[property.mindamage]) + " - " + string(item[property.maxdamage]) + " Damage]" + "##" +
                                item[property.prop1] + "#" + item[property.prop2] + "##Bul-Kathos' Retribution Set:#Reaver#Destroyer##" + item[property.info])           
    }
}

/* */
/*  */
