/// @description Attack
var p = obj_PlayerController;
if (global.dontcast = false) and (global.clickingother = false){
    if (p.stats[stat.currentmana] >= p.activespellcost){
        if (p.activespell != -1){
            global.clickingother = true;
            global.dontcast = true;
            instance_create(obj_PlayerParent.x, obj_PlayerParent.y, p.activespell);
            p.stats[stat.currentmana] -= p.activespellcost;
        }
    }
}


