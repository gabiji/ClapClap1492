if room != rm_TitleScreen {
    draw_set_font(TheFont);
    draw_set_color(c_white);
    draw_text(20, 20, "Health: " + string(clap_health));
}