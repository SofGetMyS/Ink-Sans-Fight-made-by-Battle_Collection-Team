part_type_orientation(PartType, image_angle, image_angle, 0, 0, 0);
draw_self();
if (instance_exists(Bout) && PartFire) then part_particles_create_color(Bout.ScythePartSys, x, y, ScythePartType, c_black, 2);