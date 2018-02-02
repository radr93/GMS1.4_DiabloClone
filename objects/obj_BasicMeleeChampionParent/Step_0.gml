/// @description Death
event_inherited();
if (hp <= 0){
    hp = 0;
    //Grant XP
    obj_PlayerController.stats[stat.currentexperience] += (maxhp * 2)
    //Drop Potions
    repeat(choose(4,6)){
        var drop = scr_PotionDrop(treasureclass);
        i = instance_create(x, y, drop);
        i.item[property.ilvl] = treasureclass;
    }
    //Drop Items
    var drop = scr_BossLootTable(treasureclass);
    while (drop == 0){
        drop = scr_BossLootTable(treasureclass);
    }
    if (drop != 0){
        i = instance_create(x, y, drop);
        i.item[property.ilvl] = treasureclass;
    }
    instance_destroy();
}

