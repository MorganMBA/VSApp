USE VilleSolidaire;

CREATE TABLE IF NOT EXISTS client
(
    id_client INT  NOT NULL,
    firstname VARCHAR(100),
    lastname VARCHAR(100),
    email VARCHAR(255),
    phone VARCHAR(10),
    address VARCHAR(255),
    city VARCHAR(255),
    zip VARCHAR(5),
    CONSTRAINT PK_client PRIMARY KEY(id_client)
);


CREATE TABLE IF NOT EXISTS producer
(
    id_producer INT NOT NULL,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(10),
    address VARCHAR(255),
    city VARCHAR(255),
    zip VARCHAR(5),
    CONSTRAINT PK_producer PRIMARY KEY(id_producer)
);

CREATE TABLE IF NOT EXISTS crate
(
    id_crate INT NOT NULL,
    category ENUM ('fruit','vegetable'),
    quantity_fruit INT,
    quantity_vegetable INT,
    price INT,
    CONSTRAINT PK_crate PRIMARY KEY(id_crate)
);


CREATE TABLE IF NOT EXISTS fruit
(
    id_fruit INT NOT NULL,
    name VARCHAR(255),
    CONSTRAINT PK_fruit PRIMARY KEY(id_fruit)
);

CREATE TABLE IF NOT EXISTS vegetable
(
    id_vegetable INT NOT NULL,
    name VARCHAR(255),
    CONSTRAINT PK_vegetable PRIMARY KEY(id_vegetable)
);

CREATE TABLE IF NOT EXISTS crateOrder
(
    id_crateOrder INT NOT NULL,
    datecrateOrder DATE,
    CONSTRAINT PK_crateOrder PRIMARY KEY(id_crateOrder)
);

ALTER TABLE crateOrder
ADD id_client INT;

ALTER TABLE crateOrder
ADD CONSTRAINT FK_crateOrder_client
FOREIGN KEY (id_client) REFERENCES client(id_client);

ALTER TABLE crateOrder
ADD id_producer INT;

ALTER TABLE crateOrder
ADD CONSTRAINT FK_crateOrder_producer
FOREIGN KEY (id_producer) REFERENCES producer(id_producer);

ALTER TABLE crate
ADD id_fruit INT;

ALTER TABLE crate
ADD CONSTRAINT FK_crate_fruit
FOREIGN KEY (id_fruit) REFERENCES fruit(id_fruit);

ALTER TABLE crate
ADD id_vegetable INT;

ALTER TABLE crate
ADD CONSTRAINT FK_crate_vegetable
FOREIGN KEY (id_vegetable) REFERENCES vegetable(id_vegetable);
