/// @description Destroy Self
if ((obj_PlayerController.stats[stat.statpoints] == 0) or (!instance_exists(obj_StatsMenu))){
    instance_destroy();
}

