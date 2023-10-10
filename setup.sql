CREATE TABLE passwords (
    Passwords_Key  INT AUTO_INCREMENT NOT NULL
    Website_Name VARCHAR(50), NOT NULL
    Website_URL VARCHAR(2083),
    First_Name VARCHAR(20),
    Last_Name VARCHAR(20),
    User_Name VARCHAR(20), NOT NULL
    Email_Address VARCHAR(320),
    Password_ VARCHAR(64), NOT NULL
    COMMENT TEXT,
    CREATION_TIME DATETIME

    PRIMARY KEY(Passwords_Key)
);