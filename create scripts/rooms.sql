-- Table: rooms
DROP TABLE IF EXISTS rooms;

CREATE TABLE public.rooms
(
	room_id SERIAL NOT NULL PRIMARY KEY,
	map_id INT NOT NULL,
	name_normal VARCHAR(45) NOT NULL,
	name_formal VARCHAR(45) NULL,
	x INT NOT NULL,
	y INT NOT NULL
)
TABLESPACE pg_default;

ALTER TABLE public.rooms
    OWNER to barrierdb;