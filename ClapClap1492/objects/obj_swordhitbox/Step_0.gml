lifespan -= 1;
if lifespan <= 0 {
	var player = obj_player;
	switch (player.direction) {
        case 180: // up
			player.sprite_index = spr_ClapUp
        break;
        case 0: // down
			player.sprite_index = spr_ClapDown
        break;
		 case 270: // left
			player.sprite_index = spr_ClapHorizontal
        break;
        case 90: // right
			player.sprite_index = spr_ClapHorizontal
        break;
		}
    instance_destroy();
}