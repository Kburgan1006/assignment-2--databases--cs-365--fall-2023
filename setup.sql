--Sets up database and tables
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

-- Populates table with 10 values
Insert INTO passwords VALUES(NULL, 'Google.com', 'www.google.com', 'Bill', 'Bob', 'BillB02', 'billbob@gmail.com', AES_ENCRYPT('yeet123!', @key_str, @init_vector), "Google account made for school", now());
Insert INTO passwords VALUES(NULL, 'Google.com', 'www.google.com', 'Bill', 'Bob', 'BillB02', 'billbob@gmail.com', AES_ENCRYPT('yeet123!', @key_str, @init_vector), "Google account made for school", now());
Insert INTO passwords VALUES(NULL, 'Google.com', 'www.google.com', 'Bill', 'Bob', 'BillB02', 'billbob@gmail.com', AES_ENCRYPT('yeet123!', @key_str, @init_vector), "Google account made for school", now());
Insert INTO passwords VALUES(NULL, 'Google.com', 'www.google.com', 'Bill', 'Bob', 'BillB02', 'billbob@gmail.com', AES_ENCRYPT('yeet123!', @key_str, @init_vector), "Google account made for school", now());
Insert INTO passwords VALUES(NULL, 'Google.com', 'www.google.com', 'Bill', 'Bob', 'BillB02', 'billbob@gmail.com', AES_ENCRYPT('yeet123!', @key_str, @init_vector), "Google account made for school", now());
Insert INTO passwords VALUES(NULL, 'Google.com', 'www.google.com', 'Bill', 'Bob', 'BillB02', 'billbob@gmail.com', AES_ENCRYPT('yeet123!', @key_str, @init_vector), "Google account made for school", now());
Insert INTO passwords VALUES(NULL, 'Google.com', 'www.google.com', 'Bill', 'Bob', 'BillB02', 'billbob@gmail.com', AES_ENCRYPT('yeet123!', @key_str, @init_vector), "Google account made for school", now());
Insert INTO passwords VALUES(NULL, 'Google.com', 'www.google.com', 'Bill', 'Bob', 'BillB02', 'billbob@gmail.com', AES_ENCRYPT('yeet123!', @key_str, @init_vector), "Google account made for school", now());
Insert INTO passwords VALUES(NULL, 'Google.com', 'www.google.com', 'Bill', 'Bob', 'BillB02', 'billbob@gmail.com', AES_ENCRYPT('yeet123!', @key_str, @init_vector), "Google account made for school", now());
Insert INTO passwords VALUES(NULL, 'Google.com', 'www.google.com', 'Bill', 'Bob', 'BillB02', 'billbob@gmail.com', AES_ENCRYPT('yeet123!', @key_str, @init_vector), "Google account made for school", now());