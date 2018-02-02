/*  This script decides which treasure class to
    select from, if any. */

var drop, treasureclass, picks;
picks = 0;
drop = 0;
treasureclass = argument0;

if (treasureclass == 1){
    drop = scr_LootClass1();
    return(drop);
}
if (treasureclass == 2){
    drop = scr_LootClass2();
    return(drop);
}
if (treasureclass == 3){
    drop = scr_LootClass2();
    return(drop);
}
if (treasureclass == 4){
    drop = scr_LootClass2();
    return(drop);
}
if (treasureclass == 5){
    drop = scr_LootClass2();
    return(drop);
}
else{
    show_debug_message("scr_LootTable malfunction! Unable to find correct Treasure Class! TC: " + string(treasureclass));
}
