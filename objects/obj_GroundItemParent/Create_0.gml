/// @description Initialize variables and position

angle = (random(360));
x = (random_range(x + -32, x + 32));
y = (random_range(y + -32, y + 32));

for (i = 0; i < property.MAX; i += 1){
    item[i] = -1;
}

//Ensure objects don't overlap on the ground when they spawn
var safetycheck = 0;
while (place_meeting(x, y, obj_GroundItemParent)){
    x = (random_range(x + -48, x + 48));
    y = (random_range(y + -48, y + 48));
    //Emergency escape if loop runs too long
    safetycheck += 1;
    if (safetycheck > 100){
        break;
    }
}

//Set alarm so item has 1 step to get iLvl for calculations in stat generation
alarm[0] = 1;

