var player = obj_player;
var xToPlayer = player.x - x;
var yToPlayer = player.y - y;
if abs(yToPlayer) > abs(xToPlayer) {    
    if yToPlayer < 0 {
        sprite_index = spr_AchooUp;
    } else {
        sprite_index = spr_AchooDown;
    }
} else {
    sprite_index = spr_AchooHorizontal;
    if xToPlayer < 0 {
        image_xscale = -0.5;   // face left
    } else {
        image_xscale = 0.5;    // face right, look mom only 1 sprite ! 
    }
}
//shooting code
timeUntilNextShot -= 1;
if timeUntilNextShot <= 0 {
    var bullet = instance_create_layer(x, y, "Instances", obj_enemyBullet);
    bullet.direction = point_direction(x, y, player.x, player.y);
	bullet.image_angle = point_direction(x, y, player.x, player.y); //i did this (mari)
	bullet.sprite_index = spr_snotprojectile;
    bullet.speed = 8;
    timeUntilNextShot = random_range(80,100); // reset cooldown
	audio_play_sound(snd_sneeze,0,0,1)
}
//as per usual shooter by Sam Park 