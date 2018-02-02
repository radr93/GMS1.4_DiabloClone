/// @description Movement
var mousedistance = point_distance(x, y, obj_MovePlayer.x, obj_MovePlayer.y);

move_towards_point(obj_MovePlayer.x, obj_MovePlayer.y, min(4, mousedistance));



///Cast Spells

var p = obj_PlayerController;

if (global.dontcast = false)
{
    if (mouse_check_button_pressed(mb_left))
    {
        if (keyboard_check(vk_shift))
        {
            if (p.stats[stat.currentmana] >= p.activespellcost)       //if mana > cost
            {
                if (!p.activespell = 0)                               //if you have a spell selected
                {
                    instance_create(x, y, p.activespell);             //create animation
                    p.stats[stat.currentmana] -= p.activespellcost;   //reduce mana
                    exit;
                }
            }
        }
    }
    
    if (keyboard_check_pressed(vk_shift))
    {
        if (mouse_check_button(mb_left))
        {
            if (p.stats[stat.currentmana] >= p.activespellcost)       //if mana > cost
            {
                if (!p.activespell = 0)                               //if you have a spell selected
                {
                    instance_create(x, y, p.activespell);             //create animation
                    p.stats[stat.currentmana] -= p.activespellcost;   //reduce mana
                    exit;
                }
            }
        }
    }
    
}

