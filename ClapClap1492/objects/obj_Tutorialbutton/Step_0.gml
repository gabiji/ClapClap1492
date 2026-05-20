var dist = point_distance(x, y, mouse_x, mouse_y);

if (dist <300) {
	image_xscale = lerp(image_xscale, 1.2, 0.1);
	image_yscale = lerp(image_yscale, 1.2, 0.1);
}
else { 
	image_xscale = lerp(image_xscale, 1, 0.1);
	image_yscale = lerp(image_yscale, 1, 0.1);
}
//I would make this wrap but thats beyond my current knowlegde 