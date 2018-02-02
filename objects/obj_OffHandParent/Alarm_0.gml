/// @description  Set Properties
if (item[property.object] == -1){
    item[property.equipslot] = equipslot.offhand;
    item[property.type] = type.offhand;
    item[property.rarity] = scr_AssignRarity(obj_PlayerController.stats[stat.magicfind]);
    if ((item[property.rarity] == rarity.set) or (item[property.rarity] == rarity.unique)){
        item[property.rarity] = rarity.rare;
    }
    item[property.identified] = scr_AssignIdentified(item[property.rarity]);
    
    //if magic
    if (item[property.rarity] == rarity.magic){
        //maybe only prefix
        var chance = choose(1, 2, 3);
        if (chance == 1){
            item[property.prop1stat] = scr_AssignArmor();
            item[property.prop1stattext] = scr_AssignPropText(item[property.prop1stat]);
            item[property.prop1value] = scr_AssignPropValue(item[property.prop1stat], item[property.ilvl]);
            item[property.prop1] = ("+" + string(item[property.prop1value]) + " " + string(item[property.prop1stattext] + "#"));
            }
        //maybe only suffix
        if (chance == 2){

            item[property.prop1stat] = scr_AssignArmor();
            item[property.prop1stattext] = scr_AssignPropText(item[property.prop1stat]);
            item[property.prop1value] = scr_AssignPropValue(item[property.prop1stat], item[property.ilvl]);
            item[property.prop1] = ("+" + string(item[property.prop1value]) + " " + string(item[property.prop1stattext] + "#"));
        }
        //maybe prefix and suffix
        if (chance == 3){
            item[property.prop1stat] = scr_AssignArmor();
            item[property.prop1stattext] = scr_AssignPropText(item[property.prop1stat]);
            item[property.prop1value] = scr_AssignPropValue(item[property.prop1stat], item[property.ilvl]);
            item[property.prop1] = ("+" + string(item[property.prop1value]) + " " + string(item[property.prop1stattext] + "#"));
            
            item[property.prop2stat] = scr_AssignArmor(item[property.prop1stat]);
            item[property.prop2stattext] = scr_AssignPropText(item[property.prop2stat]);
            item[property.prop2value] = scr_AssignPropValue(item[property.prop2stat], item[property.ilvl]);
            item[property.prop2] = ("+" + string(item[property.prop2value]) + " " + string(item[property.prop2stattext] + "#"));
        }
    }
    //If Rare
    else if (item[property.rarity] == rarity.rare){
            //prop1
            item[property.prop1stat] = scr_AssignArmor();
            item[property.prop1stattext] = scr_AssignPropText(item[property.prop1stat]);
            item[property.prop1value] = scr_AssignPropValue(item[property.prop1stat], item[property.ilvl]);
            item[property.prop1] = ("+" + string(item[property.prop1value]) + " " + string(item[property.prop1stattext] + "#"));
            //prop2
            item[property.prop2stat] = scr_AssignArmor(item[property.prop1stat]);
            item[property.prop2stattext] = scr_AssignPropText(item[property.prop2stat]);
            item[property.prop2value] = scr_AssignPropValue(item[property.prop2stat], item[property.ilvl]);
            item[property.prop2] = ("+" + string(item[property.prop2value]) + " " + string(item[property.prop2stattext] + "#"));
            //prop3
            item[property.prop3stat] = scr_AssignArmor(item[property.prop1stat], item[property.prop2stat]);
            item[property.prop3stattext] = scr_AssignPropText(item[property.prop3stat]);
            item[property.prop3value] = scr_AssignPropValue(item[property.prop3stat], item[property.ilvl]);   
            item[property.prop3] = ("+" + string(item[property.prop3value]) + " " + string(item[property.prop3stattext] + "#"));
            if (random(1) <= .75){
                //maybe prop4
                item[property.prop4stat] = scr_AssignArmor(item[property.prop1stat], item[property.prop2stat], item[property.prop3stat]);
                item[property.prop4stattext] = scr_AssignPropText(item[property.prop4stat]);
                item[property.prop4value] = scr_AssignPropValue(item[property.prop4stat], item[property.ilvl]);
                item[property.prop4] = ("+" + string(item[property.prop4value]) + " " + string(item[property.prop4stattext] + "#"));            
                if (random(1) <= .5){
                    //maybe prop5
                    item[property.prop5stat] = scr_AssignArmor(item[property.prop1stat], item[property.prop2stat], item[property.prop3stat], item[property.prop4stat]);
                    item[property.prop5stattext] = scr_AssignPropText(item[property.prop5stat]);
                    item[property.prop5value] = scr_AssignPropValue(item[property.prop5stat], item[property.ilvl]);
                    item[property.prop5] = ("+" + string(item[property.prop5value]) + " " + string(item[property.prop5stattext] + "#"));
                    if (random(1) <= .25){
                        //maybe prop6        
                        item[property.prop6stat] = scr_AssignArmor(item[property.prop1stat], item[property.prop2stat], item[property.prop3stat], item[property.prop4stat], item[property.prop5stat]);
                        item[property.prop6stattext] = scr_AssignPropText(item[property.prop6stat]);
                        item[property.prop6value] = scr_AssignPropValue(item[property.prop6stat], item[property.ilvl]);
                        item[property.prop6] = ("+" + string(item[property.prop6value]) + " " + string(item[property.prop6stattext] + "#"));
                }
            }
        }
    }    
    
}

