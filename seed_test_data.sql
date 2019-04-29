TRUNCATE TABLE buildings, maps, rooms, barriers, barrier_types, 
accessibility_constraints, barrier_regions, barrier_type_accessibility_constraints 
RESTART identity;

INSERT INTO buildings (name)
VALUES ('McBryde Hall');

INSERT INTO maps (name, building_id, mapfile,
				  transform_scaling, transform_offset, transform_rotation)
	VALUES ('McBryde_01', 1, 'McBryde_01.jpg', NULL, NULL, NULL);

INSERT INTO rooms (map_id, name_normal, name_formal, x, y)
VALUES	(1, 'McBryde NW Door', NULL, 950, 150),
		(1, 'CS Lounge', 'MCB110', 850, 450),
		(1, 'McBryde Lecture Hall', 'MCB100', 430, 725);

INSERT INTO accessibility_constraints (name)
VALUES ('level terrain only'), ('need stable terrain or handholds'), ('need automatic doors');

INSERT INTO barrier_types (name)
VALUES ('soft muddy terrain'), ('automatic door'), ('stairs with railing'), ('steep stairs');

INSERT INTO barrier_type_accessibility_constraints (barrier_type_id, access_constraint_id)
VALUES (1, 2),
	(2, 3), 
	(3, 1),
	(4, 1), (4, 2);
