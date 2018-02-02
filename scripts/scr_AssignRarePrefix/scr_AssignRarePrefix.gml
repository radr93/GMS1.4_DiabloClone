if (random(1) <= .5){
    var prefix = choose("Death",    "Wretched", "Atrocious",    "Vicious",  "Ornate",       "Excessive",    "Sever",        "Gloat",
                        "Violent",  "Doom",     "Annihilation", "Gore",      "Eradication",  "Extinction",    "Dissolution",  "Oblivion");
}
else if (random(1) <= .5){
    var prefix = choose("Mortality","Necrosis", "Atrocious",    "Silence",  "Paradise",     "Sleep",        "Destruction",  "Gloat",
                        "Parting",  "Tomb",     "Ruination",    "Ruin",     "Passing",      "Eternal",      "Departure",    "Downfall");
}
else{
    var prefix = choose("Hell",     "Flesh",    "Sinew",        "Visceral", "Deadly",       "Fatal",        "Savage",       "Baneful",
                        "Ruthless", "Lethal",   "Skeletal",     "Demonic",  "Injurious",    "Homicidal",    "Grim",         "Evil");
}

return(prefix);
