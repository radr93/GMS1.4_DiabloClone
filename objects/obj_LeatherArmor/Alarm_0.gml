/// @description Create Item////////////////////////////////////////////////////////////////////////////////
/* Alarm[0] gives 1 step for the magicdroprate to change depending
on which monster was killed to influence the drop's rarity and equipslot */
event_inherited();

if (item[property.object] == -1){    
    //basics//////////////////////////////////////////////////////////////////////////////////
    item[property.object] = obj_LeatherArmor;
    item[property.sprite] = spr_LeatherArmor;
    item[property.equipsprite] = spr_EquipLeatherArmor;
    item[property.unidname] = "Leather Armor";
    item[property.unidtooltip] = (item[property.unidname] + "#UNIDENTIFIED")

    //requirements
    item[property.reqstrength] = 15;
    
    //properties//////////////////////////////////////////////////////////////////////////////
    item[property.armor] = floor(random_range(9,20));    
    
    //if normal
    if (item[property.rarity] == rarity.normal){
        item[property.name] = "Leather Armor";
        item[property.info] = "Basic light armor#made of cowhide.";
        item[property.tooltip] = (item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]" + "##" + item[property.info])
    }
    
    //if magic
    else if (item[property.rarity] == rarity.magic){
        item[property.info] = "Magical light armor#made of cowhide."        
        //prefix
        if (item[property.prop1] != -1 and item[property.prop2] == -1){
            item[property.name] = ((scr_AssignMagicPrefix(item[property.prop1stat], item[property.prop1value])) + "Leather Armor");
            item[property.tooltip] =   (item[property.name] +  "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]##" + 
                                        item[property.prop1] + "#" + item[property.info])
            }
        //suffix
        else if (item[property.prop1] == -1 and item[property.prop2] != -1){
            item[property.name] = ("Leather Armor" + (scr_AssignMagicSuffix(item[property.prop2stat], item[property.prop2value])));
            item[property.tooltip] =   (item[property.name] +  "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]##" + 
                                        item[property.prop2] + "#" + item[property.info])
        }
        //prefix and suffix
        else if (item[property.prop1] != -1 and item[property.prop2] != -1){
            item[property.name] = ((scr_AssignMagicPrefix(item[property.prop1stat], item[property.prop1value])) + "Leather Armor" + (scr_AssignMagicSuffix(item[property.prop2stat], item[property.prop2value])));
            item[property.tooltip] =   (item[property.name] +  "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]##" + 
                                        item[property.prop1] + item[property.prop2] + "#" + item[property.info])
        }
    }    
    //if rare
    else if (item[property.rarity] == rarity.rare){
        item[property.info] = "Powerful light armor#made of cowhide."
        item[property.name] = ((scr_AssignRarePrefix()) + (scr_AssignRareSuffix(item[property.type])) + "#Leather Armor")
        item[property.tooltip] =   (item[property.name] +  "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]##" + 
                                    item[property.prop1] + item[property.prop2] + item[property.prop3] + "#" + item[property.info])
                                
        //maybe prop4
        if (item[property.prop4] != -1){
            item[property.tooltip] =   (item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]##" +  
                                        item[property.prop1] + item[property.prop2] + item[property.prop3] + item[property.prop4] + "#" + item[property.info])            
            }
            //maybe prop5
            if (item[property.prop5] != -1){
                item[property.tooltip] =   (item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]##" + 
                                            item[property.prop1] + item[property.prop2] + item[property.prop3] + item[property.prop4] + item[property.prop5] + "#" + item[property.info])                
            }
                //maybe prop6        
                if (item[property.prop6] != -1){
                    item[property.tooltip] =   (item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) +  "#[" + string(item[property.armor]) + " Armor]##" +
                                                item[property.prop1] + item[property.prop2] + item[property.prop3] + item[property.prop4] + item[property.prop5] + item[property.prop6] + "#" + item[property.info])
                }
    }
    //if unique
    if (item[property.rarity] == rarity.unique){
        item[property.reqlevel] = 7;
        
        item[property.prop1stat] = stat.iceresist;
        item[property.prop1stattext] = scr_AssignPropText(item[property.prop1stat]);
        item[property.prop1value] = floor(random_range(30,50));
        item[property.prop1] = ("+" + string(item[property.prop1value]) + string(item[property.prop1stattext]));
        
        item[property.prop2stat] = stat.maxmana;
        item[property.prop2stattext] = scr_AssignPropText(item[property.prop2stat]);
        item[property.prop2value] = floor(random_range(15,25));
        item[property.prop2] = ("+" + string(item[property.prop2value]) + string(item[property.prop2stattext]));
        
        item[property.prop3stat] = stat.manaregen;
        item[property.prop3stattext] = scr_AssignPropText(item[property.prop3stat]);
        item[property.prop3value] = floor(random_range(15,25));
        item[property.prop3] = ("+" + string(item[property.prop3value]) + string(item[property.prop3stattext]));
            
        item[property.info] = "This leather is cold to the touch, yet#it makes your body radiate with warmth.";
        item[property.unidname] = "Leather Armor";
        item[property.unidtooltip] = (item[property.unidname] + "#UNIDENTIFIED")
        item[property.sprite] = spr_LeatherArmorIcewrap;
        item[property.name] = "Icewrap#" + "Leather Armor";
        item[property.tooltip] =   (item[property.name] + "##Required Level: " + string(item[property.reqlevel]) + "#Required Strength: " + string(item[property.reqstrength]) +
                                     "#[" + string(item[property.armor]) + " Armor]" + "##" + item[property.prop1] + "#" + item[property.prop2] + "#" + item[property.prop3] + "##" + item[property.info])
        }
    //if set
    else if (item[property.rarity] == rarity.set){
        item[property.reqlevel] = 12;
    
        item[property.prop1stat] = stat.allresist;
        item[property.prop1stattext] = scr_AssignPropText(item[property.prop1stat]);
        item[property.prop1value] = floor(random_range(10,20));
        item[property.prop1] = ("+" + string(item[property.prop1value]) + string(item[property.prop1stattext]));
        
        item[property.prop2stat] = stat.maxhealth;
        item[property.prop2stattext] = scr_AssignPropText(item[property.prop2stat]);
        item[property.prop2value] = floor(random_range(25,50));
        item[property.prop2] = ("+" + string(item[property.prop2value]) + string(item[property.prop2stattext]));

        item[property.info] = "The dried blood on the leather#is purely of vanquished foes.";
        item[property.unidname] = "Leather Armor";
        item[property.unidtooltip] = (item[property.unidname] + "#UNIDENTIFIED")
        item[property.sprite] = spr_LeatherArmorSurvivorsShroud;
        item[property.name] = "Survivors' Shroud#" + "Leather Armor";
        item[property.tooltip] =   (item[property.name] + "##Required Level:" + string(item[property.reqlevel]) + "#Required Strength:" + string(item[property.reqstrength]) +
                                    "#[" + string(item[property.armor]) + " Armor]##" + item[property.prop1] + "#" + item[property.prop2] + "##Survivors' Raiment Set:#Hood#Shroud#Treads##" + + item[property.info])           
    }
}

/* */
/*  */
