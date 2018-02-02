/// @description argument0 == equipslot

var p = obj_PlayerController;
var g = obj_Global;

if (g.itemheld[property.identified] == true){
    if (p.stats[stat.level] < g.itemheld[property.reqlevel]){
        return(0);
    }
    
    if (p.stats[stat.strength] < g.itemheld[property.reqstrength]){
        return(0);
    }
    
    if (p.stats[stat.dexterity] < g.itemheld[property.reqdexterity]){
        return(0);
    }
    
    if (p.stats[stat.energy] < g.itemheld[property.reqenergy]){
        return(0);
    }
    
    if ((argument0 != equipslot.ring1) and (argument0 != equipslot.ring2)){
        if (g.itemheld == -1){
            return(1);
        }
    
        if (g.itemheld[property.equipslot] == argument0){
            return(1);
        }
        
        else{
            return(0);
        }
    }
    if ((argument0 == equipslot.ring1) or (argument0 == equipslot.ring2)){
        if (g.itemheld == -1){
            return(1);
        }
    
        if (g.itemheld[property.equipslot] == equipslot.ring){
            return(1);
        }
    
        else{
            return(0);
        }
    }
    else{
       return(1);
    }
}
else{
    return(0);
}
