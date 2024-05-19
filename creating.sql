CREATE TABLE lightning_strikes
(
    id                 SERIAL PRIMARY KEY,
    strike_time        TIME    NOT NULL,
    min_power_affected INTEGER NOT NULL CHECK ( min_power_affected > 0 )
);

CREATE TABLE web
(
    id        SERIAL PRIMARY KEY,
    power     INTEGER NOT NULL CHECK ( power >= 0 ),
    strike_id INTEGER,
    FOREIGN KEY (strike_id) REFERENCES lightning_strikes (id)
);

CREATE TABLE router
(
    id     SERIAL PRIMARY KEY,
    web_id INTEGER NOT NULL,
    FOREIGN KEY (web_id) REFERENCES web (id)
);

CREATE TABLE ram_info
(
    name     VARCHAR(50) UNIQUE,
    capacity INTEGER CHECK ( capacity > 0 ),
    speed    INTEGER CHECK ( speed > 0 )
);

CREATE TABLE computer
(
    id        SERIAL PRIMARY KEY,
    CPU       VARCHAR(50),
    OS        VARCHAR(50),
    RAM       VARCHAR(50) REFERENCES ram_info (name),
    monitor   VARCHAR(50),
    memory    VARCHAR(50),
    router_id INTEGER NOT NULL,
    FOREIGN KEY (router_id) REFERENCES router (id)
);

CREATE TABLE human
(
    id          SERIAL PRIMARY KEY,
    name        VARCHAR(50) NOT NULL,
    computer_id INTEGER,
    FOREIGN KEY (computer_id) REFERENCES computer (id)
);