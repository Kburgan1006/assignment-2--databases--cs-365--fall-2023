--Sets up database and table
DROP DATABASE IF EXISTS passwords;

CREATE DATABASE passwords;

USE passwords;

CREATE TABLE passwords (
    Password_id  INT(5) NOT NULL AUTO_INCREMENT,
    Website_Name VARCHAR(50) NOT NULL,
    Website_URL VARCHAR(2083),
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    User_Name VARCHAR(20) NOT NULL,
    Email_Address VARCHAR(320),
    Password_ VARBINARY(512) NOT NULL,
    Comment TEXT,
    Creation_Time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(Password_id)
);


-- Sets up encryption
SET block_encryption_mode = 'aes-256-cbc';
SET @key_str = UNHEX(SHA2('hawks ohio squirrel', 512));
SET @init_vector = RANDOM_BYTES(16);

-- Populates tables with 10 values
INSERT INTO passwords VALUES(NULL, 'Google', 'https://www.google.com/', 'Jennifer', 'Smith', 'JSmith', 'JSmith@gmail.com', AES_ENCRYPT('Ltr5j8ZjeMHbHonJ8FY1mBzh9GL8iVAt', @key_str, @init_vector), "Google account made for school", now());
INSERT INTO passwords VALUES(NULL, 'Netflix', 'http://www.netflix.com/', 'Julian', 'Porter', 'JPorter', 'JPorter@gmail.com', AES_ENCRYPT('5nLvVrxWsBvE4eeqLP8DJE28n6RD6Cmh', @key_str, @init_vector), "Netflix for family", now());
INSERT INTO passwords VALUES(NULL, 'Amazon', 'https://www.amazon.com/', 'Athena', 'Barlow', 'ABarlow', 'ABarlow@gmail.com', AES_ENCRYPT('2XAhpno7PlrSbRM9QlxQTSmTlIfBJAKh', @key_str, @init_vector), "Made for shopping", now());
INSERT INTO passwords VALUES(NULL, 'Hulu', 'http://www.hulu.com', 'Carl', 'Hopkins', 'CHopkins', 'CHopkins@gmail.com', AES_ENCRYPT('HqeFGE3luc0n2vAd4WhPfFvsM8ZanE93', @key_str, @init_vector), "Live TV", now());
INSERT INTO passwords VALUES(NULL, 'Disney+', 'https://www.disneyplus.com/', 'Devon', 'Weaver', 'DWeaver', 'DWeaver@gmail.com', AES_ENCRYPT('CGy6jrEwsnPEFgRDYmT6TGHaFJHgn0A7', @key_str, @init_vector), "Disney for kids and Marvel", now());
INSERT INTO passwords VALUES(NULL, 'Costco', 'http://www.costco.com/', 'Ashley', 'Crawford', 'ACrawford', 'ACrawford@gmail.com', AES_ENCRYPT('NN1JGOcgOFsOjgOIQXcB1cWqkqsAaBLK', @key_str, @init_vector), "For buying in bulk online", now());
INSERT INTO passwords VALUES(NULL, 'Adobe','https://www.adobe.com/', 'Hazel', 'Arnold', 'HArnold', 'HArnold@gmail.com', AES_ENCRYPT('MnbAszMc5j6gDIsSceeCvvKEWffBMOTr', @key_str, @init_vector), "For art projects", now());
INSERT INTO passwords VALUES(NULL, 'Apple', 'http://www.apple.com/', 'Daniel', 'Jones', 'DJones', 'DJones@gmail.com', AES_ENCRYPT('6oGcpNvDm80WunUBEocZq3KWx4RHqFbe', @key_str, @init_vector), "Apple account for devices and shopping", now());
INSERT INTO passwords VALUES(NULL, 'Target','https://www.target.com/', 'Noel', 'Quincy', 'NQuincy', 'NQuincy@gmail.com', AES_ENCRYPT('Jdnqpjbhmo3bgWPQnQnneTdwlGOMbQkD', @key_str, @init_vector), "Target for shopping", now());
INSERT INTO passwords VALUES(NULL, 'Blackboard', 'http://blackboard.hartford.edu/', 'William', 'Frank', 'WFrank', 'WFrank@gmail.com', AES_ENCRYPT('dJClx5IJPXA9XBnNLPtTY4ME7h74X68F', @key_str, @init_vector), "Blackboard account for school", now());