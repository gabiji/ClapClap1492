obj_game.clap_health -= damageAmount;
audio_play_sound(snd_ouch, 1, false);
instance_destroy();