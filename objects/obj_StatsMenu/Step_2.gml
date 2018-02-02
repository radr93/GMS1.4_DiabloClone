/// @description Draw Stat Buttons
var p = obj_PlayerController;
if (p.stats[stat.statpoints] > 0){
    if (!instance_exists(obj_IncreaseStrength)){
        instance_create(169, 132, obj_IncreaseStrength);
    }
    if (!instance_exists(obj_IncreaseDexterity)){
        instance_create(169, 180, obj_IncreaseDexterity);
    }
    if (!instance_exists(obj_IncreaseVitality)){
        instance_create(169, 228, obj_IncreaseVitality);
    }
    if (!instance_exists(obj_IncreaseEnergy)){
        instance_create(169, 276, obj_IncreaseEnergy);
    }
}

