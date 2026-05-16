if clap_health <= 0 {
    room_goto(rm_TitleScreen);
}
if room != rm_TitleScreen {
    // If the music is NOT already playing get that tune BUMPIN 
    if !musicPlaying {
        audio_play_sound(mus_MainlevelthemeTemp, 1, true);
        musicPlaying = true;
    }
} else {
    // We ARE on the title screen STOP THE MUSIC 
    if musicPlaying {
        audio_stop_sound(mus_MainlevelthemeTemp);
        musicPlaying = false;
    }
}
//Music initialised by SAM park 