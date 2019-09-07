DROP TABLE IF EXISTS weather;
DROP TABLE IF EXISTS solar_ogilvie;
DROP TABLE IF EXISTS solar_minneapolis;



CREATE TABLE weather (
    weather_date_time TIMESTAMP,
    weather_description VARCHAR,
    clouds_all INT,
    temp_f FLOAT ,
    rain_1h INT,
    snow_1h INT,
    CONSTRAINT pk_weather PRIMARY KEY (
        weather_date_time
     )
);

CREATE TABLE solar_ogilvie (
    og_date_time TIMESTAMP,
    power_delivered INT,
    energy_delivered INT,
    cumulative_energy INT,
    CONSTRAINT pk_solar_ogilvie PRIMARY KEY (
        og_date_time
     )
);

CREATE TABLE solar_minneapolis (
    mpls_date_time TIMESTAMP,
    power_delivered INT,
    energy_delivered INT,
    cumulative_energy INT,
    CONSTRAINT pk_solar_minneapolis PRIMARY KEY (
        mpls_date_time
     )
);

-- ALTER TABLE solar_ogilvie
--     ADD CONSTRAINT fk_solar_ogilvie_date_time 
--         FOREIGN KEY(og_date_time)
--         REFERENCES weather (weather_date_time);

-- ALTER TABLE solar_minneapolis
--     ADD CONSTRAINT fk_solar_minneapolis_date_time
--         FOREIGN KEY(mpls_date_time)
--         REFERENCES weather (weather_date_time);
