// Finding player code! 
var target = obj_enemytarget;
var enemySpeed = 2.5;
var xToPlayer = target.x - x;
var yToPlayer = target.y - y;
//Proof that i know basic math
var distanceToPlayer = point_distance(x, y, target.x, target.y);
var isMoving = false;
// Tiny stun to make it so the player can't just insta kill the player
if stunTimer > 0 {
    stunTimer -= 1;
    image_speed = 0;
    image_index = 0;
    exit; 
}
if distanceToPlayer > 1 {
    xToPlayer /= distanceToPlayer;
    yToPlayer /= distanceToPlayer;
    
    x += xToPlayer * enemySpeed;
    y += yToPlayer * enemySpeed;
    isMoving = true;
}
// sprite selection code
if isMoving {
    if abs(yToPlayer) > abs(xToPlayer) {
        if yToPlayer < 0 {
            sprite_index = spr_Boss1Up;
        } else {
            sprite_index = spr_Boss1Down;
        }
    } else {
        sprite_index = spr_Boss1Horizontal;
        if xToPlayer < 0 {
            image_xscale = -1;
        } else {
            image_xscale = 1;
        }
    }
    image_speed = 1;
} else {
    image_speed = 0;
    image_index = 0; 
}
// collision correction (same as what i did for obj_player)
if place_meeting(x + enemySpeed, y, obj_collider) {
    x -= enemySpeed;
}
if place_meeting(x - enemySpeed, y, obj_collider) {
    x += enemySpeed;
}
if place_meeting(x, y + enemySpeed, obj_collider) {
    y -= enemySpeed;
}
if place_meeting(x, y - enemySpeed, obj_collider) {
    y += enemySpeed;
}
//code by Sam Park yo 