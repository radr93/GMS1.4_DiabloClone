/// @description Create Item////////////////////////////////////////////////////////////////////////////////
/* Alarm[0] gives 1 step for the magicdroprate to change depending
on which monster was killed to influence the drop's rarity and equipslot */
event_inherited();

if (item[property.object] == -1){    
    //basics//////////////////////////////////////////////////////////////////////////////////
    item[property.object] = obj_LeatherGloves;
    item[property.sprite] = spr_LeatherGloves;
    item[property.equipsprite] = spr_EquipLeatherGloves;
    item[property.unidname] = "Leather Gloves";
    item[property.unidtooltip] = (item[property.unidname] + "#UNIDENTIFIED")

    //requirements
    item[property.reqstrength] = 10;
    
    //properties//////////////////////////////////////////////////////////////////////////////
    item[property.armor] = floor(random_range(7,14));    
    
    //if normal
    if (item[property.rarity] == rarity.normal){
        item[property.name] = "Leather Gloves";
        item[property.info] = "Simple leather gloves.";
        item[property.tooltip] = (item[property.name] + "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]" + "##" + item[property.info])
    }
    
    //if magic
    else if (item[property.rarity] == rarity.magic){
        item[property.info] = "Magical leather gloves."        
        //prefix
        if (item[property.prop1] != -1 and item[property.prop2] == -1){
            item[property.name] = ((scr_AssignMagicPrefix(item[property.prop1stat], item[property.prop1value])) + "Leather Gloves");
            item[property.tooltip] =   (item[property.name] +  "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]##" + 
                                        item[property.prop1] + "#" + item[property.info])
            }
        //suffix
        else if (item[property.prop1] == -1 and item[property.prop2] != -1){
            item[property.name] = ("Leather Gloves" + (scr_AssignMagicSuffix(item[property.prop2stat], item[property.prop2value])));
            item[property.tooltip] =   (item[property.name] +  "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]##" + 
                                        item[property.prop2] + "#" + item[property.info])
        }
        //prefix and suffix
        else if (item[property.prop1] != -1 and item[property.prop2] != -1){
            item[property.name] = ((scr_AssignMagicPrefix(item[property.prop1stat], item[property.prop1value])) + "Leather Gloves" + (scr_AssignMagicSuffix(item[property.prop2stat], item[property.prop2value])));
            item[property.tooltip] =   (item[property.name] +  "##Required Strength: " + string(item[property.reqstrength]) + "#[" + string(item[property.armor]) + " Armor]##" + 
                                        item[property.prop1] + item[property.prop2] + "#" + item[property.info])
        }
    }    
    //if rare
    else if (item[property.rarity] == rarity.rare){
        item[property.info] = "Powerful leather gloves."
        item[property.name] = ((scr_AssignRarePrefix()) + (scr_AssignRareSuffix(item[property.type])) + "#LeatherGloves")
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
}

/* */
/*  */
