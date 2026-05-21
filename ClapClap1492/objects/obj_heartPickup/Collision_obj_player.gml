audio_play_sound(snd_heal, 1, false);
if obj_game.clap_health < obj_game.clap_health_max {
	audio_play_sound(snd_healed, 1, false);
    obj_game.clap_health = min(obj_game.clap_health + healAmount, obj_game.clap_health_max); //spagetti ;p
    instance_destroy();
	//this is to prevent overhealing and to make hearts a little less useless if you're really good at the game
} else {
    obj_game.score_points += 150;
    instance_destroy();
}
//Sam Park
