/// @description Death
event_inherited();
if (hp <= 0){
    hp = 0;
    obj_PlayerController.stats[stat.currentexperience] += (maxhp * 2)
    var drop = scr_LootTable(treasureclass);
    if (drop != 0){
        i = instance_create(x, y, drop);
        i.item[property.ilvl] = treasureclass;
    }
    instance_destroy();
}

