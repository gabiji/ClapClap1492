
//I'm not quite sure if this works, i will update this comment once if find out if this works !
if x < 0 || x > room_width || y < 0 || y > room_height {
    instance_destroy();
}


if place_meeting(x, y, obj_blockade) {
    instance_destroy();
}
//code by Sam J Park