/// @description Death
event_inherited();
if (hp <= 0){
    hp = 0;
    //Grant XP
    obj_PlayerController.stats[stat.currentexperience] += (maxhp * 2)
    //Drop Items
    repeat (choose(2, 3, 4, 5, 6)){
        var drop = scr_BossLootTable(treasureclass);
        while (drop == 0){
            drop = scr_BossLootTable(treasureclass);
        }
        if (drop != 0){
            i = instance_create(x, y, drop);
            i.item[property.ilvl] = treasureclass;
        }
    }
    instance_destroy();
}

