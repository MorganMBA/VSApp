ALTER TABLE fruit
ADD quantity INT;

ALTER TABLE vegetable
ADD quantity INT;

ALTER TABLE client
ADD password NVARCHAR(12) NOT NULL ;

ALTER TABLE producer
ADD password NVARCHAR(12) NOT NULL;