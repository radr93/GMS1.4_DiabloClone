/// @description Change self into character depending on class choice
if (obj_PlayerController.stats[stat.class] = classes.archer){
    instance_create(x, y, obj_Archer);
    instance_destroy();
}
else if (obj_PlayerController.stats[stat.class] = classes.mage){
    instance_create(x, y, obj_Mage);
    instance_destroy();
}
else if (obj_PlayerController.stats[stat.class] = classes.warrior){
    instance_create(x, y, obj_Warrior);
    instance_destroy();
}

