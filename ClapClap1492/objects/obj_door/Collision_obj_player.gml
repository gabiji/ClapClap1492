if obj_player.bird_obtained = true
{
if targetRoom != noone {
    var fade = instance_create_layer(0, 0, "Instances", obj_fadeController);
    fade.nextRoom = targetRoom;
    fade.spawnX = spawnX;
    fade.spawnY = spawnY;
}
}
//Sam Park! ! ! 