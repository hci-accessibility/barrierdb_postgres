TRUNCATE TABLE buildings, maps, rooms, barriers, barrier_types, 
accessibility_constraints, barrier_regions, barrier_type_accessibility_constraints 
RESTART identity;

INSERT INTO buildings (name)
VALUES ('Outside');

INSERT INTO maps (name, building_id, mapfile,
				  transform_scaling, transform_offset, transform_rotation)
	VALUES ('Outside', 1, 'nope.jpg', NULL, NULL, NULL);

INSERT INTO rooms (map_id, name_normal, name_formal, x, y)
VALUES	(1, 'Randolph Loading Dock', NULL, 15, 0),
		(1, 'Randolph Main Front Door', 'Randolph Main Door', 20, 20),
		(1, 'Randolph Front-Center Side Door', Null, 15, 20),
		(1, 'Assistive Wearable Robotics Lab', 'Rm 117A', 15, 10);

INSERT INTO accessibility_constraints (name)
VALUES ('level terrain only'), ('need stable terrain or handholds'), ('need automatic doors');

INSERT INTO barrier_types (name)
VALUES ('soft muddy terrain'), ('automatic door'), ('stairs with railing'), ('steep stairs');

INSERT INTO barrier_type_accessibility_constraints (barrier_type_id, access_constraint_id)
VALUES (1, 2),
	(2, 3), 
	(3, 1),
	(4, 1), (4, 2)