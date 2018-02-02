/// @description Draw UI
var p = obj_PlayerController;
//UI Backdrop
x = __view_get( e__VW.XView, 0 );
y = __view_get( e__VW.YView, 0 )+448;

if (instance_exists(obj_PlayerParent)){
    //Health Orb
    draw_sprite_ext(spr_HealthOrb, -1, x + 18, y + 110, 1, obj_PlayerController.stats[stat.healthpercent]/100, 0, c_white, 1);
    //Mana Orb
    draw_sprite_ext(spr_ManaOrb, -1, x + 913, y + 110, 1, obj_PlayerController.stats[stat.manapercent]/100, 0, c_white, 1);
    //UI Backdrop
    draw_sprite(spr_UIBackdrop, 0, x, y)
    //XP Bar
    draw_healthbar(x + 240, y + 104, x + 719, y +111, p.stats[stat.experiencepercent], c_black, c_white, c_white, 0, false, true);
    //Create Stat-Up Button
    if (!instance_exists(obj_StatUpButton)){
        instance_create(__view_get( e__VW.XView, 0 ) + 208, __view_get( e__VW.YView, 0 ) + 544, obj_StatUpButton);
    }
    //Create Inventory Button
    if (!instance_exists(obj_InventoryButtonUI)){
        instance_create(__view_get( e__VW.XView, 0 ) + 768, __view_get( e__VW.YView, 0 ) + 544, obj_InventoryButtonUI);
    }
    //Create Skill Tree Button
    if (!instance_exists(obj_SkillTreeButtonUI)){
        instance_create(__view_get( e__VW.XView, 0 ) + 816, __view_get( e__VW.YView, 0 ) + 544, obj_SkillTreeButtonUI);
    }
    //Create Skill Select Buttons
    if (!instance_exists(obj_Skill1Button)){
        instance_create(x + 120, y + 56, obj_Skill1Button);
    }
    if (!instance_exists(obj_Skill2Button)){
        instance_create(x + 840, y + 56, obj_Skill2Button);
    }
}
//Position Belt
var x1 = 256;
for (i = 0; i < 8; i += 1){
    beltbutton[i].x = __view_get( e__VW.XView, 0 ) + x1
    beltbutton[i].y = __view_get( e__VW.YView, 0 ) + 528
    x1 += 64
}

