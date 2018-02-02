var roll;
var duplicatedstat;

if (random(1) < .3){
    if (random(1) < .3){
        duplicatedstat = 0;
        roll = (scr_AssignArmor3());
        if (argument_count == 0){
            return(roll);
        }
        else{
            for (i = 0; i < argument_count; i += 1){
                if (roll == argument[i]){
                    duplicatedstat = 1;
                    while (duplicatedstat == 1){
                        roll = (scr_AssignArmor3());
                        if (roll != argument[i]){
                            if ((argument[i] == stat.archerskills) or (argument[i] == stat.mageskills) or (argument[i] == stat.warriorskills)){
                                duplicatedstat = 1;
                            }
                            else{
                                duplicatedstat = 0;
                            }
                        }
                    }
                }
            }
            return(roll);
        }
    }
    else{
        duplicatedstat = 0;
        roll = (scr_AssignArmor2());
        if (argument_count == 0){
            return(roll);
        }
        else{
            for (i = 0; i < argument_count; i += 1){
                if (roll == argument[i]){
                    duplicatedstat = 1;
                    while (duplicatedstat == 1){
                        roll = (scr_AssignArmor2());
                        if (roll != argument[i]){
                            if ((argument[i] == stat.archerskills) or (argument[i] == stat.mageskills) or (argument[i] == stat.warriorskills)){
                                duplicatedstat = 1;
                            }
                            else{
                                duplicatedstat = 0;
                            }
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
    roll = (scr_AssignArmor1());
    if (argument_count == 0){
        return(roll);
    }
    else{
        for (i = 0; i < argument_count; i += 1){
            if (roll == argument[i]){
                duplicatedstat = 1;
                while (duplicatedstat == 1){
                    roll = (scr_AssignArmor1());
                    if (roll != argument[i]){
                        if ((argument[i] == stat.archerskills) or (argument[i] == stat.mageskills) or (argument[i] == stat.warriorskills)){
                                duplicatedstat = 1;
                            }
                            else{
                                duplicatedstat = 0;
                            }
                    }
                }
            }
        }
        return(roll);
    }
}
