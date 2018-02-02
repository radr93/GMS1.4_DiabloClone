/// @description Initialize Belt Array
for (i = 0; i < 8; i += 1){
    beltbutton[i] = instance_create(0, 0, obj_BeltButton);
    beltbutton[i].slot = i;
    for (j = 0; j < property.MAX; j += 1){
        global.belt[i, j] = -1;
    }
}

