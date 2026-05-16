other.enemy_health -= 1;
audio_play_sound(snd_bloodspill,0,0,1)
//Knockback stuff
var knockX = other.x - x;
var knockY = other.y - y;
var dist = point_distance(other.x, other.y, x, y);
if dist > 0 {
    knockX /= dist;
    knockY /= dist;
}
var knockStrength = 100; // Its very strong just to make sure the sword dosn't double shot them in one frame
other.x += knockX * knockStrength;
other.y += knockY * knockStrength;
other.stunTimer = 20;
if other.enemy_health <= 0 {
    instance_destroy(other);
}