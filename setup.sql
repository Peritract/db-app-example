DROP DATABASE cakes;
CREATE DATABASE cakes;
\c cakes

CREATE TABLE IF NOT EXISTS cake (
    cake_id INT GENERATED ALWAYS AS IDENTITY,
    flavour TEXT NOT NULL,
    price INT NOT NULL,
    PRIMARY KEY (cake_id)
);

INSERT INTO
    cake (flavour, price)
VALUES
    ('chocolate', 6),
    ('red velvet', 0),
    ('victoria sponge', 3)
;
