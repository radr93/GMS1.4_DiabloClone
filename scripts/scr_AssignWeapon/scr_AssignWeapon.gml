var roll;
var duplicatedstat;

if (random(1) < .3){
    if (random(1) < .3){
        duplicatedstat = 0;
        roll = (scr_AssignWeapon3());
        if (argument_count == 0){
            return(roll);
        }
        else{
            for (i = 0; i < argument_count; i += 1){
                if (roll == argument[i]){
                    duplicatedstat = 1;
                    while (duplicatedstat == 1){
                        roll = (scr_AssignWeapon3());
                        if (roll != argument[i]){
                            duplicatedstat = 0;
                        }
                    }
                }
            }
            return(roll);
        }
    }
    else{
        duplicatedstat = 0;
        roll = (scr_AssignWeapon2());
        if (argument_count == 0){
            return(roll);
        }
        else{
            for (i = 0; i < argument_count; i += 1){
                if (roll == argument[i]){
                    duplicatedstat = 1;
                    while (duplicatedstat == 1){
                        roll = (scr_AssignWeapon2());
                        if (roll != argument[i]){
                            duplicatedstat = 0;
                        }
                    }
                }
            }
            return(roll);
        }
    }
}
else{
    duplicatedstat = 0;
    roll = (scr_AssignWeapon1());
    if (argument_count == 0){
        return(roll);
    }
    else{
        for (i = 0; i < argument_count; i += 1){
            if (roll == argument[i]){
                duplicatedstat = 1;
                while (duplicatedstat == 1){
                    roll = (scr_AssignWeapon1());
                    if (roll != argument[i]){
                        duplicatedstat = 0;
                    }
                }
            }
        }
        return(roll);
    }
}
