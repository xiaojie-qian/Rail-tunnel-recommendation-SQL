-- Project 1 
SELECT origin, dest, (count(flight)/10) AS avg_times, sum(seats)/10 AS avg_passengers, avg(distance) AS avg_distance,avg(arr_delay) AS avg_arr_delay
FROM flights f
LEFT JOIN planes p
ON f.tailnum = p.tailnum
WHERE distance between 300 and 400 
GROUP BY origin, dest
HAVING avg_times>5000
ORDER BY avg_passengers desc
-- The high speed rail tunnel should be built between San Francisco and Los Angeles.

-- Project 2
-- Copy table hourly_central to new table dig.tbm_sf_la
CREATE TABLE dig.tbm_sf_la LIKE default.hourly_central; 
-- Change the datatype of hourly_north and hourly_south as same as hourly_central 
ALTER TABLE default.hourly_north CHANGE field 7 field 7 double; 
ALTER TABLE default.hourly_north CHANGE field 8 field 8 double; 
ALTER TABLE default.hourly_south CHANGE field 7 field 7 double; 
ALTER TABLE default.hourly_south CHANGE field 8 field 8 double; 
-- Insert data from table hourly_north and hourly_south into table tbm_sf_la
INSERT INTO TABLE dig.tbm_sf_la 
SELECT * FROM default.hourly_north; 
INSERT INTO TABLE dig.tbm_sf_la 
SELECT * FROM default.hourly_south; 
-- Specify the empty value to null value
ALTHER TABLE dig.tbm_sf_la SET tblproperties ('serialization.null.format' = ' ');
-- Fresh the metadata in the table tbm_sf_la
REFREH dig.tbm_sf_la

-- <END>



