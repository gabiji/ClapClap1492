//randomised sound for vase breaking 
if irandom(1) == 0 {
    audio_play_sound(snd_vasebreak1, 1, false);
} else {
    audio_play_sound(snd_vasebreak2, 1, false);
}
// probablity is currently 75% coin drop 25% heart drop 
var roll = irandom(99); 
if roll < 75 {
    // Coin drop
    instance_create_layer(x, y, "Instances", obj_coinGold);
} else {
    // Heart drop
    instance_create_layer(x, y, "Instances", obj_heartPickup);
}

instance_destroy();
//i'd make this support more but for now we only have 2 pickups 

//Sam Park