/// @description  AI Movement
var p = obj_PlayerController;

if (distance_to_object(obj_PlayerParent) < 288){
    if (distance_to_object(obj_PlayerParent) > 48){
        mp_potential_step(obj_PlayerParent.x, obj_PlayerParent.y, movespeed, false);
    }
}

///Stat Checking
hppercent = (hp/maxhp) * 100
if (hp < 0){
   hp = 0
}

