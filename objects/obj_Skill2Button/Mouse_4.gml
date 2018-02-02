/// @description Open Spellbook
//Create and Destroy Spellbook
global.clickingother = true;
if !(instance_exists(obj_Spellbook2)){
    instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), obj_Spellbook2);
}
else{
    with (obj_Spellbook2){
        instance_destroy();
    }
}

