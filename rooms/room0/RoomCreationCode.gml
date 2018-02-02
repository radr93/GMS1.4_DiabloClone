instance_create(128, 320, obj_PlayerGenerator);
instance_create(128, 320, obj_MovePlayer);
instance_create(128, 320, obj_BookFirebolt);
instance_create(128, 320, obj_BookIcebolt);

///Draw Grass
var xx=0, yy=0;
for (xx=0; yy=room_height; xx+=32){
    tile_add(tiles_Pristine1,2,2,32,32,xx,yy,0)
    if (xx == room_width){
        yy+=32;
    }
}