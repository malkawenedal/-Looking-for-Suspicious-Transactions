-- DROP TABLE IF EXISTS transaction CASCADE;
-- DROP TABLE IF EXISTS merchant CASCADE;
-- DROP TABLE IF EXISTS cardholder CASCADE;
-- DROP TABLE IF EXISTS creditcard CASCADE;
-- DROP TABLE IF EXISTS merchantcategory CASCADE;

CREATE TABLE cardholder (
    id int   NOT NULL,
    name varchar(225)   NOT NULL,
     PRIMARY KEY (id)    
);

CREATE TABLE creditcard (
    card varchar(20)   NOT NULL,
      cardholder_id int   NOT NULL,
    FOREIGN KEY(cardholder_id) REFERENCES cardholder(id),
	primary key (card)
);

CREATE TABLE merchantcategory (
    id int   NOT NULL,
    name varchar(225)   NOT NULL,
    primary key (id)	
);

CREATE TABLE merchant (
    id int   NOT NULL,
    name varchar(225)   NOT NULL,
    id_merchant_category int   NOT NULL,
     FOREIGN KEY(id_merchant_category) REFERENCES merchantcategory(id),
	 primary key (id)
);


CREATE TABLE transaction (
    id int   NOT NULL,
    date timestamp   NOT NULL,
    amount float   NOT NULL,
    card varchar(20)   NOT NULL,
    id_merchant int   NOT NULL,
    FOREIGN KEY(card)REFERENCES creditcard (card),
	FOREIGN KEY (id_merchant)REFERENCES merchant (id ),
	PRIMARY KEY (id)
);

