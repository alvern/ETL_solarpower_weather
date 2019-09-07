-- Test query with joins: All data from all tables for June 2019
SELECT m.mpls_date_time AS date_time, m.power_delivered, m.energy_delivered, m.cumulative_energy, -- Mpls Solar Data
    o.power_delivered, o.energy_delivered, o.cumulative_energy, -- Ogilvie Solar Data
    w.weather_description, w.clouds_all, w.temp_f, w.rain_1h, w.snow_1h  -- Weather Data
FROM solar_minneapolis AS m
JOIN weather AS w
    ON m.mpls_date_time = w.weather_date_time
JOIN solar_ogilvie AS o
    ON m.mpls_date_time = o.og_date_time
-- Limit to June 2019
WHERE m.mpls_date_time::text LIKE '2019-06%';