/*
argument0 = magicfind (player)
*/

var magicfind, setdroprate, uniquedroprate, raredroprate, magicdroprate;

///Initialize MF
if (argument0 = 0){
    magicfind = 1;
}
else if (argument0 < 100){
    magicfind = (1+(argument0/100));
}
else{
    magicfind = (1+(argument0/100));
}

///Chance to generate set
setdroprate = (0.5/100);

///Chance to generate unique
uniquedroprate = (0.5/100);

///Chance to generate rare
if (magicfind <= 5){
    raredroprate = (4/100);
    }
if (magicfind > 5){
    raredroprate = (3.5/100);
    }

///Chance to generate magic    
if (magicfind <= 3){
    magicdroprate = (20/100);
    }
if (magicfind > 3){
    magicdroprate = (10/100);
    }

if (random(1) <= (magicdroprate * magicfind)){
    //Chance for set drop
    if (random(1) <= (setdroprate * magicfind)){
        return(rarity.set);
    }
    //Chance for unique drop
    else if (random(1) <= (uniquedroprate * magicfind)){
        return(rarity.unique);
    }
    //Chance for rare drop
    else if (random(1) <= (raredroprate * magicfind)){
        return(rarity.rare);
    }
    //Chance for magic drop
    else{
        return(rarity.magic);
    }
}

//Normal
else{
    return(rarity.normal);
}
