//Basic clap movement
var move = clap_speed; //running code 
if keyboard_check(vk_shift) { 
    move *= 1.5;
}
var moving = false;
// Movement code
if keyboard_check(ord("W")) {
    y -= move;
    direction = 180;
    sprite_index = spr_ClapUp;
    moving = true;
	audio_play_sound(snd_walking, 1, true);
}
if keyboard_check(ord("A")) {
    x -= move;
    direction = 270;
    sprite_index = spr_ClapHorizontal;
    image_xscale = -0.5; //optimization at its finest
    moving = true;
	audio_play_sound(snd_walking, 1, true);
}
if keyboard_check(ord("S")) {
    y += move;
    direction = 0;
    sprite_index = spr_ClapDown;
    moving = true;
	audio_play_sound(snd_walking, 1, true);
}
if keyboard_check(ord("D")) {
    x += move;
    direction = 90;
    sprite_index = spr_ClapHorizontal;
    image_xscale = 0.5;
    moving = true;
	audio_play_sound(snd_walking, 1, true);
}
// animation control
if moving {
    clap_moving = true;
    image_speed = 1;

} else {
    clap_moving = false;
    image_speed = 0;
    image_index = 0; //This was far easier than i'd imagined
	audio_stop_sound(snd_walking);
}
// collision detection!
if place_meeting(x + move, y, obj_collider) {
    x -= move;
}
if place_meeting(x, y + move, obj_collider) {
    y -= move;
}
if place_meeting(x - move, y, obj_collider) {
    x += move;
}
if place_meeting(x, y - move, obj_collider) {
    y += move;
}
//attack code
if keyboard_check_pressed(vk_space) {
    var swordX = x;
    var swordY = y;
    var swordOffset = 90; // distance in front of player
    switch (direction) {
        case 180: // up
            swordY -= swordOffset;
			sprite_index = spr_ClapUpAttack
        break;
        case 0: // down
            swordY += swordOffset;
			sprite_index = spr_ClapDownAttack
        break;
		 case 270: // left
            swordX -= swordOffset;
			sprite_index = spr_ClapHorizontalAttack
        break;
        case 90: // right
            swordX += swordOffset;
			sprite_index = spr_ClapHorizontalAttack
        break;

    }
    var s = instance_create_layer(swordX, swordY, "Instances", obj_swordhitbox);
    // Sword angle 
    switch (direction) {
        case 180: s.image_angle = 0; break;   // Up
        case 0:   s.image_angle = 180; break; // Down
		case 270: s.image_angle = 90; break; // Left
        case 90:  s.image_angle = 270; break;  // Right

    }
}
//Originally by Maribel refined greatly by Sam Park