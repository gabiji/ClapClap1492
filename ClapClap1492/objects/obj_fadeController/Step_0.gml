switch (state) {
    case "fade_out":
        fade += fadeSpeed;
        if fade >= 1 {
            fade = 1;
            // change room, then fade in
            room_goto(nextRoom);
            with (obj_player) {
                x = other.spawnX;
                y = other.spawnY;
            }
            state = "fade_in";
        }
    break;
    case "fade_in":
        fade -= fadeSpeed;
        if fade <= 0 {
            fade = 0;
            instance_destroy(); 
        }
    break;
}
//SAmmparkkk