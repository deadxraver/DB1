INSERT INTO lightning_strikes (strike_time, min_power_affected)
VALUES ('10:00:00', 450),
       ('10:45:00', 370);

INSERT INTO web (power, strike_id)
VALUES (350, null),
       (400, 2);

INSERT INTO router (web_id)
VALUES (1),
       (1),
       (2);

INSERT INTO ram_info (name, capacity, speed)
VALUES ('samsung', 8192, 3200),
       ('amd', 16384, 3200),
       ('hyperx', 4096, 3200);

INSERT INTO computer (cpu, os, ram, monitor, memory, router_id)
VALUES ('Intel core i10', 'windows', 'samsung', 'samsung', 'HDD 0', 1),
       ('AMD', 'TempleOS', 'amd', 'asus', 'SSD 3000', 1),
       ('Mediatek', 'Linux', 'hyperx', 'xiaomi', '10', 2),
       (null, NULL, Null, nULL, nUlL, 3),
       (null, null, null, null, null, 3);

INSERT INTO human (computer_id, name)
VALUES (1, 'Арнольд'),
       (2, 'Недри');
