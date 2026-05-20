obj_game.clap_health -= 1;
//This makes the enemy bounce back from the player in the but in the correct direction this time ! 
var knockbackX = x - other.x;
var knockbackY = y - other.y;
var dist = point_distance(x, y, other.x, other.y);
if dist > 0 {
    knockbackX /= dist;
    knockbackY /= dist;
}
// KNOCKBACK! MAKE THIS SMOOTHER LATER ! 
var knockbackStrength = 100; 
x += knockbackX * knockbackStrength;
y += knockbackY * knockbackStrength;

stunTimer = 30; 

//Score stuff 
obj_game.score_points += -50;

//Sam Park :Drool:

