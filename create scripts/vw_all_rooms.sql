-- View: public.all_rooms

DROP VIEW IF EXISTS all_rooms;

CREATE OR REPLACE VIEW all_rooms AS
 SELECT b.building_id,
    b.name AS building_name,
    mp.map_id,
    mp.name AS map_name,
    r.room_id,
    r.name_normal,
    r.name_formal,
    r.x,
	r.y
   FROM rooms r
     JOIN maps mp ON r.map_id = mp.map_id
     JOIN buildings b ON mp.building_id = b.building_id;

ALTER TABLE all_rooms
    OWNER TO barrierdb;

