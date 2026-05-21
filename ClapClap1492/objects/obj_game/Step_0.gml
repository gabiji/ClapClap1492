// CUT THE MUSIC WE'RE ON THE MENU 
if room == rm_TitleScreen {
    if isMusicPlaying {
        audio_stop_sound(currentTrack);
        isMusicPlaying = false;
        currentTrack = noone;
    }
    exit;
}
// choses track for room you can go in here and add more ifs if you wanna have diff tracks for diff rooms 
var desiredTrack = noone;
    desiredTrack = mus_MainlevelthemeTemp;


if !isMusicPlaying || currentTrack != desiredTrack {
    if isMusicPlaying {
        audio_stop_sound(currentTrack);
    }
    audio_play_sound(desiredTrack, 1, true);
    currentTrack = desiredTrack;
    isMusicPlaying = true;
}
//Music initialised by SAM park 