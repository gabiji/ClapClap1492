var hue = (current_time / 20) mod 360;

var col = make_color_hsv(hue, 255, 255);

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, col, image_alpha);