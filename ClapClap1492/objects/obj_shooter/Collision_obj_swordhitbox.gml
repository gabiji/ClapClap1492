audio_play_sound(snd_bloodspill,0,0,1)
audio_play_sound(snd_ough,0,0,1)
enemyHealth -= 1;
if enemyHealth <= 0 {
    instance_destroy();
}