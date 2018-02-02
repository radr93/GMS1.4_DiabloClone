/// @description Take Damage

var p = obj_PlayerController;
hp = hp - round(random_range(p.activemindamage, p.activemaxdamage));
with other{
    instance_destroy();
}

